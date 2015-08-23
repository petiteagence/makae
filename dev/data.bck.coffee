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







header:
	titre: "Makae"
	description: "Makae"
	accroche: "Pour que les petites entreprises [saut] vivent aussi leurs grands moments"
	image: "bg_paris.jpg"
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
		image: "etincelles.jpg"
		theme: "prune"
		blocs: [
			{
				type: "titre"
				titre: "Une Direction événementielle externalisée"
				soustitre: "Nous organisons vos événements éphémères pour qu'ils durent longtemps",
			}
			{
				type: "textes"
				items: [
					{
						texte: "L'organisation de séminaires, apéritifs, petits déjeuners, soirées d'entreprises, ou toute autre forme d'événements pour motiver, remercier, challenger, fédérer, réunir, communiquer, salariés et clients. Pour les petites et moyennes entreprises qui veulent une relation différente avec l'événementiel.",
						imageUrl: "team.svg"
						imageAlt: "Alt de l'image"
						imagePosition: "dessus"
					}
					{
						texte: "Une réponse pour les formateurs indépendants qui veulent se concentrer sur leurs formations [saut] l'offre Forma'zen de Makae et son partenaire MA Conseil : des solutions de logistique et de gestion administrative externalisée adaptées à votre contexte.",
						imageUrl: "clients.svg"
						imageAlt: "Alt de l'image"
						imagePosition: "dessus"
					}
					{
						texte: "Une solution d'événementiel adaptée aux besoins des franchisés : en complément des formations de la structure, une forme d'animation événementielle pour des franchisés qui veulent profiter à 200% de leur réseau.",
						imageUrl: "guide.svg"
						imageAlt: "Alt de l'image"
						imagePosition: "dessus"
					}
				]
			}
			{
				type: "textes"
				items: [
					{
						titre: "Une offre adaptée à vos besoins"
						liste: [
							"conception de l’événement",
							"réalisation / coordination des partenaires",
							"gestion de projet sur place le jour J",
							"suivi qualité a posteriori / recherche d'éléments mesurables sur la réussite de l'événement."
						]
						style: "item_fondclair"
					}
					{
						titre: "3 forfaits Forma'zen"
						liste: [
							"[gras|la logistique parfaite] : recherche du lieu, aménagement, pauses et repas, Paris & Province",
							"[gras|la merveille administrative] : gestion de l’administratif de vos formations, relation avec les OPCA, ...",
							"[gras|les formations sont une merveille] : Avec Makae, logistique complète / Avec M.A. Conseil, gestion de l’administratif ",
							"Des forfaits en nombre de jours ou nombre de formations, selons vos besoins.",
						]
						style: "item_fondclair"
					}
					{
						titre: "La réussite de l'événement commence par le brief",
						texte: "Ensemble, nous étudions vos besoins, votre situation, vos attentes, votre contexte qui feront que votre événement sera différent de tous les autres. [saut] Pourquoi investir ? Quel ROI attendez vous ? quelle est la cible de l'événement ?",
						style: "item_fondclair"
					}
				]
			}
		]
	}
	{
		id: "makaepop"
		image: "store.jpg"
		theme: "orange"
		blocs: [
			{
				type: "titre"
				titre: "Le concept ?"
				soustitre: "La solution pour votre expérience de vente en magasin physique"
			}
			{
				type: "textes"
				items: [
					{
						titre: "Un concept innovant"
						texte: "Qui s'adapte à tous les magasins, et pour tous les produits. [saut] Une solution simple et personnalisable pour une communication et une vente ciblée (localisation, promotion, ...)"
						imageUrl: "open.jpg"
						imageAlt: "Alt de l'image"
						imagePosition: "dessous"
					}
					{
						titre: "Pour qui ?"
						texte: "Pour les sites d’e-commerce qui souhaitent tenter l’aventure IRL. [saut] Pour des créateurs qui veulent rencontrer leurs clients. [saut][saut] Un produit à tester ? [saut] Une occasion saisonnière ? [saut] Une opération pour lancer une promotion ? [saut] Animer une opération click&collect ponctuelle et locale ?"
					}	
					{	
						titre: "Comment ?"
						texte: "1 - Un échange avec vous pour définir le type d’opération souhaitée, [saut][saut] 2 - La recherche du lieu, le concept et l'aménagement avec des équipes d’architectes, jusqu'à l'animation du magasin par des équipes de vente, [saut][saut] 3 - Conception de solutions pour animer et faire connaître le lancement",
					}
				]
			}
		]
	}
	{		
		id: "Les nouvelles de MakaEvent"
		theme: "blanc"
		blocs: [
			{
				type: "titre"
				titre: "la soirée de lancement en images"
			}
			{
				type: "textes"
				items: [
					{
						texte: "nos mascottes"
						imageUrl: "1.jpg"
						imagePosition: "dessus"
					}	
					{
						texte: "Equilibre au dessus du buffet !"
						imageUrl: "2.jpg"
						imagePosition: "dessus"
					}	
					{
						texte: "Gourmandises chez Tours de Cuisine"
						imageUrl: "3.jpg"
						imagePosition: "dessus"
					}	
					{
						texte: "Atelier thai, cuisine japonaise et buffet français, la gastronomie à l'honneur"
						imageUrl: "4.jpg"
						imagePosition: "dessus"
					}
				]
			}
		]
	}
]

contact:
	blocs: [
		{
			type: "titre"
			titre: "Qui se cache derrière Makae ?"							
			soustitre: "[italique | Agnès Lachenal]" 
		}
		{	
			type: "textes"
			items: [	
				{	
					texte : "L’événementiel est dans mes pensées depuis longtemps : 12 années riches d'enseignements auprès de clients innovants et exigeants dans l’IT m’ont donné envie de relever un nouveau défi. [saut] J’ai suivi une formation de gestion de projet événementiel pour créer ensuite Makae. [saut] Comme je bouillonne d’idées et d’envie de faire vivre de belles expériences à mes clients, je lance 2 offres événementielles. Une offre pour les entreprises et leurs salariés : MakaEvent cherche les bonnes réponses pour faire vivre le meilleur de l’événementiel à ses clients. La qualité du traiteur, un micro qui fonctionne, les petites attentions pour les salariés, une organisation sans faille pour plus de tranquillité et toujours un événementiel qui donne du sens… ; tout ce qui fera rêver les salariés. [saut] Une autre offre pour les entreprises et le grand public : MakaePop se distingue par sa volonté de faire vivre des événements plus centrés sur l’humain dans le monde du « retail ». Tout e-commerçant peut avoir besoin de se lancer In-Real-Life, sans pour autant prendre un bail à temps plein. L’expérience du magasin éphémère est alors LA solution ! L’idée de MakaePop est donc venue tout naturellement. Et comme chez MakaEvent, la qualité des partenaires est sa force."
					imageUrl: "agnes.jpg"
					imageAlt: "Alt de l'image"
					imageLien: "http://www.google.fr"
					imagePosition: "gauche"	
				}
			]
		}
	]
footer:
	blocs: [
		{
			type: "titre"
			soustitre: "Partenaires"
		}
		{
			type: "textes"
			items: [
				{
					titre: "Papilles&Papillons"
					texte: "[lien|www.papillesetpapillons.com|http://www.papillesetpapillons.com][saut] Ambiancistes et décoratrices événementielles."
					style: "item_fondclair"
				}
				{
					titre: "MA Conseil"
					texte: "[lien|http://maconseil.net/][saut] Assistance administrative externalisée."
					style: "item_fondclair"
				}
				{
					titre: "Abricot Formation"
					texte: "[lien|www.abricot-formation.com|http://www.abricot-formation.com][saut] Centre de formation événementielle, & spectacles."
					style: "item_fondclair"
				}
			]
		}
		{
			type: "textes"
			items: [
				{
					texte: "www.makae.fr - 2015 - [lien|Mentions légales|#popup_mentionlegales]"
				}
			]
		}
	]
popups: [
	{
		id: "popup_mentionlegales"
		titre: "Mentions légales"
		texte: "[gras|Concernant la société exploitante du site] [lien|www.makae.fr|www.makae.fr] [saut][saut]
			Dénomination sociale : MAKAE [saut]
			Siret : 812 220 473 R.C.S. Nanterre [saut]
			Code activité : 8230Z Organisation de foires, salons professionnels et congrès [saut][saut]
			Nationalité : France [saut]
			Renseignements relatifs à la personne : [saut]
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
			Les informations envoyées sont destinées à MAKAE qui traitera vos demandes [saut]
			d’informations. Vous avez un droit total d’accès, de modification, de rectification et de [saut]
			suppression aux informations nominatives vous concernant. Pour l’exercer, adressez­ [saut]
			vous à : [saut][saut]
			MAKAE [saut][saut]
			15 rue Henri Tariel [saut][saut]
			92130 ISSY LES MOULINEAUX [saut]
			[lien|lachenal.agnes@makae.fr|lachenal.agnes@makae.fr]"
	}
]





