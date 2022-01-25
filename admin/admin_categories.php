<?php include"includes/admin_header.php";?>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <?php include "includes/admin_navigation.php"; ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Administration
                            <small>Customize your profile</small>
                        </h1>

                        <div class="col-xs-6">

                            <?php
                                insert_categories();
                            ?>

                            <form action="" method="POST">
                                <div class="form-group">
                                    <label for="cat_title">Add Category</label>
                                    <input type="text" class="form-control" name="cat_title">
                                </div>
                                <div class="form-group">
                                    <input class="btn btn-primary" type="submit" name="submit" value="Add Category"> 
                                </div>
                            </form>
                                <?php
                                    if(isset($_GET['edit'])){
                                        $cat_id = $_GET['edit'];
                                        include "includes/admin_edit_category.php";
                                    }
                                    
                                ?>

                        </div>

                        <div class="col-xs-6">
                            
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Category Title</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        findallcategories();
                                    ?>

                                    <?php 
                                        delete_categories();

                                    ?>
                                </tbody>
                            </table>
                        </div>


                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
<?php include "includes/admin_footer.php";?>

    