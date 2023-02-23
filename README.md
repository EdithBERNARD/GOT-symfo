# Game of Thrones

Aujourd'hui nous allons réaliser une petite encyclopédie à propos d'un petit bouquin méconnu, mais qui monte. Il parait qu'une série télé est en préparation !

L'exercice se compose de 4 pages : 
- La [page d'accueil](docs/screens/home.png) montrant l'ensemble des personnages.
- La [page personnage](docs/screens/character.png) montrant les informations d'un personnage.
- La [page des maisons](docs/screens/houses.png) listant les maisons (familles) des personnages.
- La [page d'une maison](doc/../docs/screens/house.png) montrant les personnages appartenant à une maison donnée.
  

Pour réaliser ces pages, vous aurez besoin des outils suivants : 
- PHP & MySQL
- HTML & CSS
- Lumen & Eloquent
  
Un export SQL est fourni dans `docs/got.sql`, il faudra créer une BDD et importer le fichier. Cette base contient déjà toutes les informations, pas besoin de la modifier.


## Instructions 

### Étape 1 : Créer la page d'accueil 

Il faudra pour cela créer une _route_ adéquate et récupérer _tous les personnages_. Le fond coloré de chaque personnage dépend de sa maison. On ne va pas le prendre en compte tout de suite.

### Étape 2 : Créer la page d'un personnage

Pour cette étape, il faudra créer une route récupérant un _identifiant_ du personnage pour charger ses informations. 
Dans un premier temps, on ne va récupérer que le rang du personnage. Chaque personnage ne peut en avoir qu'un. Il faut donc modifier le _model_ en conséquence.

**Bonus :** On peut déjà récupérer les informations concernant les parents du personnage. C'est aussi une relation du même type que le rang.

### Étape 3 : Lister les maisons

Nouvelle route permettant de récupérer _toutes les maisons_. On va les afficher en utilisant un des attributs du _model_ pour modifier sa couleur de fond. Chaque image de maison doit mener vers la page de la maison en question au clic.

### Étape 4 : Lister les personnages d'une maison

Dans cette nouvelle page, on va lister tous les personnages **appartenant** à cette maison. Il faut donc pouvoir identifier la maison en question et faire le lien avec les personnes. Vous pouvez observer les tables de la BDD pour ça ! 

**Bonus :** Les personnages de cette page se présentent de la même façon que la homepage. Il y a peut-être un moyen de n'écrire qu'un template pour gérer les "listes de personnages" partout sur le site.

### Étape 5 : Finitions 

Maintenant qu'on a établi la relation entre personnage et maison, on va pouvoir l'utiliser : 

- On peut mettre à jour la couleur de fond des personnages sur les listes ou sur la page biographie.
- On peut faire la liste des maisons d'un personnage dans sa biographie.



## Par où commencer ?

Voilà quelques pistes pour vous aider : 

- Commencez par installer les dépendances composer (_Lumen_ faisant partie des dépendances)
- Configurez _Lumen_ (`.env`)
- Il faut penser à coder les _Models_ (cette fois, la base de données ne suit pas les conventions de nommage de _Lumen_, il faudra donc personnaliser les _Models_)
- Un personnage peut appartenir à **plusieurs** maisons et une maison possède potentiellement  **plusieurs** personnages
- Si vous voulez vous concentrer sur PHP et Lumen, HTML et CSS sont déjà fournis dans le dossier `docs/integration`
- Les images sont déjà prêtes  dans le dossier `public/assets/img`
