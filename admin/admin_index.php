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
                            Welcome to Admin
                            <small> <?php echo $_SESSION['username']?> </small>
                        </h1>
                    </div>
                </div>
                <!-- /.row -->

                       
                <!-- /.row -->
                
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-file-text fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <?php
                                            $query = "SELECT * FROM posts";
                                            $all_posts = mysqli_query($connection,$query);
                                            $post_count = mysqli_num_rows($all_posts);
                                        ?>
                                <div class='huge'><?php echo $post_count;?></div>
                                        <div>Posts</div>
                                    </div>
                                </div>
                            </div>
                            <a href="admin_posts.php">
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
                                        <i class="fa fa-comments fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <?php
                                            $query = "SELECT * FROM comments";
                                            $all_comments = mysqli_query($connection,$query);
                                            $comment_count = mysqli_num_rows($all_comments);
                                        ?>
                                    <div class='huge'><?php echo $comment_count;?></div>
                                    <div>Comments</div>
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
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-user fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <?php
                                            $query = "SELECT * FROM users";
                                            $all_users = mysqli_query($connection,$query);
                                            $user_count = mysqli_num_rows($all_users);
                                        ?>
                                    <div class='huge'><?php echo $user_count;?></div>
                                        <div> Users</div>
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
                        <div class="panel panel-red">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-list fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <?php
                                            $query = "SELECT * FROM category";
                                            $all_categories = mysqli_query($connection,$query);
                                            $category_count = mysqli_num_rows($all_categories);
                                        ?>
                                        <div class='huge'><?php echo $category_count;?></div>
                                        <div>Categories</div>
                                    </div>
                                </div>
                            </div>
                            <a href="admin_categories.php">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>

                <?php

                    $query = "SELECT * FROM posts where post_status = 'published'";
                    $published_posts = mysqli_query($connection,$query);
                    $published_post_count = mysqli_num_rows($published_posts);

                    $query = "SELECT * FROM posts where post_status = 'draft'";
                    $draft_posts = mysqli_query($connection,$query);
                    $draft_post_count = mysqli_num_rows($draft_posts);

                    $query = "SELECT * FROM comments WHERE comment_status = 'unapproved'";
                    $unapproved_comments = mysqli_query($connection,$query);
                    $unapproved_comment_count = mysqli_num_rows($unapproved_comments);

                    $query = "SELECT * FROM users WHERE user_role = 'Moderator'";
                    $moderator_users = mysqli_query($connection,$query);
                    $moderator_count = mysqli_num_rows($moderator_users);  

                ?>
                

                <div class="row">
                <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Data', 'Count'],
          <?php
                $dashboard_text = ['Total Posts', 'Published Posts', 'Draft Posts', 'Comments', 'Pending comments', 'Users', 'Moderators', 'Categoris'];
                $dashboard_counts = [$post_count, $published_post_count, $draft_post_count, $comment_count, $unapproved_comment_count , $user_count, $moderator_count, $category_count];

                for($i = 0; $i < 8 ; $i++){
                    echo "['{$dashboard_text[$i]}'" . "," . "{$dashboard_counts[$i]}],";
                }

            ?>
         
        ]);

        var options = {
          chart: {
            title: '',
            subtitle: '',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>

                </div>
                <div id="columnchart_material" style="width: 'auto'; height: 500px;"></div>



            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
<?php include "includes/admin_footer.php";?>

    