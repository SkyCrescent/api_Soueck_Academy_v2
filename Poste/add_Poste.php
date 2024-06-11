<?php
header('Content-Type: application/json');
require_once '../connection.php';
$answer = array();
//$photo = file_get_contents($_FILES['media']['tmp_name']);
//print_r("id".$_POST['id']);
//print_r("media".$photo);


//// Augmenter la taille de max_allowed_packet avant la requête

if (isset($_POST['dat'], $_POST['contenu'],$_POST['media'], $_POST['visible'])) {
    $media = $_POST['media'];
    $dat = $_POST['dat'];
    $contenu = $_POST['contenu'];
    $visible = $_POST['visible'];
    $typeMedia = $_POST['typeMedia'];
    $id_evenement=$_POST['id_evenement'];
    // Préparation de la requête
    $query = $con->prepare("INSERT INTO postes (media, dat, contenu, visible,typeMedia,id_evenement) VALUES (?,?,?, ?, ?, ?)");
    if (!$query) {
        $answer['error'] = true;
        $answer['message'] = "Erreur de préparation de la requête : " . $con->error;
        echo json_encode($answer);
        exit;
    }
//
    // Liaison des paramètres
    $query->bind_param("sssssi", $media, $dat, $contenu, $visible,$typeMedia,$id_evenement);

    // Exécution de la requête
    if ($query->execute()) {
        $con->commit();
        $answer['error'] = false;
        $answer['message'] = "Insertion effectuée avec succès.";
    } else {
        $con->rollback();
        $answer['error'] = true;
        $answer['message'] = "Échec de l'insertion : " . $query->error;
    }
/// Fermeture de la requête
    $query->close();

} else {
    $answer['error'] = true;
    $answer['message'] = "Paramètres manquants";
}

echo json_encode($answer);
?>

