# vlc_convert
Conversion tool with VLC

Prérequis:
- Powershell
- VLC

Il suffit de lancer le script dans le répertoire contenant les fichiers à convertir. Pensez également à modifier la variable **$outputExtension** vers le format souhaité. Le lancement du script impose l’affichage d’une fenêtre cmd.

La variable **$programFiles** permet de déclarer le chemin vers l’exécutable de VLC. Elle est complétée par la variable **$processName**.

Concernant la variable [$processArgs], elle définit les options pour la conversion de fichier. J’ai tous laissé par défaut. Il est surement possible de faire mieux en lisant la doc.
