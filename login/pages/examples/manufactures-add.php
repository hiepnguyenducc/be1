
  <?php
require("../../../config/Database.php");
require("../../../models/model.php");
require("../../../models/productsModel.php");
require("../../../models/protypesModel.php");
require("../../../models/manufactures.php");
require("../../../models/userModel.php");

// Products
$Products = new Products;
$getAllProductsNew = $Products->getAllProducts();

// Protypes
$Protypes = new Protypes;
$getAllProtypes = $Protypes->getAllProtypes();

// Manufactures
$Manufactures = new Manufactures;
$getAllManufactures = $Manufactures->getAllManufactures();
 if(isset($_POST['submit']))
  {
    $manu_name = $_POST['manuname'];
    $insertManuFactures = $Manufactures->insertManuFactures($manu_name);
    header('Location: manufactures.php');

  }
?>

<?php include("header.php") ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Manu Factures</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="../../index.php">Home</a></li>
              <li class="breadcrumb-item active"><a href="manufactures.php"></i>Manu Factures</a></li>            
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <form action="manufactures-add.php" method="post">
    <section class="content">
      <div class="row">
      <div class="col-md-3"></div>
        <div class="col-md-6">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">New Manu Factures</h3>
            </div>
            <div class="card-body">            
              <div class="form-group">
                <label for="inputStatus">Manu_Name</label>               
                <input name="manuname" type="text" id="inputClientCompany" class="form-control">               
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      </div>
      <div class="row">
      <div class="col-3"></div>
        <div class="col-6">
          <a href="products.php" class="btn btn-secondary">Cancel</a>
          <input type="submit" name="submit" value="Manu Factures Add" class="btn btn-success float-right">
      </div>
    </section>
    </form>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  

  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.1.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
</body>
</html>
