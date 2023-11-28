 <%@page import="com.protech.pharmaplus.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PetWorld</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
       
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/Home.css">
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
                    <div id="part21">
                        <a href="/logout">Logout</a>
                        
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
    
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="https://cdn.pixabay.com/photo/2016/02/19/14/14/dogs-1210323_1280.jpg" class="d-block w-100" alt="..." height="500px">
                <div class="carousel-caption d-none d-md-block">
                  
                </div>
              </div>
              <div class="carousel-item">
                <img src="https://cdn.pixabay.com/photo/2018/10/01/09/21/pets-3715733_1280.jpg"class="d-block w-100" alt="..." height="500px">
                <div class="carousel-caption d-none d-md-block">
                  
                </div>
              </div>
              <div class="carousel-item">
                <img src="https://cdn.pixabay.com/photo/2021/01/21/16/17/english-cocker-spaniel-5937760_1280.jpg" class="d-block w-100" alt="..." height="500px">
                <div class="carousel-caption d-none d-md-block">
                 
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
   
          <div id="parent">
            <img src="https://headsupfortails.com/cdn/shop/files/sara_s_web_c3eb3312-5459-434f-bff4-ee1024f1a2d0.png?v=1699360195" height="50%" width="100%">
          </div>
         
          <div id="parent1">
           <div id="child1"> <h2>Explore Pet's Winter Styles</h2></div>
           <div id="child2">
            <ul>
                <li><img src="https://headsupfortails.com/cdn/shop/files/sweaters_web_4303d584-1bd1-4e50-ae3d-ccf7a3d6d51c.png?v=1699956516" alt="" width="90%" height="90%"><h6>Sweaters</h6></li>
                <li><img src="https://headsupfortails.com/cdn/shop/files/jackets_web_ffe9b5ad-762b-4881-a3a2-372930550be9.png?v=1699956495" alt="" width="90%" height="90%"><h6>Jackets</h6></li>
                <li><img src="https://headsupfortails.com/cdn/shop/files/bedding_web_3ea6514f-c3d4-4375-b7ab-44b648ece65a.png?v=1699956485" alt="" width="90%" height="90%"><h6>Beds & Mats</h6></li>
                <li><img src="https://headsupfortails.com/cdn/shop/files/sweatshirts_web_b422b658-5338-455a-bfbb-0adc80daee69.png?v=1699956525" alt="" width="90%" height="90%"><h6>Sweatshirts</h6></li>
            </ul>
</div>
          </div>
          <div id="parent2">
          <h2>Welcome to a happier lifestyle for your pet! </h2>
          <p>Explore through our new range of home-inspired products that supplement</p>
          <p>your loved one’s nutrition! Feeding your pet the right kind of food aids in their overall </p>
          <p>well-being as well as their temperament.</p>
    </div>
  
    <div id="parent4">
        <div id="child3">
            <h4>SPECIALS BY PRICE</h4>
        </div>
        <div id="child4">
        <ul>
            <li><img src="https://headsupfortails.com/cdn/shop/files/99_web_72f99a3f-8060-4940-8dd4-1d5bf00c143a.png?v=1700218790" alt="" ></li>
        <li><img src="https://headsupfortails.com/cdn/shop/files/299_web_4a1f5829-1293-40d9-b74c-01117ab7bd43.png?v=1700218801" alt=""> </li>
        <li><img src="https://headsupfortails.com/cdn/shop/files/499_web_d9ae84ac-9387-487f-8afe-45a7931a4dca.png?v=1700218832" alt="" ></li>
    </ul>
    </div>
    </div>
     <hr style="color: black;">
         
    
    

          <div id="parent5">
            
              <marquee><h3><i>SPECIAL OFFER ON HENLO</i></h3></marquee>
            
          </div>
          <div id="parent6">
            <div id="child4">
              <img src="https://supertails.com/cdn/shop/files/Frame_106721426_4d427a07-a7dc-4d61-b2cb-6a47296a4c8d.png?v=1698747133" alt=" " height="50%" width="50%">
            </div>
            <div id="child5">
                <img src="https://supertails.com/cdn/shop/files/Frame_12674_f1c45738-10a1-4bac-8729-b000b3bf4139.png?v=1698747133" alt="" height="50%" width="50%">
              </div>
            </div>
          
          <div id="parent7">
            <ul>
              <li><img src="https://supertails.com/cdn/shop/files/Group_2773.png?v=1695618845" alt="" width="30%" height="30%" ><h5>24hr Delivery</h5><br><p>In 24 cities</p></li>
              <li><img src="https://supertails.com/cdn/shop/files/Group_2772.png?v=1695618954" alt="" width="30%" height="30%" ><h5>1,50,000+</h5><br><p>Happy pet parents</p></li>
              <li><img src="https://supertails.com/cdn/shop/files/Group_4229_3d723e4e-27fa-4ce4-b6c2-56682ff10eaa.png?v=1695980153" alt="" width="20%" height="30%" ><h5>Complementary pet consult</h5><br><p>For every new member</p></li>
              <li><img src="https://supertails.com/cdn/shop/files/Group_20941.png?v=1695619093" alt="" width="30%" height="30%" ><h5>Pet Pharmacy</h5><br><p>Exclusive</p></li>
            </ul>

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
     
    
    
    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>   
    </body>
    </html>