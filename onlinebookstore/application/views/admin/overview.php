<!DOCTYPE html>
<html lang="en">
<head>
	<?php $this->load->view("admin/_partials/head.php") ?>
</head>
<body id="page-top">

<?php $this->load->view("admin/_partials/navbar.php") ?>

<div id="wrapper">

	<?php $this->load->view("admin/_partials/sidebar.php") ?>

	<div id="content-wrapper">

		<div class="container-fluid">
			
		<div class="card mb-3">
			<div class="card-header">
			Anggota Kelompok </div>
			<div class="card-body">
			<div class="h4">Ares Yudha : 172101794</div>
			<div class="h4">Yuvensius : 172101791</div>
			<div class="h4">Ari Eko Widodo : 172101863</div>
			<div class="h4">Abdul Aziz Ashiddiqie : 172101887</div>
			<div class="h4">Daleano Rindo Talindo : 172101822</div>
			<div class="h4">Septa Irsandry : 172101899</div>
			<div class="h4">Immanuel Abel Belare' Lirung : 172101797</div>
			<div class="h4">Natalis Alvin : 172101861</div>
		</div>

		</div>
		<!-- /.container-fluid -->

		<!-- Sticky Footer -->
		<?php $this->load->view("admin/_partials/footer.php") ?>

	</div>
	<!-- /.content-wrapper -->

</div>
<!-- /#wrapper -->


<?php $this->load->view("admin/_partials/scrolltop.php") ?>
<?php $this->load->view("admin/_partials/modal.php") ?>
<?php $this->load->view("admin/_partials/js.php") ?>
    
</body>
</html>
