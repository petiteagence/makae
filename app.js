var express = require('express');
var bodyParser = require('body-parser');
var expressMinify = require('express-minify');
var compression = require('compression');
var nodemailer = require('nodemailer');
var port = process.env.PORT || 3000;
var color = require('colors');

var app = express();
app.use(bodyParser.json());
app.use(compression());
app.use(expressMinify({cache: __dirname + '/cache'}));
app.use(bodyParser.urlencoded({extended: true}));


app.use(express.static(__dirname + '/dist'));

app.post('/contact', function (req, res) {	

	// create reusable transporter object using SMTP transport
	var transporter = nodemailer.createTransport({
		service: 'Gmail',
		auth: { user: process.env.MAILBOXLOGIN, pass: process.env.MAILBOXPASSWORD }
	});

	var message = [];
	message.push(							'<div style="border:1px solid #FAE6F1;background:#FDF7FA;padding:10px">');
	message.push(								'<div style="padding:10px">');
	if(req.body.subject) message.push(				'<strong style="border-bottom:1px solid #DB57A2;display:block;padding-bottom:5px;margin-bottom:5px;">'+req.body.subject+'</strong>');
	message.push(									'<em style="display:block;">De la part de : '+req.body.name+' ('+req.body.email+')</em>');
	if(req.body.company) message.push(				'<em style="display:block;">Société : '+req.body.company+'</em>');
	message.push(								'</div>');
	message.push(								'<div style="margin-top:10px;border:1px solid #FAE6F1;background:#fff;padding:10px">');
	message.push(									req.body.message.replace(/\n/g, '<br>'));
	message.push(								'</div>');
	message.push(							'</div>');

	// setup e-mail data with unicode symbols
	var mailOptions = {
		from: process.env.MAILBOXLOGIN,
		replyTo: req.body.email,
		to: (process.env.MAILBOXDEST || process.env.MAILBOXLOGIN),
		subject: req.body.name+' - '+(req.body.subject || 'Formulaire de contact makae.fr'),
		html: message.join('')
	};

	// send mail with defined transport object
	transporter.sendMail(mailOptions, function(error, info){
		if(error){
			res.setHeader('Content-Type', 'application/json');
			res.send(JSON.stringify({ status: 'error' }));
			return console.log('[Nodemailer.sendMail()] error: ', error);
		}
		res.setHeader('Content-Type', 'application/json');
		res.send(JSON.stringify({ status: 'success' }));
		console.log('[Nodemailer.sendMail()] success: ', info.response);
	});

});

console.log('App running on http://localhost:3000/'.green);
app.listen(port);