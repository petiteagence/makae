var express = require('express');
var bodyParser = require('body-parser')
var nodemailer = require('nodemailer');
var port = process.env.PORT || 3000;

var app = express();
app.use( bodyParser.json() );
app.use(bodyParser.urlencoded({extended: true}));


app.use(express.static(__dirname + '/dist'));

app.post('/contact', function (req, res) {	

	// create reusable transporter object using SMTP transport
	var transporter = nodemailer.createTransport({
	    service: 'Gmail',
	    auth: { user: process.env.MAILBOXLOGIN, pass: process.env.MAILBOXPASSWORD }
	});

	var message = [];
	message.push('<p>');
	if(req.body.subject)
		message.push('	<strong>'+req.body.subject+'</strong>');
	message.push('	<br>');
	message.push('	<em>De la part de : '+req.body.name+' ('+req.body.email+')</em>');
	message.push('	<br><br>');
	message.push('	<blockquote>'+req.body.message+'</blockquote>');
	message.push('</p>');

	// setup e-mail data with unicode symbols
	var mailOptions = {
	    from: process.env.MAILBOXLOGIN,
	    replyTo: req.body.email,
	    to: process.env.MAILBOXLOGIN,
	    subject: req.body.name+' - '+(req.body.subject || 'Formulaire de contact makae.fr'),
	    html: message.join('')
	};

	// send mail with defined transport object
	transporter.sendMail(mailOptions, function(error, info){
	    if(error) return console.log('[Nodemailer.sendMail()] Erreur', error);
	    console.log('[Nodemailer.sendMail()] Message sent: ', info.response);
	});

});

app.listen(port);