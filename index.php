<?php
require"init.php";
 if(isset($_POST['btnsave']))
 {
  $name = $_POST['Name'];// busname
  $type = $_POST['Type'];// type
  $imgFile = $_FILES['image']['name'];
  $tmp_dir = $_FILES['image']['tmp_name'];
  
  
  //$imgSize = $_FILES['user_image']['size'];
  
  
  if(empty($name)){
   $errMSG = "Please Enter BusName.";
  }
  else if(empty($type)){
   $errMSG = "Please Select Type.";
  }
  else if(empty($imgFile)){
   $errMSG = "Please Select Image File.";
  }
  else
  {
   $upload_dir = 'image/'; // upload directory
 
   $imgExt = strtolower(pathinfo($imgFile,PATHINFO_EXTENSION)); // get image extension
  
   // valid image extensions
   $valid_extensions = array('jpeg', 'jpg', 'png', 'gif'); // valid extensions
  
   // rename uploading image
   $userpic = rand(1000,1000000).".".$imgExt;
    
   // allow valid image file formats
   if(in_array($imgExt, $valid_extensions)){   
        {
     move_uploaded_file($tmp_dir,$upload_dir.$userpic);
    }
   
   }
   else{
    $errMSG = "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";  
   }
  }
  
  
  // if no error occured, continue ....
  if(!isset($errMSG))
  {
   $sql = "INSERT INTO travel(Name,Image,Type) VALUES('$name','$userpic','$type')";
   $con->query($sql);
   
   
   if($con)
   {
    echo "new record succesfully inserted ...";
    header("refresh:2;index.php"); // redirects image view page after 2 seconds.
   }
   else
   {
    echo "error while inserting....";
   }
  }
 }

?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form method="post" enctype="multipart/form-data" class="form-horizontal">
     
 <table class="table table-bordered table-responsive">
 
   <tr>
     <td><label class="control-label">Bus Name</label></td>
        <td><input class="form-control" type="text" name="Name" placeholder="Enter Name"  /></td>
    </tr>
     <tr> 

     <td><label class="control-label">Type</label></td>
        <td><input class="form-control" type="text" name="Type" placeholder="Enter Type"  /></td>
    </tr>
 <tr>
     <td><label class="control-label">Image</label></td>
        <td><input class="input-group" type="file" name="image" accept="image/*" /></td>
    </tr>
    <tr>
        <td colspan="2"><button type="submit" name="btnsave" class="btn btn-default">
        <span class="glyphicon glyphicon-save"></span> &nbsp; save
        </button>
        </td>
    </tr>
    
    </table>
    
</form>
</body>
</html>