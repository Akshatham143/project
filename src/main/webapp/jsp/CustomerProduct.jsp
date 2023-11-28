 <%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="com.protech.pharmaplus.dto.Product"%>
<%@page import="com.protech.pharmaplus.dto.Customer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/CustomerProduct.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

</head>
<body>
    <nav>
        <div id="part1">
            PetWorld
                <span class="material-symbols-outlined">
                    pets
                    </span></p>
        </div>
        <div id="part2">
            <li><a href="/" id="part3">Home</a></li>
            <li><a href="/aboutus" id="part4">About Us</a></li>
            <li><a href="/customer/products" id="part5">Products</a></li>
            <%Customer customer=(Customer)session.getAttribute("customer");
                    if(customer==null){
                    %> 
            <li><a href="/customer/login"id="part6">Login</a></li>
            <li><a href="/customer/signup" id="part7">Signup</a></li>
               <%}else{%> 
                 <div class="cart">
            <a href="/customer/cart" class="cart"><img src="data:image/jpeg;base64,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" alt="Cart" width="39em" height="39em" style="border-radius: 10em;"></a>   
        </div>
                    
                    <%} %> 
                </div>
               
            
            <div class="part8" >
           
              <a href="/admin/login" class="admin" style="text-decoration: none;"> <img height="35px" width="35px" alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ0wv7M_nYmPJH3AYyQbbIGXZKj_8hoeAGIg&usqp=CAU"></a>
          </div>
      </div> 
        </div>
        <div id="nav_child2">
           
            </div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 -->

</nav>
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
	
	
	<div id="carouselExampleSlidesOnly" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="https://cdn.pixabay.com/photo/2016/01/17/10/02/dog-1144641_1280.jpg" class="d-block w-100" alt="..."
					height="500em">
			</div>
			<div class="carousel-item">
				<img src="https://cdn.pixabay.com/photo/2021/01/21/16/17/english-cocker-spaniel-5937757_1280.jpg" class="d-block w-100" alt="..."
					height="500em">
			</div>
			<div class="carousel-item">
				<img src="https://cdn.pixabay.com/photo/2016/07/07/15/35/puppy-1502565_1280.jpg" class="d-block w-100" alt="..."
					height="500em">
			</div>
		</div>
	</div>
	
	<div
		style="font-size: 50px; font-style: italic; position: relative; left: 50px;">PRODUCTS</div>

	<div class="product_container">

		<div class="child_product_container">

			 <%
			List<Product> list = (List<Product>) request.getAttribute("list");
			for (Product prod : list) {
			%> 

			<div class="child_product_container1" >
				 <%
				String base64 = Base64.encodeBase64String(prod.getImage());
				%> 
				<img height="300" width="300" alt="unknown"
					src="data:image/jpeg;base64,<%=base64%>">
				<h5 style="position: relative; top: 5px;">
					<%=prod.getName()%>-<%=prod.getBrand()%> 
				</h5>
				<h5 style="position: relative; top: 5px;">
					(<%=prod.getSubcategory()%>)
				</h5>
				<h3 style="color: coral; position: relative; top: 5px;">
					<%=prod.getPrice()%>
					&#8377
				</h3>
				<a href="/customer/addtocart?id=<%=prod.getId()%>"><button
						style="background-color: goldenrod; font-size: 15px; padding: 10px; border-style: none; position: relative; top: 5px;">Add
						to cart</button></a>
			</div>
 
			<%
			}
			%> 

		</div>

	</div>

	
                <div id="footer">
         
                    <h2> PetWorld</h2>
                           <span class="material-symbols-outlined">
                               pets
                               </span></p>
                               
                     <div id="child31">
                
                     </div>
                         <div id="child32">
                          
                             <ul>
                                 <li><h5>QuickLinks</h5></li><br>
                 <li>Home</li>
                                     <li> About</li>
                                     <li>Products</li>
                                     <li>Signup</li>
                                     
                             </ul>
                         </div>
                         
                         <div id="child33">
                           
                             <ul>
                                 <li><h5>Explore</h5></li><br>
                                     <li>Telephone:12345678</li>
                                     <li> Whatsapp:9664537894</li>
                                   
                             </ul>
                         </div>
                         <div id="child34">
                         
                             <ul>
                                 <li><h5>Delivery</h5></li><br>
                                     <li> CustomerSatisfaction</li>
                                     <li> FreeDeliveryCosts</li>
                                     <li>ImprovedEfficiency</li>
                                     <li> EnhancedReputation</li>
                                   
                             </ul>
                         </div>
                         
                        
                 </div>
                </div>
                
                
                
                
                   
                
                
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>  
                  
                  
                  
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
                </body>
                </html>