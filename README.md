# wd-flex-bison

Compilateur de compilateur : **Flex** et **Bison** en WinDev pour générer un compilateur en Wlanguage

Générère les classes .wdc a partir de 2 fichiers
. Un fichier .l qui décrit les mots du langage a partir d'expressions régulières
. Un fichier .y qui décrit la grammaire du langage et le code WL a exécuter a chaque "phrase"

Les fichiers .wdc générés peuvent ensuite être intégré dans n'importe quel projet WinDev / WebDev / WinDev Mobile

Exemple de ligne de commande
```
wd_flex_bison.exe ..\exemples\calc.l ..\exemples\calc.y "C:\Temp\out_flex\mon_compilateur\calculatrice.wdc"
```
