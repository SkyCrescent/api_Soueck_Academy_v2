<?php

header('Content-Type: application/json');
require_once '../connection.php';

$answer = array();

//var_dump($_POST['nom']);
////print_r ($_POST['nom']);
//    //print_r ($_POST['prenom']);
//die();
////var_dump($_POST); // Vérifiez si les données POST sont correctement reçues
////die();


    if (isset($_POST['id']) && isset($_POST['nom']) && isset($_POST['date_debut']) && isset($_POST['date_fin'])
        && isset($_POST['photo'])
                  ){
        $id = $_POST['id'];
        $nom = $_POST['nom'] ;
        $date_debut = $_POST['date_debut'];
        $date_fin = $_POST['date_fin'];
        $photo = $_POST['photo'];

            $query = $con ->prepare("UPDATE evenement SET nom = '$nom', date_debut = '$date_debut' ,date_fin = '$date_fin'
                    ,photo = '$photo'
             WHERE id = '$id'");

                    if ($query->execute()){
                        $answer['error'] =false ;
                        $answer['messsage'] = "Mise a jour effectuer avec succes ";
                    }else{
                        $answer['error'] =true ;
                        $answer['messsage'] = "Mise a jour impossible ";
                    }
    }else{
        $answer['error'] =true ;
        $answer['messsage'] = "Fournisser les element  a mettre jour ";
    }
    print_r($answer);