<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="include/css/nav.css" rel="stylesheet">
     <link href="css/style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
    <div class="container-fluid">
        <%@ include file="include/navbar.html" %>
        
         <div class="row">
            <div class="col-lg-12">
            <div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/sr.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="image/sr.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="image/sr.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
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
            </div>
            
             <!-- Service Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2>Service Section</h2>
                <%@ include file="include/carousel.html" %>
            </div>
        </div>
        <!-- Time Slot Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2>Time Slot Section</h2>
               <%@ include file="include/service.html" %>
            </div>
        </div>
        <!-- Membership Section -->
        <div class="row">
          <h2> Membership Section </h2>
            <div class="col-lg-4 mb-4">
            <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Buy 3 Months Get 5 Months FREE</h5>
                  <p class="card-text my-1">Exclusive Offer</p>
                  <p class="card-text my-1">All types of equipments</p>
                  <p class="card-text my-1">Certified Trainer</p>
                  <p class="card-text my-1">Weight Loss</p>
                  <p class="card-text my-1">Personal Training</p>
                  <p class="card-text my-1">Customized Diet Plan</p>
                  <a href="#" class="btn btn-primary">Buy Now</a>
                </div>
          </div>
        </div>
   
        <div class="col-lg-4 mb-4">
            <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Buy 3 Months Get 5 Months FREE</h5>
                  <p class="card-text my-1">Exclusive Offer</p>
                  <p class="card-text my-1">All types of equipments</p>
                  <p class="card-text my-1">Certified Trainer</p>
                  <p class="card-text my-1">Weight Loss</p>
                  <p class="card-text my-1">Personal Training</p>
                  <p class="card-text my-1">Customized Diet Plan</p>
                  <a href="#" class="btn btn-primary">Buy Now</a>
                </div>
          </div>
        </div>
        
        <div class="col-lg-4 mb-4">
            <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Buy 3 Months Get 5 Months FREE</h5>
                  <p class="card-text my-1">Exclusive Offer</p>
                  <p class="card-text my-1">All types of equipments</p>
                  <p class="card-text my-1">Certified Trainer</p>
                  <p class="card-text my-1">Weight Loss</p>
                  <p class="card-text my-1">Personal Training</p>
                  <p class="card-text my-1">Customized Diet Plan</p>
                  <a href="#" class="btn btn-primary">Buy Now</a>
                </div>
        </div>
        </div>
             <br>
                  <br>
        <!-- Contact Us Section -->
        <div class="row">
            <div class="col-lg-12 bg-dark text-white">
                  <%@ include file="include/footer.html" %>
            </div>
        </div>
    </div>
   
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>