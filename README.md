<!---
## Description
Ce plugin permet de dialoguer avec un bot

Le bot utiliser est rivescript. Les langues actuellement supportés sont:
  - Francais
  - Aanglais

Pour le moment il est impossible d'ajouter des nouvelles co

## Installation
```
1) Copier le fichier spljeedom.sh dans le repertoire /opt/SPLjeedom/
2) Copier le fichier spljeedom dans le repertoire /etc/init.d/
3) faire un chmod +x sur les 2 fichier
4) installer les paquets:
	sudo apt-get install sox
	sudo apt-get install lame libmp3lame0
5) lancer les commandes: 
	sudo systemctl daemon-reload
	sudo update-rc.d spljeedom defaults
6) modifier le fichier spljeedom et remplacer la valeur plughw:0,0 par le micro que vous utiliser. pour savoir quel est sont les chiffres a renseigner pour remplacer le 2 et le 0 il faut taper la commande arecord -l et renseigner le 2 par la valeur de la card que vous utilisez et le 0 par la valeur du device que vous utilisez
7) modidier le script spleedom.sh et renseigner votre url jeedom
8) tester en tapant la commande /etc/init.d/spljeedom start
```

## Authors
[Byackee](https://github.com/byackee)
