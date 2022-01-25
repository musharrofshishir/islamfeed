<?php include"includes/header.php"; 
?>

<body>

    <!-- Navigation -->
   <?php include"includes/navigation.php";?>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-8">
                <?php
                    if(isset($_POST['submit'])){
                        $search = $_POST['search'];
                        $query = "SELECT * FROM posts WHERE post_title LIKE '%$search%'";
                        $search_query = mysqli_query($connection,$query);
                        if(!$search_query){
                            die("search query failed". mysqli_error($connection));
                        }
                        $count = mysqli_num_rows($search_query);
                        if($count == 0){
                            echo "<h2>No results found</h2>";
                        }else{
                             
                            while($row = mysqli_fetch_assoc($search_query)){
                                $post_title = $row['post_title'];
                                $post_author = $row['post_author'];
                                $post_date = $row['post_date'];
                                $post_image = $row['post_image'];
                                $post_content = $row['post_content'];
                                $post_summary = $row['post_summary'];
                                $born = $row['born'];
        
                        ?>
                             <!-- <h1 class="page-header">
                            Page Heading
                            <small>Secondary Text</small>
                        </h1> -->
        
                        <!-- First Blog Post -->
                        <h2>
                            <a href="#"><?php echo $post_title?></a>
                        </h2>
                        <p class="lead">
                            by <a href="index.php"><?php echo $post_author?></a>
                        </p>
                        <p><span class="glyphicon glyphicon-time"></span> Posted on <?php echo $post_date?></p>
                        <hr>
                        <img class="img-responsive"  width="500" height="400" style="border-radius: 15px 50px 30px;" src="images/<?php echo $post_image;?>" alt="">
                        <hr>
                        <p><?php echo $post_content?></p>
                        <a class="btn btn-primary" href="#">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
        
                        <hr>
                        <?php }

                        }
                    }
                    ?>
                   

                
            </div>

            <!-- Blog Sidebar Widgets Column -->
            <?php include"includes/sidebar.php";?> 

        </div>
        

        <hr>      

        <!-- Footer -->
<?php   include"includes/footer.php";?>
