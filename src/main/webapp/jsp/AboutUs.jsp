 <%@page import="com.protech.pharmaplus.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     <link rel="icon" href="../images/favicon.ico">
    <link rel="stylesheet" href="../css/About.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

   
   </head>

        <body style="overflow-x: hidden">
    
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
                   
                    </div>                                                                                                                                                                                                                                                                                                                                                                                                  
            
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
<div id="parent">
    <img src="https://cdn.pixabay.com/photo/2017/06/20/22/14/man-2425121_1280.jpg">
</div>
<div id="parent1">
    <h5>Long before the stores, the spas and the website, even before<br>
        that tiny spark of an idea came to be, there was love.<br>
        The kind of love you can only share with a pet.<br>
        The kind of love that makes us family.</h5>
</div>
<div id="parent2">
    <div id="child21">
    <h2>HI</h2><br>
    <h5>We’re Heads Up For Tails.</h5>
    <h5>India’s 1st and most trusted pet care brand in the<br> industry, dedicated to our favourite family members—our pets.</h5>
    <h3>A Little About Us</h3><br>
    <h5>As pet parents ourselves, we want to help every pet<br> parent and their pet meet all their needs through our <br>innovative products and services. Our hope is that we<br> can play a meaningful role in bringing pets and their<br> humans closer to each other for years and years to come,<br> and through that build a kinder world.</h5>
</div>
<div id="child22">
    <img src="https://headsupfortails.com/cdn/shop/files/dog_image_5ab80e54-d0e3-4c9e-aaf8-c3b87662cb9b.png?v=1640328923">
</div>
</div>
<div id="parent3">
 <h3>Our Mission:To create and curate innovative yet functional pet
    products and services that bring joy to pets and
    their families, one home at a time</h3><img src="https://headsupfortails.com/cdn/shop/files/FAQ_dog.png?v=1640590726">
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
  
</body>
</html>