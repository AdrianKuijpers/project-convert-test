<?php

//in dit bestand kun je alle (database) functies opnemen die je nodig hebt en dan gebruiken op verschillende pagina's

function savePurchase(array $cartItems)
{
    global $pdo;
    $status = 'Besteld';
    $usersId = $_SESSION['users']->id;
    $totalPrice = 0;
    foreach ($cartItems as $shoppingCartProduct) {
    $totalPrice = $totalPrice + $shoppingCartProduct->getPrice();
}
$query = $pdo->prepare('INSERT INTO purchase (status,users_id,total_price) VALUES (:status,:users_id,:total_price)');
$query->bindParam('status', $status);
$query->bindParam('users_id', $usersId);
$query->bindParam('total_price', $totalPrice);
$query->execute();

$purchaseId = $pdo->lastInsertId();

foreach ($cartItems as $shoppingCartProduct) {
    $instrumentId = $shoppingCartProduct->getinstrument()->id;
    $quantity = $shoppingCartProduct->getQuantity();
    $query = $pdo->prepare('INSERT INTO purchase_instrument (instrument_id,purchase_id,quantity) VALUES (:instrument_id, :purchase_id, :quantity)');
    $query->bindParam('instrument_id', $instrumentId);
    $query->bindParam('purchase_id', $purchaseId);
    $query->bindParam('quantity', $quantity);
    $query->execute();
}
}

//getcategories is een beginnetje, implementeer hier de logica om categories op te halen uit je categorie tabel
function getcategories():array
{
    global $pdo;
    //we maken een query en voeren deze direct uit
    $query = $pdo->query('SELECT * FROM categorie');
    //we gebruiken fetchAll om alles terug te geven uit de functie in de vorm van een associatieve array (FETCH_ASSOC)
    return $query->fetchAll(PDO::FETCH_ASSOC);
}

function getcategorie(int $categorieId)
{
    global $pdo;
    //we maken een query en voeren deze direct uit
    $query = $pdo->prepare('SELECT * FROM categorie WHERE id = :categorieId');
    //met bindparam voegen we de categorieId toe als parameter aan de query (is veilig tegen SQL injection)
    $query->bindParam('categorieId', $categorieId);
    //nu de parameter met binding in de query is gezet, voeren we de query ook echt uit
    $query->execute();
    //we gebruiken fetch om 1 row terug te geven uit de functie in de vorm van een associatieve array (FETCH_ASSOC)
    return $query->fetch(PDO::FETCH_ASSOC);
}

function getinstruments(int $categorieId):array
{
    global $pdo;
    //we maken een query maar voeren deze nog niet uit
    $query = $pdo->prepare('SELECT * FROM instrument WHERE categorie_id= :categorieId ');
    //met bindparam voegen we de categorieId toe als parameter aan de query (is veilig tegen SQL injection)
    $query->bindParam('categorieId', $categorieId);
    //nu de parameter met binding in de query is gezet, voeren we de query ook echt uit
    $query->execute();
    //we gebruiken fetchAll om alles terug te geven uit de functie in de vorm van een associatieve array (FETCH_ASSOC)
    return $query->fetchAll(PDO::FETCH_ASSOC);
}

function getinstrument(int $instrumentId):object
{
    global $pdo;
    $query = $pdo->prepare('SELECT id, name, description, img, price, categorie_id AS categorieId FROM instrument WHERE id = :instrumentId LIMIT 1');
    $query->bindParam('instrumentId', $instrumentId);
    $query->execute();
    //we gebruiken fetchAll om alle rows terug te geven uit de functie in de vorm van een class (FETCH_CLASS)
    $instruments = $query->fetchAll(PDO::FETCH_CLASS, 'instrument');
    //omdat we er maar 1 selecteren geven we alleen het eerste element terug
    return $instruments[0];
}
function getusers($email)
{
    global $pdo;
    $query = $pdo->prepare('SELECT id, email, password, role FROM users WHERE email = :email LIMIT 1');
    $query->bindParam('email', $email);
    $query->execute();
    $user = $query->fetchAll(PDO::FETCH_CLASS, 'Users');
    $users = null;
    if(count($user) > 0) {
        $users = $user[0];
    }
    return $users;
}

function saveusers(array $inputs):bool
{
    global $pdo;
    $role = 'member';
    $hashedPassword = password_hash($inputs['password'], PASSWORD_DEFAULT);

    $query = $pdo->prepare('INSERT INTO users (email,password,role) VALUES (:email,:password,:role)');
    $query->bindParam(':email', $inputs['email']);
    $query->bindParam(':password', $hashedPassword);
    $query->bindParam(':role',$role);

    return $query->execute();
}
