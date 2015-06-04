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
						texte: "MakaEvent : [saut] Une direction événementielle externalisée [saut] La solution de coordination d’événements pour les petites et moyennes entreprises",
						imageUrl: "box_event.png"
						imageAlt: "Alt de l'image"
						themeBox: "prune"
						lien: "makaevent"
					}
					{
						texte: "MakaePop : [saut] La solution d'aménagement de magasin éphémère sur mesure pour e-commerçants et créateurs en centre ville",
						imageUrl: "box_pop.png"
						imageAlt: "Alt de l'image"
						themeBox: "orange"
						lien: "makaepop"
					}
				]
			}
		]
	}
	{
		id: "makaevent"
		theme: "prune"
		blocs: [
			{
				type: "titre"
				titre: "Que faisons-nous ?"
				soustitre: "Nous organisons des événements éphémères qui durent longtemps",
			}
			{
				type: "image"
				imageUrl: "etincelles.jpg"
				imageAlt: "Alt de l'image"
				imageLegende: "Etincelles"
			}
			{
				type: "textes"
				items: [
					{
						texte: "La réponse pour les entreprises qui veulent stabiliser leurs effectifs, les motiver, en faire des collaborateurs impliqués pour leur société.",
						imageUrl: "esperluette.jpg"
						imageAlt: "Alt de l'image"
						imageLegende: "Et"
						imagePosition: "dessus"
					}
					{
						texte: "La réponse pour les entreprises qui attendent une relation différente avec leurs clients, en partageant des valeurs, une  culture, et des ambitions.",
						imageUrl: "egaler-multiplier.jpg"
						imageAlt: "Alt de l'image"
						imageLegende: "Egaler et multiplier"
						imagePosition: "dessus"
					}
					{
						texte: "Vous êtes en train de vivre un moment important dans la vie de votre entreprise, vous venez de vous développer rapidement, vous avez besoin de rapprocher vos collaborateurs ? [saut] Vous voulez partagez une relation de confiance avec vos clients ?[saut] [saut] MakaEvent [ancre|MakaEvent|contact] vous accompagne pour organiser l’événement qu’il vous faut.",
						imageUrl: "question.jpg"
						imageAlt: "Alt de l'image"
						imageLegende: "questions"
						imagePosition: "dessus"
						size: 2
					}
				]
			}
			{
				type: "textes"
				items: [
					{
						texte: "Ensemble, nous définissons [saut] vos besoins, votre situation, vos attentes, votre contexte [saut] qui feront que votre événement sera différent de tous les autres"
						style: "item_fondclair"
					}
					{
						texte: "Vivre un moment unique avec une organisation de qualité, [saut] un réseau de partenaires de confiance, des idées originales."
						style: "item_fondclair"
					}
					{
						texte: "Et parce qu’un événement de cette nature ne dure pas qu’une journée, nous vous proposons de suivre les effets dans votre entreprise après l’événement, au travers d’un suivi qualité."
						style: "item_fondclair"
					}
					{
						texte: "Autant d'options que vous le souhaitez : [saut] conception de l’événement [saut] + réalisation / coordination des partenaires [saut] + gestion de projet le jour J [saut] + suivi qualité a posteriori.",
						style: "item_fondclair"
					}
				]
			}
		]
	}
	{
		id: "makaepop"
		theme: "orange"
		blocs: [
			{
				type: "titre"
				titre: "Que faisons-nous ?"
				soustitre: "Nous vous faisons gagner du temps !"
			}
			{
				type: "image"
				imageUrl: "open.jpg"
				imageAlt: "Alt de l'image"
				imageLegende: "open light"
			}
			{
				type: "textes"
				items: [
					{
						texte: "[gras | La solution ?] [saut] En proposant un aménagement éphémère adapté à tous types de produits"
						imageUrl: "store.jpg"
						imageAlt: "Alt de l'image"
						imageLegende: "store light"
						imagePosition: "dessous"
					}
					{
						texte: "[gras | Pour qui ?] [saut] Pour les sites d’e-commerce qui souhaitent tenter l’aventure IRL. [saut] Pour des créateurs qui veulent rencontrer leurs clients. [saut][saut] Un produit à tester ? [saut] Une occasion saisonnière ? [saut] Une opération pour lancer une promotion ? [saut] Animer une opération click&collect ponctuelle et locale ?"
					}	
					{	
						texte: "[gras | Comment ?] 1 Le brief sur vos produits, et le type d’opération que vous souhaitez réaliser, [saut][saut] 2 MakaePop vous accompagne sur la recherche du lieu, l’aménagement avec des équipes d’architectes, juqu'à l'animation du magasin par des équipes de vente, [saut][saut] 3 Notre rôle va jusqu'aux solutions pour marquer l'événement du lancement !",
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
					texte : "L’événementiel est dans mes pensées depuis longtemps : 12 années riches d'enseignements auprès de clients innovants et exigeants dans l’IT m’ont donné envie de relever un nouveau défi : j’ai suivi une formation de gestion de projet événementiel pour créer ensuite Makae. [saut] Comme je bouillonne d’idées et d’envie de faire vivre de belles expériences à mes clients, je lance 2 offres événementielles : [saut] L’une pour les entreprises et leurs salariés : MakaEvent cherche les bonnes réponses pour faire vivre le meilleur de l’événementiel à ses clients. La qualité du traiteur, un micro qui fonctionne, les petites attentions pour les salariés, une organisation sans faille pour plus de tranquillité et toujours un événementiel qui donne du sens… ; tout ce qui fera rêver les salariés. [saut] L’autre pour les entreprises et le grand public : MakaePop se distingue par sa volonté de faire vivre des événements plus centrés sur l’humain dans le monde du « retail » . Tout e-commerçant peut avoir besoin de se lancer In-Real-Life, sans pour autant prendre un bail à temps plein. L’expérience du magasin éphémère est alors LA solution ! L’idée de MakaePop est donc venue tout naturellement. Et comme chez MakaEvent, la qualité des partenaires est sa force."
					imageUrl: "agnes.jpg"
					imageAlt: "Alt de l'image"
					imageLien: "http://www.google.fr"
					imageLegende: "agnes"
					imagePosition: "gauche"	
				}
			]
		}
	]
footer:
	blocs: [
		{
			type: "textes"
			items: [
				{
					liste: [
						"[lien|Papilles&Papillons, ambiancistes et décoratrices événementielles.|http://www.papillesetpapillons.com]"
						"[lien|Abricot Formation, centre de formation événementielle, spectacles. | http://www.abricot-formation.com]"
					]
					size: 2
					style: "item_fondclair"
				}
				{
					liste: [
						"[lien|Linkedin.|https://fr.linkedin.com/in/agneslachenal]"
						"[lien|Viadeo.|http://www.viadeo.com/profile/00219tdkrrgclzwx?readOnly=&language=fr&currentab=resume]"
					]
					style: "item_fondclair"
				}
				{
					liste: [
						"[lien|Bedouk.|http://www.google.fr]"
						"[lien|LSA.|http://www.google.fr]"
						"[lien|BEPUB.|http://www.google.fr]"
					]
					style: "item_fondclair"
				}
				{
					titre: "mentions légales"
					texte: "[lien|Mentions légales|#popup_mentionlegales]"
					style: "item_fondclair"
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
			Numéro d’identification : en cours d'immatriculation [saut]
			Siret : en cours [saut]
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
			[lien|agnes.lachenal@makae.fr|agnes.lachenal@makae.fr]"
	}
]
