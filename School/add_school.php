<?php
header('Content-Type: application/json');
require_once '../connection.php';
$answer = array();


//print_r("le nom: " . $_POST['nom']);
//print_r("adresse".$_POST ['adresse']);
//print_r("la photo".$_POST ['photo']);
//print_r("Le phone".$_POST ['phone']);
//
//print_r($_FILES['media']);
//die();


//var_dump($_POST['nom']);
//die();
//var_dump($_POST); // Vérifiez si les données POST sont correctement reçues
//die();
//
if (isset($_POST['url'], $_POST['nom'], $_POST['adresse'], $_POST['phone'] ,$_POST['id_evenement']  )) {
$url = $_POST['url'];;
$nom = $_POST['nom'];
$adresse = $_POST['adresse'];
$phone = $_POST['phone'];
$id_evenement = $_POST['id_evenement'];

$query = $con->prepare("INSERT INTO ecole (url, nom, adresse, phone,id_evenement) VALUES (? , ?, ?, ?, ?)");
$query->bind_param("sssss", $url, $nom, $adresse, $phone,$id_evenement );
if ($query->execute()) {
    $answer['error'] = false;
    $answer['message'] = "Insertion effectuée avec succès.";
} else {
    $answer['error'] = true;
    $answer['message'] = "Échec de l'insertion : " . $query->error;
    }
} else {
    $answer['error'] = true;
    $answer['message'] = "Paramètres manquants";
}

echo json_encode($answer);
?>
