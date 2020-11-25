 <div id="myCarousel" class="carousel slide" data-ride="carousel" >
                              <!-- Indicators -->
                              <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                <li data-target="#myCarousel" data-slide-to="3"></li>
                              </ol>

                              <!-- Wrapper for slides -->
                              <div class="carousel-inner">
                                <div class="item active">
                                  <a onclick="galeri('tw001');">
                                  <img src="../_foto/tw0012.jpg" alt="Chania"></a>
                                  <!-- <div class="carousel-caption">
                                    <h3>Los Angeles</h3>
                                    <p>LA is always so much fun!</p>
                                  </div> -->
                                </div>

                                <div class="item">
                                  <a onclick="galeri('tw004');">
                                  <img src="../_foto/tw0041.jpg" alt="Chicago"></a>
                                  <!-- <div class="carousel-caption">
                                    <h3>Chicago</h3>
                                    <p>Thank you, Chicago!</p>
                                  </div> -->
                                </div>

                                <div class="item">
                                  <a onclick="galeri('tw007');">
                                  <img src="../_foto/tw0071.jpg" alt="New York"></a>
                                  <!-- <div class="carousel-caption">
                                    <h3>New York</h3>
                                    <p>We love the Big Apple!</p>
                                  </div> -->
                                </div>

                                <div class="item">
                                  <a onclick="galeri('tw011');">
                                  <img src="../_foto/tw0112.jpg" alt="Chicago"></a>
                                  <!-- <div class="carousel-caption">
                                    <h3>Chicago</h3>
                                    <p>Thank you, Chicago!</p>
                                  </div> -->
                                </div>
                              </div>

                              <!-- Left and right controls -->
                              <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                                <span class="sr-only">Previous</span>
                              </a>
                              <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                                <span class="sr-only">Next</span>
                              </a>
                            </div>

                            <!-- GALLLERY  RECOMMENDASI TOURISM -->
                <div id="view_kanan_table" class="col-md-4 col-sm-4 mb" style="margin-top:20px; display:block;"> 
                      <div class="white-panel pns" style="height: 510px;">
                        <header class="panel-heading" style=" width: 100%"  >
                          <label class="btn btn-compose" id="judul_table" style="background-color:black;border-bottom:black;color:white; margin: 0px;">Popular Object Tourism
                          </label>
                        </header>
                        <div style="height:500px; margin:20px;">

                        <div id="populertourism">
                          <div class="container2">
                            <div class="row2" >
                            <div class="mySlides">
                                <a href="" onclick="galeri('tw001')"><img src="../_foto/tw0012.jpg" style="width:100%"></a>
                              </div>

                              <div class="mySlides">
                                <a href="" onclick="galeri('tw004')"><img src="../_foto/tw0041.jpg" style="width:100%"></a>
                              </div>

                              <div class="mySlides">
                                <a href="" onclick="galeri('tw007')"><img src="../_foto/tw0071.jpg" style="width:100%"></a>
                              </div>
                                
                              <div class="mySlides">
                                <a href="" onclick="galeri('tw011')"><img src="../_foto/lobangjepang1.jpg" style="width:100%"></a>
                              </div>

                            <!--   <div class="mySlides">
                                <a href="" onclick="galleryreco('tw010')"><img src="../_foto/rumahbunghatta1.jpg" style="width:100%"></a>
                              </div>
                                -->
                              <a class="prev" onclick="plusSlides(-1)">❮</a>
                              <a class="next" onclick="plusSlides(1)">❯</a>
                            </div>  
                            <br>
                            <div class="row2">
                              <div class="column">
                                <img class="demo cursor" src="../_foto/jamgadang1.jpg" style="width:100%" onclick="currentSlide(1)">
                              </div>
                              <div class="column">
                                <img class="demo cursor" src="../_foto/jembatanlimpapeh1.jpg" style="width:100%" onclick="currentSlide(2)">
                              </div>
                              <div class="column">
                                <img class="demo cursor" src="../_foto/panoramangaraisianok2.jpg" style="width:100%" onclick="currentSlide(3)">
                              </div>
                              <div class="column">
                                <img class="demo cursor" src="../_foto/lobangjepang1.jpg" style="width:100%" onclick="currentSlide(4)">
                              </div>

                            


                              <a class="prev1" onclick="plusSlides(-1)">❮</a>
                              <a class="next1" onclick="plusSlides(1)">❯</a>
                            </div>
                          </div>
                        </div>
                          <div style="height:400px; overflow-y: scroll; margin:2px;">
                            <table style="color:black;" class="table table-bordered" >
                                <tbody id='kanan_table'></tbody>
                            </table>
                          </div>  
                        <script>
                          var slideIndex = 1;
                          showSlides(slideIndex);


                          function plusSlides(n) {
                            showSlides(slideIndex += n);
                          }

                          function currentSlide(n) {
                            showSlides(slideIndex = n);
                          }

                          function showSlides(n) {
                            var i;
                            var slides = document.getElementsByClassName("mySlides");
                            var dots = document.getElementsByClassName("demo");
                            var captionText = document.getElementById("caption");
                            if (n > slides.length) {slideIndex = 1}
                            if (n < 1) {slideIndex = slides.length}
                            for (i = 0; i < slides.length; i++) {
                                slides[i].style.display = "none";
                            }
                            for (i = 0; i < dots.length; i++) {
                                dots[i].className = dots[i].className.replace(" active", "");
                            }
                            slides[slideIndex-1].style.display = "block";
                            dots[slideIndex-1].className += " active";
                            captionText.innerHTML = dots[slideIndex-1].alt;
                            }

                            // GALLERY RECOMENDATION SLIDER DI INDEX
                              function galleryreco(a) {
                              console.log(a);
                              window.open(server + 'gallery.php?idgallery=' + a);
                              }
                          </script>


                      </div>
                    </div>
                </div>
<!-- batas akhir popular tourism clickable -->