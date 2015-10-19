<!-- header -->
<?php include('includes/admin_header.php'); ?>
<!-- /header -->

    <div id="wrapper">

        <!-- Navigation -->
        <?php include ('includes/admin_navigation.php'); ?>

        <div id="page-wrapper">
 
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Dashboard <small><?php echo $_SESSION['username']; ?></small>
                        </h1>
                            <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> Dashboard
                            </li>
                        </ol>
                        
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-12">
                        <div class="alert alert-info alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-info-circle"></i>  <strong>Like SB Admin?</strong> Try out <a href="http://startbootstrap.com/template-overviews/sb-admin-2" class="alert-link">SB Admin 2</a> for additional features!
                        </div>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-comments fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                    <?php
                                    $query="SELECT*FROM comments";
                                    $select_all_comments=mysqli_query($connection,$query);
                                    $comment_count=mysqli_num_rows($select_all_comments); 
                                    echo "<div class='huge'>{$comment_count}</div>";

                                     ?>
                                        
                                        <div>New Comments!</div>
                                    </div>
                                </div>
                            </div>
                            <a href="comments.php">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-users fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                    <?php
                                    $query="SELECT*FROM users";
                                    $select_all_users=mysqli_query($connection,$query);
                                    $user_count=mysqli_num_rows($select_all_users); 
                                    echo "<div class='huge'>{$user_count}</div>";

                                     ?>
                                        <div>Users!</div>
                                    </div>
                                </div>
                            </div>
                            <a href="users.php">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-file-text fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                    <?php
                                    $query="SELECT*FROM posts";
                                    $select_all_post=mysqli_query($connection,$query);
                                    $post_count=mysqli_num_rows($select_all_post); 
                                    echo "<div class='huge'>{$post_count}</div>";

                                     ?>

                                        <div>Posts!</div>
                                    </div>
                                </div>
                            </div>
                            <a href="posts.php">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-red">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-th-list fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">

                                    <?php
                                    $query="SELECT*FROM categories";
                                    $select_all_categories=mysqli_query($connection,$query);
                                    $category_count=mysqli_num_rows($select_all_categories); 
                                    echo "<div class='huge'>{$category_count}</div>";

                                     ?>
                                        <div>Categories!</div>
                                    </div>
                                </div>
                            </div>
                            <a href="categories.php">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /.row -->

<?php 

$query="SELECT*FROM posts WHERE post_status='published'";
$select_all_published_post=mysqli_query($connection,$query);
$post_published_count=mysqli_num_rows($select_all_published_post);

$query="SELECT*FROM posts WHERE post_status='draft'";
$select_all_draft_post=mysqli_query($connection,$query);
$post_draft_count=mysqli_num_rows($select_all_draft_post); 


$query="SELECT*FROM comments WHERE comment_status='unapprove'";
$unapprove_comment_query=mysqli_query($connection,$query);
$unapprove_comment_count=mysqli_num_rows($unapprove_comment_query); 


$query="SELECT*FROM users WHERE user_role='subscriber'";
$select_all_subscriber=mysqli_query($connection,$query);
$subscriber_count=mysqli_num_rows($select_all_subscriber); 

 ?>

                <div class="row">
                    <script type="text/javascript">
      google.load("visualization", "1.1", {packages:["bar"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Data', 'Count'],

          <?php 
$element_text=['Comments', 'Pending Comments', 'Users', 'Subscriber', 'Pending Posts', 'All Posts', 'Active Posts', 'Categories'];
$element_count=[$comment_count, $unapprove_comment_count, $user_count, $subscriber_count, $post_draft_count, $post_published_count,$post_count, $category_count];

for($i=0;$i<8;$i++){
    echo "['{$element_text[$i]}'"." ,"."{$element_count[$i]}],";
}

           ?>

          

         
          
        ]);

        var options = {
          chart: {
            title: '',
            subtitle: '',
          }
        }

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, options);
      }
    </script>

    <div id="columnchart_material" style="width: 'auto'; height: 500px;"></div>

                </div>
                <!-- /row -->


                 

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

   <!-- footer  -->
   <?php include('includes/admin_footer.php'); ?>
   <!-- /footer -->
