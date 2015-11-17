# HEADER
# ----------------------
# 	C'est là que se trouve l'ACCROCHE ainsi que les données SEO du site (Titre, description etc..)

# SECTIONS
# ----------------------
# 	Les sections représentent les zones principales de contenu
#	Elle se définissent par un ID et un THEME
#	Elles sont composées de BLOCS

# THEMES de SECTION
# ----------------------
# blanc, orange ou prune
# Il est possible d'en ajouter si besoin

# FOOTER
# ----------------------
# 	Le FOOTER est compatible avec les BLOCS

# BLOCS
# ----------------------
# 	Les BLOCS sont des zones de contenu au sein des SECTIONS
#	Ils sont tous définis par un TYPE
#	Leur contenu varie selon le TYPE :
#		Les BLOCS de TYPE "box3D"
#			Contiennent des BOXES
#			Les BOXES sont définis par
#				texte (Texte apparaissant au mouse-over)
#				imageUrl (URL de l'image à afficher)
#				imageAlt (SEO)
#				themeBox (Style associé à la boite)
#				lien (Pour relier une box à un ID de SECTION)
#		Les BLOCS de TYPE "titre"
#			Contiennent le texte et un sous-titre (facultatif)
#		Les BLOCS de TYPE "image"
#			Servent à afficher une IMAGE seule au centre
#			L'IMAGE est définie par
#				imageUrl (URL de l'image à afficher)
#				imageAlt (SEO)
#				imageLien (facultatif, pour avoir un lien sortant vers un autre site)
#				imageLegende (facultatif, pour afficher une légende à l'image, bonne pratique)
#		Les BLOCS de TYPE "textes"
#			Contiennent des ITEMS (Différentes façons d'afficher des contenus textuels)
#			Les ITEMS tenteront de se répartir sur une seule ligne, jusqu'a ce qu'il n'y ait plus assez de place (cas des mobiles), et passeront automatiquement à la ligne
#			Les ITEMS peuvent etre constitués de texte, d'une liste, d'une image (Combinaisons possibles : texte seul, liste seule, texte + image, liste + image)
#			Les ITEMS sont définis par :
#				titre
#				texte
#				liste (liste de phrases avec des puces)
#				imageUrl (URL de l'image à afficher)
#				imageAlt (SEO)
#				imageLien (facultatif, pour avoir un lien sortant vers un autre site)
#				imagePosition (dessus, dessous, droite, gauche, par rapport au texte ou à la liste)
#				lien (Pour que le bloc entier devienne un lien externe, attention à ne pas utiliser un MODIFICATEURS DE TEXTE (de type "lien" ou "ancre"), ou d'"imageLien" dans ce cas)
#				size (La largeur d'un bloc item, le calcul est fait vis a vis des autres dans le même bloc)

# MODIFICATEURS DE TEXTE
# ----------------------
# 	Les MODIFICATEURS DE TEXTE permettent d'apporter quelques variations à un texte de contenu :
# 		petit : [petit|texte à afficher en plus petit]
# 		gras : [gras|texte à afficher en gras]
# 		italique : [italique|texte à afficher en italique]
# 		saut de ligne : [saut]
# 		lien vers un autre site : [lien|texte qui sera cliquable|lien vers l'exterieur (ne pas oublier "http://")]
# 		lien "ancre" vers un ID de SECTION : [ancre|texte qui sera cliquable|ID de SECTION]
# 	La majorité des contenus sont compatibles (ex : accroche, titre, soustitre, imageLegende, listes, texte)
#	Il est possible d'en ajouter si besoin






# HEADER
# ----------------------
header:
	titre: "Makae"
	description: "Makae"
	accroche: "Pour que les petites entreprises [saut] vivent aussi leurs grands moments"
	image: "bg_paris.jpg"


# SECTIONS
# ----------------------
sections: [
	{
		id: "services"
		theme: "blanc"
		blocs: [
			{
				type: "box3D"
				boxes: [
					{
						texte: "[gras|MakaEvent] [saut][saut] Une direction événementielle externalisée [saut] La solution de coordination d’événements pour les petites et moyennes entreprises",
						imageUrl: "box_event.png"
						imageAlt: "event_box"
						themeBox: "prune"
						lien: "makaevent"
					}
					{
						texte: "[gras|MakaePop] [saut][saut] La solution d'aménagement de boutique éphémère sur mesure pour e-commerçants et créateurs en centre ville",
						imageUrl: "box_pop.png"
						imageAlt: "Store"
						themeBox: "orange"
						lien: "makaepop"
					}
				]
			}
		]
	}
	{
		id: "makaevent"
		nav: "Makaevent"
		image: "etincelles.jpg"
		theme: "prune"
		blocs: [
			{
				type: "titre"
				titre: "Makae, Direction événementielle externalisée"
				soustitre: "Nous organisons vos événements éphémères pour qu'ils durent longtemps",
			}
			{
				type: "items"
				items: [
					"makaevents_image1"
					"makaevents1"
				]
			}
			{
				type: "items"
				items: [
					"makaevents3"
					"makaevents_image3"
				]
			}
			{
				type: "items"
				items: [
					"makaevents_image2"
					"makaevents2"
				]
			}
		]
	}
	{
		id: "makaepop"
		nav: "Makaepop"
		image: "store.jpg"
		theme: "orange"
		blocs: [
			{
				type: "titre"
				titre: "Le concept Makae pop ?"
				soustitre: "La solution logistique d'aménagement de boutique éphémère qui vous facilite la vie"
			}
			{
				type: "items"
				items: [
					"makaepop_image1"
					"makaepop1"
				]
			}
			{
				type: "items"
				items: [
					"makaepop2"
					"makaepop_image2"
				]
			}
			{
				type: "items"
				items: [
					"makaepop_image3"
					"makaepop3"
				]
			}
			
		]
	}
	{
		id: "temoignages"
		nav: "Témoignages"
		image: "livredor.jpg"
		theme: "gris"
		blocs: [
			{
				type: "titre"
				titre: "Témoignages"
			}
			{
				type: "items"
				items: [
					"temoignages_sid"
					"temoignages_gauchet"
				]
			}
		]
	}
	{		
		id: "news"
		nav: "News"
		image: "news.jpg"
		theme: "blanc"
		blocs: [
			{
				type: "titre"
				titre: "La vie de Makae"
			}
			{
				type: "items"
				items: [
					"instafeed"
					"twitterfeed"
				]
			}
			# {
			# 	type: "blocsHorizontaux"
			# 	blocsHorizontaux: [
			# 		{
			# 			type: "blocs"
			# 			blocs: [
			# 				{
			# 					type: "titre"
			# 					titre: "Galerie"
			# 				}
			# 				{
			# 					type: "items"
			# 					items: [
			# 						"lancement_image1"
			# 						"lancement_image2"
			# 						"lancement_image3"
			# 						"lancement_image4"
			# 					]
			# 				}
			# 			]
			# 		}
			# 		{
			# 			type: "items"
			# 			items: [
			# 				"twitterfeed"
			# 			]
			# 		}
			# 	]
			# }
		]
	}
]




# CONTACT AREA
# ----------------------
contact:
	blocs: [
		{
			type: "titre"
			titre: "Qui se cache derrière Makae ?"
			soustitre: "[italique | Agnès Lachenal]" 
		}
		{
			type: "items"
			items: ["bio"]
		}
	]

# FOOTER
# ----------------------
footer:
	blocs: [
		{
			type: "titre"
			soustitre: "Partenaires"
		}
		{
			type: "items"
			items: [
				# "footer_papilles"
				"footer_maconseil"
				# "footer_abricot"
			]
		}
		{
			type: "items"
			items: [
				"footer_bas"
			]
		}
	]







# ITEMS
# ----------------------
#	makaevents1:
#		size: "1"
#		titre: ""
#		titreIcon: ""
#		texte: ""
#		texteAlign: "" => gauche, droite, centre, justif (défaut : gauche)
#		liste: [
#			"",
#			"",
#		]
#		image: ""
#		imageAlt: ""
#		imageLien: "" => Une URL où aller quand on clique sur l'image
#		imagePosition: "" => seule, dessus, gauche, droite, dessous (défaut : dessus)
#		html: Code tiers à intégrer (Youtube / twitter ...) - Attention aux guillemets

items:
	makaevents1:
		size: "8"
		titre: "Une offre adaptée à votre besoin, pour faire de l'événementiel utile"
		texte: "Makae organise vos séminaires, apéritifs, petits déjeuners, soirées d'entreprises, [...] pour motiver, remercier, challenger, fédérer, réunir, communiquer, auprès de vos salariés et de vos clients. [saut] Pour toutes les entreprises qui veulent une relation différente et efficace avec l'événementiel."
		liste: [
			"conception de l’événement",
			"réalisation / coordination des partenaires",
			"gestion de projet sur place le jour J",
			"suivi qualité par la sélection d'éléments mesurables de la réussite de l'événement."
		]

	makaevents2:
		size: "8"
		titre: "L'offre Forma'zen : une solution adaptée aux formateurs indépendants"
		texte: "C'est la réponse pour les formateurs indépendants qui veulent se concentrer sur leurs formations : [saut] L'offre Forma'zen de Makae et son partenaire MA Conseil : des solutions de logistique et de gestion administrative externalisée adaptées à votre contexte."
		liste: [
			"[gras|la logistique parfaite] : recherche du lieu, aménagement mobilier et technique, pauses et repas, Paris & Province",
			"[gras|la merveille administrative] : gestion de l’administratif de vos formations, suivi et relance des inscriptions, relation avec les OPCA, préparation des questionnaires de satisfaction...",
			"[gras|les formations sont une merveille] : avec Makae, logistique complète / Avec M.A. Conseil, gestion de l’administratif ",
			"[gras|La souplesse de facturation] : la réponse en forfaits en nombre de jours ou nombre de formations, adaptés selons vos besoins.",
		]

	makaevents3:
		size: "8"
		titre: "La réussite de l'événement commence par le brief"
		texte: "Ensemble, nous étudions vos besoins, votre situation, vos attentes, votre contexte qui feront que votre événement sera différent de tous les autres. [saut] A qui est destiné l'événement ? Pourquoi investir ? Quel ROI attendez-vous ? Quel est l'effet attendu ? Quel est votre univers, vos préférences ?"

	makaevents_image1:
		image: "offre-adaptee.svg"
		imagePosition: "seule"
	makaevents_image2:
		image: "formation.svg"
		imagePosition: "seule"
	makaevents_image3:
		image: "brief.svg"
		imagePosition: "seule"
	makaepop_image1:
		image: "store.svg"
		imagePosition: "seule"
	makaepop_image2:
		image: "irl.svg"
		imagePosition: "seule"
	makaepop_image3:
		image: "detail.svg"
		imagePosition: "seule"

	makaepop1:
		size: "8"
		titre: "Le digital-to-store : la vente en boutique éphémère"
		texte: "Makae Pop vous accompagne pour vous permettre de vous lancer en boutique physique sans les contraintes d'une location longue durée. Nous chercherons la solution qui s'adapte à vos produits : un lieu, une durée, une mise en valeur des produits et de la vitrine. [saut] Le pop up store est la solution simple et personnalisable pour une communication et une vente ciblée (localisation, promotion, ...) sur un temps donné. [saut] Makae Pop, votre partenaire pour accroitre vos visibilité et vos ventes."

	makaepop2:
		size: "8"
		titre: "Pour qui ?"
		texte: "Pour les sites d’e-commerce qui souhaitent tenter l’aventure IRL. [saut] Pour des créateurs qui veulent rencontrer leurs clients. [saut] pour les commercants 100% en ligne qui veulent se faire connaître du grand public [saut][saut] Un produit à tester ? [saut] Une occasion saisonnière ? [saut] Une opération pour lancer une promotion ? [saut] Animer une opération click & collect ponctuelle et locale ?"

	makaepop3:
		size: "8"
		titre: "Dans le détail"
		texte: "1 - Nous échangeons avec vous pour définir le type d’opération souhaitée, [saut][saut] 2 - Nous cherchons le lieu, le concept et l'aménagement possibles avec des équipes d’architectes, & de décorateurs ; Makae Pop propose tous les services jusqu'à l'animation du magasin par des équipes de vente, & la fourniture d'éléments de caisse[saut][saut] 3 - Enfin, nous aidons à la conception de solutions pour animer et faire connaître le lancement."

	lancement_image1:
		image: "1.jpg"
		imageAlt: "nos mascottes"
		texte: "nos mascottes"
		texteAlign: "centre"
		
	lancement_image2:
		image: "2.jpg"
		imageAlt: "Equilibre au dessus du buffet !"
		texte: "Equilibre au dessus du buffet !"
		texteAlign: "centre"
		
	lancement_image3:
		image: "3.jpg"
		imageAlt: "Gourmandises chez Tours de Cuisine"
		texte: "Gourmandises chez Tours de Cuisine"
		texteAlign: "centre"
		
	lancement_image4:
		image: "4.jpg"
		imageAlt: "Atelier thai, cuisine japonaise et buffet français, la gastronomie à l'honneur"
		texte: "Atelier thai, cuisine japonaise et buffet français, la gastronomie à l'honneur"
		texteAlign: "centre"

	bio:
		texte : "L’événementiel est dans mes pensées depuis longtemps : 12 années riches d'enseignements auprès de clients innovants et exigeants dans l’IT m’ont donné envie de relever un nouveau défi. [saut] J’ai suivi une formation de gestion de projet événementiel pour créer ensuite Makae. [saut] Comme je bouillonne d’idées et d’envie de faire vivre de belles expériences à mes clients, je lance 2 offres événementielles. Une offre pour les entreprises et leurs salariés : MakaEvent cherche les bonnes réponses pour faire vivre le meilleur de l’événementiel à ses clients. La qualité du traiteur, un micro qui fonctionne, les petites attentions pour les salariés, une organisation sans faille pour plus de tranquillité et toujours un événementiel qui donne du sens… ; tout ce qui fera rêver les salariés. [saut] Une autre offre pour les entreprises et le grand public : MakaePop se distingue par sa volonté de faire vivre des événements plus centrés sur l’humain dans le monde du « retail ». Tout e-commerçant peut avoir besoin de se lancer In-Real-Life, sans pour autant prendre un bail à temps plein. L’expérience du magasin éphémère est alors LA solution ! L’idée de MakaePop est donc venue tout naturellement. Et comme chez MakaEvent, la qualité des partenaires est sa force."
		image: "agnes.jpg"
		imageAlt: "Agnès Lachenal"
		imagePosition: "gauche"
	instafeed:
		html: '<link href="libs/instalink/instalink-1.7.0.min.css" rel="stylesheet"><script src="libs/instalink/instalink-1.7.0.min.js"></script><div data-il  data-il-client-id="af88625e3db54a84b4722f81c67d3469" data-il-username="makaebyagnes" data-il-hashtag="" data-il-lang="fr" data-il-show-heading="true" data-il-scroll="true" data-il-width="100%" data-il-height="600px" data-il-image-size="medium" data-il-bg-color="#285989" data-il-content-bg-color="#F8F8F8" data-il-font-color="#FFFFFF" data-il-ban=""></div>'
	twitterfeed:
		html: '<a class="twitter-timeline" href="https://twitter.com/makae_events" data-widget-id="635260909108068352">Tweets by @makae_events</a><script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?"http":"https";if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>'
	temoignages_sid:
		size: "2"
		texte: "[italique|Je dirige aujourd’hui une boite de 6 personnes, [...] nous sommes des ingénieurs, mais nous avions besoin de fêter nos clients historiques.][saut][italique|Comment gérer cela en intégrant 2 collaborateurs cet été et 7 nouveaux comptes clients depuis Avril ? Comment trouver le temps d’organiser tout ça en poursuivant le temps ? Impossible.][saut][italique|Sauf si vous connaissez Agnès Lachenal de Makae. Les 6 mois prévus de galères se sont transformés en quelque chose de totalement indolore, du retro-planning hyper détaillé jusqu’au jour&nbsp;J pour nous rassurer aux petits mails de rappel. Tous les sujets étaient gérés. Notre seul « travail » a consisté à donner notre avis sur les propositions qu’Agnès nous formulait.][saut][italique|Agnès bravo, si des personnes doutent encore que tu es la femme de la situation, envoie-les moi.][saut][saut][gras|Cyril CUNIN – S I D, le 15/10/2015]"
	temoignages_gauchet:
		texte: "[italique|Je tiens à vous féliciter pour votre travail de qualité. Vous m’avez fait voyager dans le monde Marvel. Tout était très bien organisé.][saut][italique|De plus, vous avez d’énormes qualités humaines (gentillesse, bonne humeur, conviviale ...). Ce fut un réel plaisir de vous rencontrer et de partager un moment de vie ensemble. Vous êtes au top !][saut][saut][gras|Jean-Christophe GAUCHET le 15/10/2015]"
	footer_papilles:
		titre: "Papilles&Papillons"
		texte: "[lien|www.papillesetpapillons.com|http://www.papillesetpapillons.com][saut] Ambiancistes et décoratrices événementielles."

	footer_maconseil:
		# titre: "MA Conseil"
		texte: "[lien|http://maconseil.net/][saut] Assistance administrative externalisée."
		texteAlign: "centre"

	footer_abricot:
		titre: "Abricot Formation"
		texte: "[lien|www.abricot-formation.com|http://www.abricot-formation.com][saut] Centre de formation événementielle, & spectacles."

	footer_bas:
		texte: "www.makae.fr - 2015 - [lien|Mentions légales|#popup_mentionlegales]"
		texteAlign: "centre"




# POPUPS
# ----------------------
popups: [
	{
		id: "popup_mentionlegales"
		titre: "Mentions légales"
		texte: "[gras|Concernant la société exploitante du site] [lien|www.makae.fr|www.makae.fr] [saut][saut]
			Dénomination sociale : MAKAE [saut]
			Siret : 812 220 473 R.C.S. Nanterre [saut]
			Code activité : 8230Z Organisation de foires, salons professionnels et congrès [saut][saut]
			Nationalité : France [saut]
			Forme juridique : SARL [saut]
			Au capital de : 7 5000 euros [saut]
			Siège social : 15 rue Henri Tariel 92130 Issy les Moulineaux [saut][saut]
			[gras|Concernant les droits d’auteur et droit de reproduction] [saut][saut]
			L’ensemble de ce site relève de la législation française et internationale sur le droit d’auteur et la propriété intellectuelle. Tous les droits de reproduction sont réservés, y compris les représentations iconographiques et photographiques. La reproduction de tout ou partie de ce site sur un support quel qu’il soit, est formellement interdite sauf autorisation expresse du responsable du site. [saut]
			La reproduction des textes sur un support papier est autorisée dans le cadre pédagogique, sous réserve du respect des trois conditions suivantes : [saut][saut]
			gratuité de la diffusion [saut]
			respect de l’intégrité des documents reproduits (pas de modification ni altération) [saut]
			citation claire et lisible de la source sous la forme suivante: « Document issu du site Internet http: //www.makae.fr/ de l’agence MAKAE. Les droits de reproduction sont réservés et strictement limités ». [saut]
			Pour toute autre utilisation, veuillez nous consulter. [saut]
			Crédits photos (c) [saut][saut]
			[gras|Concernant les informations nominatives] [saut][saut]
			Les informations envoyées sont destinées à MAKAE qui traitera vos demandes d’informations. Vous avez un droit total d’accès, de modification, de rectification et de suppression des informations nominatives vous concernant. Pour l’exercer, adressez­	vous à : [saut][saut]
			MAKAE [saut][saut]
			15 rue Henri Tariel [saut][saut]
			92130 ISSY LES MOULINEAUX [saut]
			[lien|lachenal.agnes@makae.fr|lachenal.agnes@makae.fr]"
	}
]

