<nav class="navbar navbar-expand-md bg-dark navbar-dark" style="position: sticky;top: 50px; z-index: 1;">
    <h5 class="text-white" style="font-weight: 50;">Filter</h5>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#FilterNavbar">
    <span class="fas fa-filter"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-center" id="FilterNavbar">
      <form id="filterrooms">
      <ul class="navbar-nav" id="filterul">
        <li class="nav-item" >
        <div class="nav-link" href="#">
            <span class="fas fa-city"> <input type="text" placeholder="Enter district" id="city_name" onkeyup="loadpostbyfilter()"></span>
        </div>
      </li>
      <li class="nav-item" >
        <div class="nav-link" href="#">
            <span class="fas fa-rupee-sign"> min <input type="text" placeholder="Enter min rent" value="0" id="min_rent" onkeyup="loadpostbyfilter()"></span>
        </div>
      </li>
      <li class="nav-item">
        <div class="nav-link" href="#">
            <span class="fas fa-rupee-sign"> max <input type="text" placeholder="Enter max rent" value="100000" id="max_rent" onkeyup="loadpostbyfilter()"></span>
        </div>
      </li>
      <li class="nav-item" >
        <div class="nav-link" href="#">
            <span class="fas fa-map-marker-alt"> <input type="number" placeholder="Enter pincode" id="pincode" onkeyup="loadpostbyfilter()"></span>
        </div>
      </li>
      </ul>
      </form>
  </div>  
</nav>