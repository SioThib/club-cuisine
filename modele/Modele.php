<?php

// Renvoie la liste des cours de cuisine
function getLesCours() {
    $bdd = getBdd();
    $lescours = $bdd->query('select * from cours');
    return $lescours;
}

// Effectue la connexion à la BDD
// Instancie et renvoie l'objet PDO associé
function getBdd() {
    $bdd = new PDO('mysql:host=localhost;dbname=club-cuisine;charset=utf8', 'ts2',
            'ts2', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    return $bdd;
}
