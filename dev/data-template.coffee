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
	accroche: "Pour que les [petit|petites] entreprises [saut] vivent aussi leurs [gras|grands] moments"
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
						texte: "Lorem ipsum dolor sit amet, consec tetur adipisicing elit. Doloremque ducimus quis sunt, quibusdam laudantium sequi nihil, odio eius"
						imageUrl: "box_event.png"
						imageAlt: "Alt de l'image"
						themeBox: "orange"
						lien: "makaevents"
					}
					{
						texte: "Lorem ipsum dolor sit amet, consec tetur adipisicing elit. Doloremque ducimus quis sunt, quibusdam laudantium sequi nihil, odio eius"
						imageUrl: "box_pop.png"
						imageAlt: "Alt de l'image"
						themeBox: "prune"
						lien: "makapop"
					}
				]
			}
		]
	}
	{
		id: "makaevents"
		theme: "orange"
		blocs: [
			{
				type: "titre"
				titre: "Voici le titre d'une des [italique|sections]"
				soustitre: "Voici le sous-titre d'une des sections"
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
						texte: "Lorem ipsum dolor sit amet, consec tetur [italique|adipisicing] elit. Doloremque ducimus quis sunt, quibusdam laudantium sequi nihil, odio eius",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imagePosition: "droite"
						lien: "http://www.google.fr"
					}
					{
						texte: "Lorem ipsum dolor sit amet, consec tetur [lien|adipisicing|http://placehold.it/120x150] elit. Doloremque ducimus quis sunt, quibusdam laudantium sequi nihil, odio eius",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imagePosition: "droite"
					}
					{
						texte: "Lorem ipsum dolor sit amet, consec tetur adipisicing elit. Doloremque ducimus quis sunt, quibusdam laudantium sequi nihil, odio eius",
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
						texte: "Lorem ipsum dolor sit amet, consec tetur adipisicing elit. Doloremque ducimus quis sunt, quibusdam laudantium sequi nihil, odio eius",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imagePosition: "dessus"
					}
					{
						texte: "Lorem ipsum dolor sit amet, consec tetur adipisicing elit. Doloremque ducimus quis sunt, quibusdam laudantium sequi nihil, odio eius",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imagePosition: "droite"
					}
					{
						texte: "Lorem ipsum dolor sit amet, consec tetur adipisicing elit. Doloremque ducimus quis sunt, quibusdam laudantium sequi nihil, odio eius",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imagePosition: "dessous"
					}
					{
						texte: "Lorem ipsum dolor sit amet, consec tetur adipisicing elit. Doloremque ducimus quis sunt, quibusdam laudantium sequi nihil, odio eius",
						imageUrl: "http://placehold.it/120x150"
						imageAlt: "Alt de l'image"
						imagePosition: "gauche"
					}
				]
			}
		]
	}
	{
		id: "makapop"
		theme: "prune"
		blocs: [
			{
				type: "titre"
				titre: "Voici le titre d'une des sections"
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
							"Lorem ipsum dolor sit amet consec tetur adipisicing elit. Sint fugit excepturi illo. Ipsa est minus sit modi aut blanditiis a quos. Voluptate ad aut consec tetur qui fuga reiciendis possimus praesentium?"
							"Lorem ipsum dolor sit amet consec tetur adipisicing elit. Sint fugit excepturi illo. Ipsa est minus sit modi aut blanditiis a quos. Voluptate ad aut consec tetur qui fuga reiciendis possimus praesentium?"
							"Lorem ipsum dolor sit amet consec tetur adipisicing elit. Sint fugit excepturi illo. Ipsa est minus sit modi aut blanditiis a quos. Voluptate ad aut consec tetur qui fuga reiciendis possimus praesentium?"
							"Lorem ipsum dolor sit amet consec tetur adipisicing elit. Sint fugit excepturi illo. Ipsa est minus sit modi aut blanditiis a quos. Voluptate ad aut consec tetur qui fuga reiciendis possimus praesentium?"
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