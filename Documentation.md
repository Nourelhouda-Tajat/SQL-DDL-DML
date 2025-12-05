# Phase 1: Database Fundamentals
1. Introduction aux bases de données
- Définition:
Une base de données est un ensemble structuré d'informations organisé pour être facilement consulté, géré et mis à jour. Les données sont rangées en tables (lignes et colonnes) et peuvent être ajoutées, modifiées ou supprimées selon les besoins. Elle regroupe généralement des enregistrements comme des transactions, des inventaires ou des profils clients.
- Utilité:
Les feuilles de calcul conviennent aux calculs simples, mais deviennent inadaptées face à de gros volumes de données. C'est là que l'importance des bases de données apparaît en résolvant ce problème de volumes conséquents d'informations et en permettant l'accès simultané de plusieurs utilisateurs, tout en garantissant la cohérence et la sécurité des données. Sans elles, les organisations s'exposent à des fichiers dispersés, des doublons fréquents et des risques élevés de perte d'informations critiques.
- Database terminology:
Le vocabulaire de base:
**Donnée**: Valeur brute (nombre, texte)
**Information** : Donnée contextualisée et interprétée
**Table** : Structure organisant les données en lignes et colonnes
**Enregistrement (row)** : Instance complète d'une entité
**Champ (column)** : Attribut caractérisant une entité
**Clé primaire** : Identifiant unique d'un enregistrement
**Clé étrangère** : Lien vers une autre table

2. Systèmes de gestion et architecture
Un système de gestion de base de données (SGBD) est un logiciel qui facilite le stockage, l'extraction et la manipulation des données. Il sert d'intermédiaire entre l'utilisateur et la base de données, garantissant l'intégrité, la sécurité et l'accessibilité des informations.

Les SGBD offrent des fonctionnalités essentielles : modélisation des données, contrôle d'accès concurrent permettant à plusieurs utilisateurs de travailler simultanément, et mécanismes de sécurité (chiffrement, authentification). Ils centralisent la gestion, réduisent la redondance et améliorent l'efficacité opérationnelle.

L’architecture d’un SGBD 
L'architecture typique comporte trois couches :

Couche physique : Stockage sur disque (fichiers, blocks)

Couche logique : Structure des tables, index, vues

Couche présentation : Interface utilisateur (application, console)


3. Types de bases de données
Il existe deux grandes catégories :
- SQL (relationnelles) : données organisées en tables avec lignes et colonnes, interrogées via le langage SQL (ex : PostgreSQL, MySQL, Oracle)
- NoSQL (non relationnelles) : formats variés (documents, clé-valeur, graphes), schéma flexible, gèrent des données non structurées (ex : MongoDB)

4. Applications réelles et choix du bon type
Applications réelles des bases de données
- E-commerce : PostgreSQL/MySQL pour commandes/inventaire (ACID critique)

- Réseaux sociaux : MongoDB pour contenu utilisateur flexible + Redis pour cache

- Banques : Oracle/PostgreSQL pour transactions (cohérence absolue)

- IoT & Analytics : InfluxDB/ClickHouse pour séries temporelles massives

# Phase 2: Relational Database Concepts
1. Structure fondamentale : Tables, lignes et colonnes
Une base de données relationnelle organise les données en tables (ou relations) composées de lignes et de colonnes. Chaque table représente une entité spécifique (client, produit, commande).​

- Colonne (attribut) : Définit un type de donnée particulier (nom, âge, email)

- Ligne (enregistrement/tuple) : Contient les valeurs concrètes pour une instance de l'entité

- Table : Ensemble structuré d'enregistrements partageant les mêmes attributs​

Exemple : Table Clients
| ID_Client | Nom | Email | Ville | 
|----------|-----------|----------|-----------|
| 1 | Tajat | n.tajat@youcode.ma | Casablanca | 
|----------|-----------|----------|-----------|
| 2 | Nour | t.nour@youcode.ma | Safi |

2. Clés primaires et clés étrangères
- Clé primaire (Primary Key)
Identifiant unique qui distingue chaque enregistrement dans une table. Elle ne peut jamais être nulle et garantit l'unicité des lignes.​

- Clé étrangère (Foreign Key)
Colonne d'une table qui fait référence à la clé primaire d'une autre table, créant ainsi une relation entre les deux tables. Elle permet de lier les données entre différentes entités.

3. Types de relations
- One-to-One (Un-à-Un)
Un enregistrement d'une table correspond à un seul enregistrement d'une autre table.
Exemple : Un employé possède un seul passeport professionnel.

- One-to-Many (Un-à-Plusieurs)
Un enregistrement d'une table peut être lié à plusieurs enregistrements d'une autre table.
Exemple : Un client peut passer plusieurs commandes.​

- Many-to-Many (Plusieurs-à-Plusieurs)
Plusieurs enregistrements d'une table sont liés à plusieurs enregistrements d'une autre table. Nécessite une table de jonction.
Exemple : Un étudiant suit plusieurs cours, et un cours est suivi par plusieurs étudiants.

4. Types de données et contraintes
- Types de données courants
| Type | Description | Exemple |
|----------|-----------|----------|
| INT |	Nombre entier | 42, -10 |
|----------|-----------|----------|
| VARCHAR(n) | Chaîne de caractères variable | "TAJAT"|
|----------|-----------|----------|
| DATE | Date | 2025-12-04 |
|----------|-----------|----------|
| DECIMAL(p,s) | Nombre | décimal | 19.99 |
|----------|-----------|----------|
| BOOLEAN | Vrai/Faux |	TRUE | FALSE |
|----------|-----------|----------|
| TEXT | Texte | long |	Description | produit |

- Contraintes principales
**NOT NULL** : Le champ ne peut pas être vide

**UNIQUE** : Les valeurs doivent être uniques

**PRIMARY KEY** : Clé primaire (NOT NULL + UNIQUE)

**FOREIGN KEY** : Référence vers une autre table

**CHECK** : Condition personnalisée (ex: age > 18)

**DEFAULT** : Valeur par défaut si non spécifiée
# Phase 3: SQL Foundations