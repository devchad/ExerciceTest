#  Exo : 

Déclarer un protocol avec  : 
 - une property de type String optionnel en accès lecture/écriture
 - une property de type String optionnel en accès lecture/écriture
 - une property de type String en accès lecture

Faire une implémentation de ce protocol dans laquelle la 3ème property retourne une version en majuscule du texte de la première property, concatèné avec le texte de la deuxième property si elle n’est pas vide.  Une classe qui hérite de l’implémentation précédente et qui surcharge la 3ème property pour, en fonction de la valeur d’un enum en property de la classe :  - soit respecter l’implémentation parente,  - soit au contraire retourner une version en minuscule du texte passé en paramètre, concatèné avec le texte de la property si elle n’est pas vide.

Une vue en MVVM avec 2 textfields, 1 switch et 1 Text. Dans le texte devra apparaitre : 
 - si le switch est activé : le texte du 1er textfield en majuscule concatèné avec le texte du 2eme textfield  - si le switch est désactivé : le texte du 1er textfield en minuscule concatèné avec le texte du 2eme textfield

Des tests unitaires liés à la vue précédente.

