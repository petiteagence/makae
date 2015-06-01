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
				soustitre: "Nous organisons des événements éphémères et en même temps de longue durée",
			}
			{
				type: "image"
				imageUrl: "http://placehold.it/450x120"
				imageAlt: "Alt de l'image"
				imageLegende: "Etincelles"
			}
			{
				type: "textes"
				items: [
					{
						texte: "La réponse pour les entreprises qui veulent stabiliser leurs effectifs, les motiver, en faire des collaborateurs impliqués pour leur société.",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imageLegende: "Et"
						imagePosition: "dessus"
					}
					{
						texte: "La réponse adressée aux entreprises qui veulent une relation différente avec leurs clients, en partageant leurs valeurs, leur culture, leurs ambitions.",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imageLegende: "Egaler et multiplier"
						imagePosition: "dessus"
					}
					{
						texte: "Vous êtes en train de vivre un moment important dans la vie de votre entreprise, vous venez de vous développer rapidement, vous avez besoin de rapprocher vos collaborateurs ? Vous voulez partagez une relation de confiance avec vos clients ?[saut] [saut] MakaEvent [ancre|MakaEvent|contact] vous accompagne pour organiser l’événement qu’il vous faut.",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imageLegende: "questions"
						imagePosition: "dessus"
					}
				]
			}
			{
				type: "textes"
				items: [
					{
						texte: "Ensemble, nous définissons [saut] vos besoins, votre situation, vos attentes, votre contexte [saut] qui feront que votre événement sera différent de tous les autres",
					}
					{
						texte: "Vivre un moment unique avec une organisation de qualité, [saut] un réseau de partenaires de confiance, des idées originales.",
					}
					{
						texte: "Et parce qu’un événement de cette nature ne dure pas qu’une journée, nous vous proposons de suivre les effets dans votre entreprise après l’événement, au travers d’un suivi qualité.",
					}
					{
						texte: "= Une formule complète, autant d'options que vous le souhaitez : [saut] conception de l’événement + réalisation / coordination des partenaires + gestion de projet le jour J + suivi qualité a posteriori.",
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
				imageUrl: "http://placehold.it/450x120"
				imageAlt: "Alt de l'image"
				imageLegende: "open light"
			}
			{
				type: "textes"
				items: [
					{
						texte: "La solution ? [gras | La solution ?] [saut] En proposant un aménagement éphémère adapté pour tous types de produits"
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imageLegende: "store light"
						imagePosition: "dessous"
					}
					{
						texte: "Pour qui ? [gras | Pour qui ?] [saut] Pour les sites d’e-commerce qui souhaitent tenter l’aventure IRL. [saut] Pour des créateurs qui veulent rencontrer leurs clients. [saut] Un produit à tester ? Une occasion saisonnière ? Une opération pour lancer une promotion ? Animer une opération click&collect ponctuelle et locale ?"
					}	
					{	
						texte: "Comment ? [gras | Comment ?] 1 Le brief sur vos produits, vos clients actuels, votre cible, l’action et la durée de l’opération que vous souhaitez réaliser, [saut] 2 MakaePop vous accompagne sur la recherche du lieu, l’aménagement avec des équipes d’architectes, juqu'à l'animation du magasin par des équipes de vente, [saut] 3 Nous proposons aussi dessolutions pour l'événement du lancement !",
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
					imageUrl: "http://placehold.it/120x150"
					imageAlt: "Alt de l'image"
					imageLien: "http://www.google.fr"
					imageLegende: "agnes"
					imagePosition: "dessus"	
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
						"[lien|Centre de formation événementielle, spectacles. | http://www.abricot-formation.com]"
					]
				}
				{
					liste: [
						"[lien|Linkedin.|https://fr.linkedin.com/in/agneslachenal]"
						"[lien|Viadeo.|http://www.viadeo.com/profile/00219tdkrrgclzwx?readOnly=&language=fr&currentab=resume]"
					]
				}
				{
					liste: [
						"[lien|Bedouk.|http://www.google.fr]"
						"[lien|LSA.|http://www.google.fr]"
						"[lien|BEPUB.|http://www.google.fr]"
					]
				}
				{
					titre: "mentions légales"
					texte: ""
				}
			]
		}
	]