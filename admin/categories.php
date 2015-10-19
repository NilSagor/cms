<!-- header -->
    <?php include('includes/admin_header.php') ?>

    <div id="wrapper">

        <?php include('includes/admin_navigation.php') ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Welcome to Admin
                            <small>Subheading</small>
                        </h1>
                        <div class="col-xs-6">
                      
                        <?php insert_categories() ?>


                            <form action="" method="post">
                                <div class="form-group">
                                    <label for="cat_title">Add Catagory</label>
                                    <input type="text" class="form-control" name="cat_title" >
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-primary" name="submit" value="Add Catagory" >
                                </div>
                            </form>

                            <!-- Update and include query -->

                            <?php
                            if(isset($_GET['edit']))
                            {
                                $cat_id=$_GET['edit'];
                                include ('includes/update_categories.php');
                            } 

                             ?>



                        </div>
                        <!-- Add catagory form -->
                        <div class="col-xs-6">

                           <table class="table table-bordered table-hover">
                                <thread>
                                    <tr>
                                        <th>ID</th>
                                        <th>Category Title</th>
                                    </tr>
                                </thread>
                                <tbody>
                                    <tr>


<!-- find all categories query -->


<?php findAllCategories() ?>

<!-- Delete query -->

<?php deleteCategories() ?>
                                        
                                    </tr>
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

    <!-- footer -->
    <?php include('includes/admin_footer.php'); ?>
