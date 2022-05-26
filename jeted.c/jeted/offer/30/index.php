<?php include "../../config/core.php"; 
	if ($_SESSION['fr'] == true) header('location: ../thanks.php');
?>

<?php include "../../block/header.php"; ?>
<?php include "../form.php"; ?>
<?php include "pop.php"; ?>
<?php include "../../block/footer.php"; ?>