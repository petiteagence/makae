var express = require('express');
var bodyParser = require('body-parser')
var nodemailer = require('nodemailer');
var port = process.env.PORT || 3000;

var app = express();
app.use( bodyParser.json() );
app.use(bodyParser.urlencoded({extended: true}));


app.use(express.static(__dirname + '/dist'));

app.post('/contact', function (req, res) {	
	console.log('------------------------ CONTACT ------------------------');
	
	// Nodemailer init
	var smtpTrans = nodemailer.createTransport('SMTP', {
		service: 'Gmail',
		auth: { user: process.env.MAILBOXLOGIN, pass: process.env.MAILBOXPASSWORD }
	});

	// Mail setup
	var mailOpts = {
		from: req.body.name + ' <' + req.body.email + '>', //grab form data from the request body object
		to: process.env.MAILBOXLOGIN,
		subject: 'Website contact form',
		text: req.body.message
	};

	console.log(mailOpts);
	console.log('---------------------------------------------------------');
	// Sending
	// smtpTrans.sendMail(mailOpts, function (error, response) {
	// 	if(error) console.log('Erreur sending mail', error);
	// 	else console.log('Mail sent');
	// 	// if(error) 	res.render('contact', {title: 'Raging Flame Laboratory - Contact', msg: 'Error occured, message not sent.', err: true, page: 'contact' });
	// 	// else 		res.render('contact', { title: 'Raging Flame Laboratory - Contact', msg: 'Message sent! Thank you.', err: false, page: 'contact' });
	// });



	// create reusable transporter object using SMTP transport
	var transporter = nodemailer.createTransport({
	    service: 'Gmail',
	    auth: { user: process.env.MAILBOXLOGIN, pass: process.env.MAILBOXPASSWORD }
	});

	// setup e-mail data with unicode symbols
	var mailOptions = {
	    from: req.body.name + ' <' + req.body.email + '>', // sender address
	    to: 'bar@blurdybloop.com, baz@blurdybloop.com', // list of receivers
	    subject: 'Hello ✔', // Subject line
	    text: req.body.message, // plaintext body
	    html: '<p>'+req.body.message+'</p>' // html body
	};

	// send mail with defined transport object
	transporter.sendMail(mailOptions, function(error, info){
	    if(error) return console.log(error);
	    console.log('Message sent: ' + info.response);
	});




});

app.listen(port);