
Dans ce projet, j'ai créer mon CV en HTML et je l'ai exposer sur un serveur HTTP sur ma RP.  

ETAPE 1 : Tout dabord j'ai installé l'Apache qui est un logiciel serveur HTTP à l'aide de la commande "sudo apt install apache2".  

ETAPE 2 : Une fois installé je donne droits au dossier d'apache (qui se trouve dans: /var/www/html/ ) pour que je puisse l'administrer facilement en ajoutant mon CV.html dedans, ceci à l'aide des 2 commandes suivante : "sudo chown -R pi:www-data /var/www/html/" et "sudo chmod -R 770 /var/www/html/".  

ETAPE 3 : Je vérifie après qu'apache fonctionne en tapant l'adresse IP de mon RP dans mon navigateur web, je trouve une page Web avec un message qui dis : << It's Works!>>  

ETAPE 4 : Je programme mon cv en html en créant un fichier.html avec nano et je met mon image dans le meme dossier.  

Source d'aide : [Lien](https://www.piblo.fr/creation-dun-serveur-web/)
