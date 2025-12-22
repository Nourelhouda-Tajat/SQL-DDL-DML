# Learning Roadmap
## Phase 1: PHP Fundamentals & Environment

* **Syntaxe PHP & structure**
Tout code PHP est entre <?php et ?> sans oublier le point virgule à la fin de chaque instruction(;) .
Un fichier classique contient HTML + Blocs PHP insérés à l'interieur de la page.
Exemple: 
 ```php
<?php 
 echo "Hello world";
?>
 ``` 
* **Variables, constantes, types**
- Une variable commence toujours par $ et se crée dès qu'on lui affecte une valeur.
- Une constante se définit avec ***define('NOM', valeur);*** ou ***const NOM = valeur;*** et ne change plus.
Exemple:
```php
<?php 
 $name = "Nour";
 $annee =  2025;
 $gryffindorElites = true;
 $num = [1, 2,3];
 $x = null; 
 define('PI', 3.14);
?>
 ```  
* **Oprérateurs et expression**
Oprérateurs arithmétique: ***+ - * / %*** pour les calculs simples.
Opérateurs de comparaison: ==, ===, !=, !==, <, >, <=, >=.
Exemple:
```php
<?php 
 $class = "GryffindorElites";
 $msg = "Hello " .$class; //concaténation
?>
 ```  
* **PHP dans HTML**s
PHP s'insère dans un fichier .php à l'intérirur du HTMLgrâcce aux balise <?php ..... ?>.
Pour afficher une variable dans du HTML, on utilise echo.
Exemple:
```php
<h1>Bienvenue <?php echo $username; ?></h1>
<ul>
    <?php foreach ($articles as $article): ?>
    <li><?php echo $article['title']; ?></li>
    <?php endforeach; ?>
</ul>
 ```
* **Utilisation de var_dump() et echo pour debugger**
***echo*** sert à afficher rappidement une valeur simple (string, nombre, bool converti en text) afin de vérifier qu'une variable contient en effet sa valeur appropriée à un endroit du code.
***var_dump*** affiche le type + la structure complète d'une variable (tableau, object,..) très utile pour comprendre ce que PHP reçoit vraiement.

 * **Environnement (XAMPP/php.ini)**
 XAMPP: Appache sert les fichiers PHP dans htdocs. L'URL ressemble à http://localhost/monprojet/index.php.
 Le fichier ***php.ini*** est le fichier de configuration principal de PHP.

## Phase 2: Control Structures & Functions
