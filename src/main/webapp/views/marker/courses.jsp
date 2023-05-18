<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script>
  let map03 = {
    map:null,
    init: function(){
      this.display();
      $('#s_btn').click(function(){
        map03.go(37.5208119, 126.9278776, 'S');
      });
      $('#b_btn').click(function(){
        map03.go(35.2100142, 129.0688702, 'B');
      });
      $('#j_btn').click(function(){
        map03.go(33.243829, 126.5386304, 'J');
      });
    },
    display: function(){
      var mapContainer = document.querySelector('#map03 > #map');
      var mapOption = {
        center: new kakao.maps.LatLng(37.5444568, 127.0572981), // 지도의 중심좌표
        level: 7 // 지도의 확대 레벨
      };
      map = new kakao.maps.Map(mapContainer, mapOption);
      var mapTypeControl = new kakao.maps.MapTypeControl();

      map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

      var zoomControl = new kakao.maps.ZoomControl();
      map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

      var markerPosition  = new kakao.maps.LatLng(37.5444568, 127.0572981);

      var marker = new kakao.maps.Marker({
        position: markerPosition
      });

      marker.setMap(map);
    },
    go:function(lat, lng, loc){
      var mapContainer = document.querySelector('#map03 > #map');
      var mapOption = {
        center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
        level: 7 // 지도의 확대 레벨
      };
      map = new kakao.maps.Map(mapContainer, mapOption);

      var mapTypeControl = new kakao.maps.MapTypeControl();

      map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

      var zoomControl = new kakao.maps.ZoomControl();
      map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
      //var moveLatLon = new kakao.maps.LatLng(lat, lng);
      //map.panTo(moveLatLon);

      var markerPosition  = new kakao.maps.LatLng(lat, lng);

      var marker = new kakao.maps.Marker({
        position: markerPosition
      });
      marker.setMap(map);
      map03.markers(loc);

    },
    markers: function(loc){
      $.ajax({
        url:'/markers',
        data: {'loc':loc},
        success: function(data){
          map03.displaymarkers(data);
        }
      });

    },
    displaymarkers: function(positions){

      var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
      for (var i = 0; i < positions.length; i ++) {
        var imageSize = new kakao.maps.Size(20, 30);
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
        var markerPosition = new kakao.maps.LatLng(positions[i].lat, positions[i].lng);

        var marker = new kakao.maps.Marker({
          map: map,
          position: markerPosition,
          title : positions[i].title,
          image : markerImage
        });

        // infoWindow
        var iwContent = '<h2>'+positions[i].title+'</h2>';
        iwContent += '<img src="/uimg/'+positions[i].img+'" style="width:50px">';

        var infowindow = new kakao.maps.InfoWindow({
          position : markerPosition,
          content : iwContent
        });

        kakao.maps.event.addListener(marker, 'mouseover', mouseoverListener(marker, infowindow));
        kakao.maps.event.addListener(marker, 'mouseout', mouseoutListener(marker, infowindow));
        kakao.maps.event.addListener(marker, 'click', mouseclickListener(positions[i].id));


        function mouseoverListener(marker, infowindow) {
          return function(){
            infowindow.open(map, marker);
          };
        }
        function mouseoutListener(marker, infowindow) {
          return function(){
            infowindow.close();
          };
        }
        function mouseclickListener(target) {
          return function(){
            location.href = '/map/detail?id='+target;
          };
        }

      } // end for

    }
  };
  $(function(){
    map03.init();
  })
</script>



<section class="our-courses" id="courses">
  <div class="container">
    <div class="col-lg-12" style="margin:0 auto;">
      <div class="meeting-single-item">
        <div class="col-lg-12 align-self-center" id="login_row">
          <div id = "map"></div>
        </div>
        <button id = "s_btn" type="button" class="btn btn-default">Seoul</button>
        <button id = "b_btn" type="button" class="btn btn-default">Busan</button>
        <button id = "j_btn" type="button" class="btn btn-default">Jeju</button>
      </div>
    </div>


    <div class="row">
      <div class="col-lg-12">
        <div class="section-heading">
          <h2>Our Popular Courses</h2>
        </div>
      </div>
      <div class="col-lg-12">
        <div class="owl-courses-item owl-carousel">
          <div class="item">
            <img src="/assets/images/course-01.jpg" alt="Course One">
            <div class="down-content">
              <h4>Morbi tincidunt elit vitae justo rhoncus</h4>
              <div class="info">
                <div class="row">
                  <div class="col-8">
                    <ul>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                  <div class="col-4">
                    <span>$160</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="/assets/images/course-02.jpg" alt="Course Two">
            <div class="down-content">
              <h4>Curabitur molestie dignissim purus vel</h4>
              <div class="info">
                <div class="row">
                  <div class="col-8">
                    <ul>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                  <div class="col-4">
                    <span>$180</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="/assets/images/course-03.jpg" alt="">
            <div class="down-content">
              <h4>Nulla at ipsum a mauris egestas tempor</h4>
              <div class="info">
                <div class="row">
                  <div class="col-8">
                    <ul>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                  <div class="col-4">
                    <span>$140</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="/assets/images/course-04.jpg" alt="">
            <div class="down-content">
              <h4>Aenean molestie quis libero gravida</h4>
              <div class="info">
                <div class="row">
                  <div class="col-8">
                    <ul>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                  <div class="col-4">
                    <span>$120</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="/assets/images/course-01.jpg" alt="">
            <div class="down-content">
              <h4>Lorem ipsum dolor sit amet adipiscing elit</h4>
              <div class="info">
                <div class="row">
                  <div class="col-8">
                    <ul>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                  <div class="col-4">
                    <span>$250</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="/assets/images/course-02.jpg" alt="">
            <div class="down-content">
              <h4>TemplateMo is the best website for Free CSS</h4>
              <div class="info">
                <div class="row">
                  <div class="col-8">
                    <ul>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                  <div class="col-4">
                    <span>$270</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="/assets/images/course-03.jpg" alt="">
            <div class="down-content">
              <h4>Web Design Templates at your finger tips</h4>
              <div class="info">
                <div class="row">
                  <div class="col-8">
                    <ul>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                  <div class="col-4">
                    <span>$340</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="/assets/images/course-04.jpg" alt="">
            <div class="down-content">
              <h4>Please visit our website again</h4>
              <div class="info">
                <div class="row">
                  <div class="col-8">
                    <ul>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                  <div class="col-4">
                    <span>$360</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="/assets/images/course-01.jpg" alt="">
            <div class="down-content">
              <h4>Responsive HTML Templates for you</h4>
              <div class="info">
                <div class="row">
                  <div class="col-8">
                    <ul>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                  <div class="col-4">
                    <span>$400</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="/assets/images/course-02.jpg" alt="">
            <div class="down-content">
              <h4>Download Free CSS Layouts for your business</h4>
              <div class="info">
                <div class="row">
                  <div class="col-8">
                    <ul>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                  <div class="col-4">
                    <span>$430</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="/assets/images/course-03.jpg" alt="">
            <div class="down-content">
              <h4>Morbi in libero blandit lectus cursus</h4>
              <div class="info">
                <div class="row">
                  <div class="col-8">
                    <ul>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                  <div class="col-4">
                    <span>$480</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <img src="/assets/images/course-04.jpg" alt="">
            <div class="down-content">
              <h4>Curabitur molestie dignissim purus</h4>
              <div class="info">
                <div class="row">
                  <div class="col-8">
                    <ul>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                  <div class="col-4">
                    <span>$560</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
