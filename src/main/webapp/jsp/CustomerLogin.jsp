<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.protech.pharmaplus.dto.Customer"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../css/CustomerLogin.css">

</head>
<body style="overflow-x: hidden;">


 <h1 id="successMessage" style="color:green">${pass}</h1>
<h1 id="failMessage" style="color:red">${fail}</h1>

<script>
    // Get the success and fail message elements
    var successMessage = document.getElementById("successMessage");
    var failMessage = document.getElementById("failMessage");

    // Check if the success message exists and display it as a pop-up alert
    if (successMessage.innerText !== "") {
        window.alert(successMessage.innerText);
        successMessage.style.display = "none"; // Hide the success message element
    }

    // Check if the fail message exists and display it as a pop-up alert
    if (failMessage.innerText !== "") {
        window.alert(failMessage.innerText);
        failMessage.style.display = "none"; // Hide the fail message element
    }
</script>

	
	<div class="login" >
		<form action="/customer/login" method="post">
		
			<table class="tab"
				style="height: 500px; width: 350px ; border-radius: 10px;background-image: linear-gradient(to bottom right,white,rgba(241, 228, 138, 0.543));">
				
				<tr>
				<td>
					<button style="width: 15%;height: 100%;;position: relative;right:24%; bottom:60px;font-weight: 700;border-radius: 5px;" title="Back"><a href="/" style="text-decoration: none;"><---</a></button>
				</td>
			</tr>
				<tr>
					<th>${fail}</th>
				</tr>

				<tr>
					<th
						style="font-size: 20px; font-style: normal; text-align: center; ">USER
						LOGIN</th>
				</tr>
				<tr>
					<td>
						<h1 style="font-size: 15px;position: relative;top: 35%;">USERNAME</h1>
					</td>
				</tr>
				<tr>
				 

					<td><input type="text" name="user" id="user"
						placeholder="Enter email/mobile"
						style="width: 250px;position: relative;bottom: 15%; height: 35px; font-size: 12px; background-color: rgb(252, 252, 243);">
					</td>

				</tr>
				<tr>
					<td>
						<h1 style="font-size: 15px;position: relative;bottom:29%">PASSWORD</h1>
					</td>
				</tr>
				<tr>
					<td><input type="password" name="password" id="password"
						placeholder="password"
						style="width: 250px;position: relative;bottom: 50%; height: 35px; font-size: 12px; background-color: rgb(248, 248, 233);">
					</td>
				</tr>
				<tr>
					<td>
						<button
							style="width: 200px; height: 35px;position: relative;outline: 2px solid black;bottom: 50%;left: 10%; background-color:#949a9c; border-style: none; border-radius: 2px;font-weight: 700;" >Login</button>
					</td>
				</tr>
            <tr>
				<td>
				</td>
			</tr>
			<tr>
				<td>
					<hr>
				</td>
			</tr>
			<tr>
				<td>
					<button style="width: 80%;height: 100%;background-color:#959da0;position: relative;left: 10%;top: 5px;font-weight: 700;border-radius: 5px;"><a href="/customer/signup" style="text-decoration: none;color: black;font-weight: bold;">Signup</a></button>
				</td>
			</tr>
			</table>
			
		</form>
		
	</div>
	
</body>