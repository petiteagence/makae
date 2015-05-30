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

	// setup e-mail data with unicode symbols
	var mailOptions = {
	    from: req.body.name + ' <' + req.body.email + '>', // sender address
	    to: process.env.MAILBOXLOGIN, // list of receivers
	    subject: req.body.subject, // Subject line
	    text: req.body.message, // plaintext body
	    html: '<p>'+req.body.message+'</p>' // html body
	};

	// send mail with defined transport object
	transporter.sendMail(mailOptions, function(error, info){
	    if(error) return console.log('[Nodemailer.sendMail()] Erreur', error);
	    console.log('[Nodemailer.sendMail()] Message sent: ', info.response);
	});

});

app.listen(port);