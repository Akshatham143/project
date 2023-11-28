 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.protech.pharmaplus.dto.Customer"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/CustomerSignup.css">
    
</head>
<body>
      
${fail}
     <div class="bodycentre">
    <form action="/customer/signup" method="post" style="background-image: linear-gradient(to bottom right,white,rgb(154, 149, 150))">
    
        <h1 class="header" style="color: black;position:relative;top:10px;">SignUp</h1>
        <table cellspacing="23em">
       
            <tr>
                <td class="td1"><label for="name"><strong>First Name :</strong></label></td>
                <td><input type="text" name="fname" id="name" required pattern="[A-Za-z]{3,32}" placeholder="First Name"></td>
            </tr>
            <tr>
                <td class="td1"><label for="lname"><strong>Last Name :</strong></label></td>
                <td><input type="text" name="lname" id="lname" required pattern="[A-Za-z]{1,32}" placeholder="Last Name"></td>
                
            </tr>
            <tr>
                <td class="td1"><label for="mno"><strong>Mobile No :</strong></label></td>
                <td><input type="text" name="mno" id="mno" required size="20" pattern="[0-9]{10}" placeholder="Mob No"></td>
           
            </tr>
            <tr>
                <td class="td1"><label for="email"><strong> Email-Id :</strong></label></td>
                <td><input type="email" name="email" id="email" placeholder="Email id" required></td>
            </tr>
            <tr>
                <td class="td1"><label for="pwd"><strong>Password :</strong></label></td>
                <td><input type="password" name="pwd" id="pwd" placeholder="Password" required></td>
            </tr>
            <tr>
                <td class="td1"><label for="address"><strong> Address :
                     </strong></label></td>
                <td><input type="text" name="address" id="address" placeholder="Address" required></td>
            </tr>
            
            
            <tr>
                <td><button class="reg" ><strong><a href="/" style="text-decoration: none; color: white;">Home</strong></a></button>
                </td>
                <td><button class="reg"><style="text-decoration: none;color: white;"><strong>Register</strong></button>
                </td>
                <!-- <a href="" >Forgot pasword?</a> -->
                <td><button class="cancel"><strong><a href="" style="text-decoration: none;color: white;">Cancel</a></strong></button>
               <!--   <a href="" style="position: relative; top: 3em; left: -1em; text-decoration: none;font-size: 15px;color: black;">help?</a>--></td>
            </tr>
        </table>
       <!--  <button style="width: 9%;height: 6%;font-weight: 700;position: relative; bottom: 388px;left:0.2em;;border-radius: 5px;" title="Back"><a href="/" style="text-decoration: none;"><---</a></button> -->
    </form>
</div>
</body>
</html>