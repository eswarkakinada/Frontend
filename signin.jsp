<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>signinpage</title>
<style>
body
{
background-image:url("b2.jpg");

background-repeat: no-repeat;

}


</style>
</head>
<body>
  <!--   <font color="white"> -->

<form method="post" action="LoginServlet">
   <center><table>
     <h2>Signin</h2>
     
     <tr>
     <td>user id</td><td><input type="text" name="txtname" required></td>
     </tr> 
     <tr>  
     <td> Enter password</td><td><input type="password" name="txtpass" placeholder="Password must have min 6 char"></td> <br>
     </tr></table></form>
<form method="get" action="welcome.html">
<div style="float:center;">
<table>
  <td><input type="submit" value="login" ></td>
  </table></div>
    </form>

</body>
</html>