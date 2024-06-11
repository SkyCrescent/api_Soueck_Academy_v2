<?php


require_once '../connection.php';

$answer = array();

if (isset($_GET['id_evenement'])) {
    $id = $_GET['id_evenement'];

    // Use a try-catch block for better error handling
    try {
        $query = $con->prepare("SELECT COUNT(*) AS NumberEcole FROM `ecole`  WHERE id_evenement = ?");
        $query->bind_param("i", $id);

        if ($query->execute()) {
            $query->store_result();

            if ($query->num_rows > 0) {
                $query->bind_result($NumberEcole);

                $profiles = array(); // Fixed variable name

                while ($query->fetch()) {
                    // Convertir l'image en base64
                    // $mediaBase64 = base64_encode($photo);

                    $profils = array(
                        'NumberEcole' => $NumberEcole,
//                        'nom' => $nom,
//                        'adresse' => $adresse,
//                        'photo' => $url,
//                        'phone' => $phone,
                    );
                    $profiles[] = $profils;
                }

                $answer['error'] = false;
                $answer['recu'] = $profiles;
                echo json_encode($answer);
            } else {
                $answer['error'] = true;
                $answer['message'] = "Aucun enregistrement trouvé avec l'ID spécifié." . $id;
                echo json_encode($answer);
            }
        } else {
            $answer['error'] = true;
            $answer['message'] = "Erreur avec la commande : " . $con->error;
            echo json_encode($answer);
        }

    } catch (Exception $e) {
        $answer['error'] = true;
        $answer['message'] = "Erreur : " . $e->getMessage();
        echo json_encode($answer);
    }
} else {
    $answer['error'] = true;
    $answer['message'] = "Donnez un ID valide.";
    echo json_encode($answer);
}


//require_once '../connection.php';
//
//$reponse = array();
//
//
//
//
//if (isset($_GET['id_evenement'])) {
//    $id = $_GET['id_evenement'];
//
//    // Use a try-catch block for better error handling
//    try {
//        $query = $con->prepare("SELECT COUNT(*) AS NumberEcole FROM ecole WHERE id_evenement = ?");
//        $query->bind_param("i", $id);
//
//
//if ($query->execute()) {
//    $resultat = $query->get_result();
//    $numRows = $resultat->num_rows;
//
//    if ($numRows > 0) {
//        $posts = array();
//
//        while ($elmnt = $resultat->fetch_assoc()) {
////
//            $posts[] = $elmnt;
//        }
//
//        $reponse['recu'] = $posts;
//        $reponse['num_rows'] = $numRows;
//        $reponse['error'] = false;
//        $reponse['message'] = "Récupération réussie.";
//    } else {
//        $reponse['error'] = true;
//        $reponse['message'] = "Aucun résultat trouvé.";
//    }
//} else {
//    $reponse['error'] = true;
//    $reponse['message'] = "Erreur avec la commande : " . $query->error;
//}
//
//} catch (Exception $e) {
//        $answer['error'] = true;
//        $answer['message'] = "Erreur : " . $e->getMessage();
//        echo json_encode($answer);
//    }
//} else {
//    $answer['error'] = true;
//    $answer['message'] = "Donnez un ID valide.";
//    echo json_encode($answer);
//}
//
////
////$query->close();
////echo json_encode($reponse);
//?>
