#!/bin/sh
clear
echo
echo "#################### WELCOME TO BASH CALCULATRICE ############################"
echo
echo "				 1-Sommation"
echo "				 2-Soustraction"
echo "				 3-Produit"
echo "				 4-Division"
echo "				 5-Quitter"
echo 
echo "###############################################################################"
echo
ch=y  # initialisation de "ch"
while [ "$ch" = "y" -o "$ch" = "Y" ]; do
	echo -n  "Votre choix (1/2/3/4/5) ? "
	read rep
	while [ "$rep" != 1 -a "$rep" != 2 -a "$rep" != 3 -a "$rep" != 4 -a "$rep" != 5 ]; do
		echo "ERREUR ! Choix invalid !"
		echo -n  "Veuillez entrer un choix valide :" 
		read rep
	done
	if [ "$rep" = 5 ]; then
		echo "Au revoir !"
		break
	fi
	echo -n "Veuillez taper deux nombres entier :" 
        read var1 var2
	case "$rep" in
		1 ) echo "Résultat : $(($var1+$var2))";;
		2 ) echo "Résultat : $(($var1-$var2))";;
		3 ) echo "Résultat : $(($var1*$var2))";;
		4 ) while [ "$var2" = "0" ]; do
			echo -n "Entrer un nombre différent de zero ! "
			read var2
		    done
 		    echo "scale=2; (($var1 / $var2))" | bc -l ;; #on prend que deux valeurs après la virgule au cas
							         #où le résultat est float.
		* ) echo "Il faut choisir de 1 à 4 !"
	esac
echo -n "Voulez vous continuer Y/N ? "
read ch
if [ "$ch" = "n" -o "$ch" = "N" ]; then
 	echo "ok, au revoir !"
	break
fi
done

