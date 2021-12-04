Ce projet conciste à afficher la température du processeur de ma RP et la température de Paris dans un dashboard crée par node-red.

La premiere partie est basé sur la commande : "vcgencmd measure_temp" qui sert à afficher la temp du CPU de ma RP et qui sera utilisé dans un node "exec" qui return "temp=??C".
Apres j'ai utilisé un node "change" afin de récuperer que le chiffre du message : au lieu d'afficher "tempc=50°C" j'affiche que "50°C".
Enfin j'ajoute deux nodes pour affichage : "text" et "gauge".

La deuxieme partie est basé sur le key API que je récupere du site "https://openweathermap.org/", faux d'abord créer un compte pour générer ce cle API. Apres à l'aide du node "openweathermap" je colle la clé API et je précise la ville et le pays, j'utilise aussi un node "change" mais là en "set" afin de récupérer que la valeur de temperature en °C parmis plusieurs information reçus du site ( humidité, pression ..) so I set msg.payload to the value msg.payload.tempc.

Les deux partie sont afficher chancun dans un groupe et dans la meme TAB que j'ai nommé TEMPERATURE.

source d'aide : https://projetsdiy.fr/debuter-node-red-raspberry-pi-installation-autostart/
                https://www.youtube.com/watch?v=xEVYTecXZmw&ab_channel=Pi4IoT
