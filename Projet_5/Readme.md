# Readme OUICH Jalaleddine 

Ce projet consiste à réaliser une image minimale de Linux à travers l'outil Buildroot.

Ensuite , développer une application Node Red capable de lire des données BLE.

## Installation
On  installe Buildroot

```bash
sudo apt-get install libncurses5-dev bc
sudo apt install build-essential
sudo apt-get install manpages-dev unzip
sudo apt-get upgrade 
sudo apt-get update
git clone https://github.com/buildroot/buildroot.git
```


Pour configurer et puis générer l'image voulu 

```bash
make raspberrypi3_defconfig #fichier de configuration pour notre platforme RP3
make menuconfig #Personnalisation des paramètres ( augmentez la taille de l'omage finale à 200Mb)
make #Générer l'image
```











Après compilation : 

![](Capture2.JPG)



Puisque l'image est volumineuse , vous la trouveriez sur le lien Drive suivant :[Drive](https://drive.google.com/drive/folders/1vbvLfI3EVTfrBNTNVGJRm0mu46BEG6o4)



## Node Red



On a réalisé le schéma suivant  :

![](Capture.JPG)





## Difficultés rencontrées

=> Communication BLE
