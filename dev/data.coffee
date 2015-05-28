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
	image: "bg_paris_nb.png"
sections: [
	{
		id: "services"
		theme: "blanc"
		blocs: [
			{
				type: "box3D"
				boxes: [
					{
						texte: "MakaEvent : une direction événementielle externalisée [saut] La solution de coordination d’événements pour les petites et moyennes entreprises",
						imageUrl: "box_event.png"
						imageAlt: "Alt de l'image"
						themeBox: "prune"
						lien: "makaevent"
					}
					{
						texte: "MakaePop : la solution sur mesure pour e-commerçants et créateurs en pop up store",
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
				soustitre: "Nous organisons des événements éphémères mais de longue durée",
			}
			{
				type: "image"
				imageUrl: "http://placehold.it/450x120"
				imageAlt: "Alt de l'image"
				imageLegende: "Légende de l'image"
			}
			{
				type: "textes"
				items: [
					{
						texte: "MakaEvent répond à toutes les entreprises qui se posent des questions pour stabiliser leurs effectifs, les motiver, en faire des collaborateurs impliqués pour leur société.",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imagePosition: "droite"
						lien: "http://www.google.fr"
					}
					{
						texte: "Vous êtes en train de vivre un moment important dans la vie de votre entreprise, vous venez de vous développer rapidement, vous avez besoin de rapprocher vos collaborateurs ? [saut] MakaEvent vous accompagne pour organiser l’événement qu’il vous faut.",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imagePosition: "droite"
					}
					{
						texte: "D’humain à humain, les échanges se facilitent, les problèmes se résolvent, au final ce sont vos clients qui seront satisfaits.",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imagePosition: "droite"
					}
				]
			}
			{
				type: "textes"
				items: [
					{
						texte: "Ensemble, nous définissons vos besoins, votre situation, vos attentes, votre contexte qui feront que votre événement sera différent de tous les autres",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imagePosition: "dessus"
					}
					{
						texte: "MakaEvent vous permet de vivre un moment unique avec une organisation de qualité, un réseau de partenaires de confiance, des idées originales ; le juste dosage de qualité et de rêve pour optimiser la motivation de vos salariés et les impliquer pour l’avenir.",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imagePosition: "droite"
					}
					{
						texte: "MakaEvent vous propose pour cela une formule complète : depuis la conception de l’événement, la recherche des partenaires, leur coordination, jusqu’à la réalisation le jour J.",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imagePosition: "dessous"
					}
					{
						texte: "Et parce qu’un événement de cette nature ne dure pas qu’une journée, MakaEvent vous propose de suivre les effets dans votre entreprise après l’événement, au travers d’un suivi qualité.",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imagePosition: "gauche"
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
				soustitre: "Nous vous faisons gagner du temps !",
			}
			{
				type: "image"
				imageUrl: "http://placehold.it/450x120"
				imageAlt: "Alt de l'image"
				imageLegende: "Légende de l'image"
			}
			{
				type: "textes"
				items: [
					{
						liste: [
							"La vocation de MakaePop est de proposer des solutions tout compris en magasin éphémère pour les sites d’e-commerce qui souhaitent tenter l’aventure IRL. Un produit à tester ? Une occasion saisonnière de vous faire connaitre en boutique physique ? Une opération pour lancer une promotion ? Relancer vos ventes par des solutions innovantes ? Vous faire connaître de vos clients en ligne ?"
							" A partir d’un brief pour connaitre vos produits, vos clients actuels, votre cible, l’action et la durée de l’opération que vous souhaitez réaliser, MakaePop vous accompagne depuis la recherche du lieu, la négociation avec les relais immobiliers, puis l’aménagement avec des équipes d’architectes, décorateurs, pour mettre en valeur vos produits juqu'au lancement du magasin avec des équipes de vente."
							"Lancez un produit sur une courte durée, avec un lieu aménagé rien que vous et sans perdre de temps !"
							"Lancer ou relancer son site de e-commerce en proposant des solutions différenciantes et innovantes pour toucher au mieux vos clients, pendant ce temps-la MakaePop s’occupe du magasin !"
						]
					}
					{
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imageLien: "http://www.google.fr"
						imagePosition: "gauche"
					}
				]
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
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
						]
					}
					{
						liste: [
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
						]
					}
					{
						liste: [
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
						]
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imageLien: "http://www.google.fr"
						imagePosition: "gauche"
					}
				]
			}
			{
				type: "textes"
				items: [
					{
						liste: [
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
						]
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imageLien: "http://www.google.fr"
						imagePosition: "dessus"
					}
					{
						liste: [
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
						]
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imageLien: "http://www.google.fr"
						imagePosition: "droite"
					}
					{
						liste: [
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
						]
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imageLien: "http://www.google.fr"
						imagePosition: "dessous"
					}
					{
						liste: [
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
							"[lien|Lorem ipsum dolor sit amet consec tetur adipisicing elit.|http://www.google.fr]"
						]
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imageLien: "http://www.google.fr"
						imagePosition: "gauche"
					}
				]
			}
		]