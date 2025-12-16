-- Part 1: Basic DML Operation
-- Add a new product with reference 19, name 'Agrafeuse', price 50.6 DH
INSERT INTO Produit (RefProd, Design,PrixHT) VALUES (19, 'Agrafeuse', 50.6);

-- Register a new invoice number 8 dated 21/11/2010
INSERT INTO Facture (Numfact, DatFact) VALUES (8, '2010-11-21');

-- Update the price of the stapler to 70.0 DH
UPDATE Produit SET PrixHT = 70.0 WHERE Design= 'Agrafeuse';

-- Correct the date of invoice 6 to 14/10/2010
UPDATE Facture SET DatFact = '2010-10-14' WHERE Numfact= '6';

-- Update the description of the notebook to "Cahier 24 pages"
UPDATE Produit SET Design = 'Cahier 24 pages' WHERE Design= 'Carnet de notes';

-- Delete the product "Agrafeuse"
Delete FROM Produit WHERE Design='Agrafeuse';

-- Delete invoice number 2
DELETE FROM Est_Facture WHERE Numfact = 2;
DELETE FROM Commande WHERE Numfact = 2;
DELETE FROM Facture WHERE Numfact=2;

-- Part 2: Basic SELECT Queries
-- Display all available products in stock
SELECT * FROM Produit ;

-- Show products with price > 2.30 DH
SELECT * FROM Produit WHERE PrixHT>2.30;

-- Display products priced between 50 DH and 5000 DH
SELECT * FROM Produit WHERE PrixHT BETWEEN 50 AND 5000;

-- Show invoices recorded before October 16, 2020
SELECT * FROM Facture WHERE DatFact<'2020-10-16';

-- Display product names with prices between 500 DH and 7500 DH
SELECT Design, PrixHT FROM Produit WHERE PrixHT BETWEEN 500 AND 7500;

-- Show product names in stock with price < 2000 DH
SELECT Design FROM Produit WHERE PrixHT<2000;

-- Display all invoice numbers
SELECT Numfact FROM Facture;

-- Show all quantities invoiced for product reference 5
SELECT SUM(Qte) FROM Est_Facture WHERE RefProd=5;

-- Count total available products
SELECT COUNT(*) FROM Produit;

-- Display product names and prices from cheapest to most expensive
SELECT Design, PrixHT FROM Produit ORDER BY PrixHT;

-- Find the product with the highest price
SELECT Design, PrixHT FROM Produit ORDER BY PrixHT DESC LIMIT 1;

-- Find the product with the lowest price
SELECT * FROM Produit WHERE PrixHT=(SELECT MIN(PrixHT) FROM Produit);

-- Find the product with the highest price
SELECT * FROM Produit WHERE PrixHT=(SELECT MAX(PrixHT) FROM Produit);

-- Part 3: Intermediate Queries with J
-- Part 3: Intermediate Queries with Joins
-- Part 4: Advanced Queries & Analytics