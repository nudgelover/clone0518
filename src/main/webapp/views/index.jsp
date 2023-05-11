<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>Education Meeting HTML5 Template</title>

    <!-- Bootstrap core CSS -->
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="/assets/css/fontawesome.css">
    <link rel="stylesheet" href="/assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="/assets/css/owl.css">
    <link rel="stylesheet" href="/assets/css/lightbox.css">
<!--

TemplateMo 569 Edu Meeting

https://templatemo.com/tm-569-edu-meeting

-->
  </head>

<body>
  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                      <!-- ***** Logo Start ***** -->
                      <a href="/" class="logo">
                          Edu Meeting
                      </a>
                      <!-- ***** Logo End ***** -->
                      <!-- ***** Menu Start ***** -->
                      <ul class="nav">
                          <li><a href="/" class="active">Home</a></li>
                          <li><a href="/apply">Digi Members</a></li>
                          <li><a href="/apply">JMTGR</a></li>
                          <li><a href="/apply">Board</a></li>

                          <li><a href="/apply">Chat</a></li>
                          <li class="has-sub">
                              <a href="javascript:void(0)">Udemy</a>
                              <ul class="sub-menu">
                                  <li><a href="/meetings">Course details</a></li>
                                  <li><a href="/meeting_details">My Course</a></li>
                              </ul>
                          </li>
                          <li class="has-sub">
                              <a href="javascript:void(0)">Study</a>
                              <ul class="sub-menu">
                                  <li><a href="/meetings">스터디일지</a></li>
                                  <li><a href="/meeting_details">스터디차트</a></li>
                              </ul>
                          </li>
                      </ul>        
                      <a class='menu-trigger'>
                          <span>Menu</span>
                      </a>
                      <!-- ***** Menu End ***** -->
                  </nav>
              </div>
          </div>
      </div>
  </header>
  <!-- ***** Header Area End ***** -->
<%---------------------------------------center-------------------------------------------%>
  <c:choose>
    <c:when test="${center==null}">
      <jsp:include page="center.jsp"/>
    </c:when>
    <c:otherwise>
      <jsp:include page="${center}.jsp"/>
    </c:otherwise>
  </c:choose>
<%--  center1--%>

<%--------------------------------------center2---------------------------------------------%>
<%--  <section class="upcoming-meetings" id="meetings">--%>
<%--    <div class="container">--%>
<%--      <div class="row">--%>
<%--        <div class="col-lg-12">--%>
<%--          <div class="section-heading">--%>
<%--            <h2>Upcoming Meetings</h2>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-4">--%>
<%--          <div class="categories">--%>
<%--            <h4>Meeting Catgories</h4>--%>
<%--            <ul>--%>
<%--              <li><a href="#">Sed tempus enim leo</a></li>--%>
<%--              <li><a href="#">Aenean molestie quis</a></li>--%>
<%--              <li><a href="#">Cras et metus vestibulum</a></li>--%>
<%--              <li><a href="#">Nam et condimentum</a></li>--%>
<%--              <li><a href="#">Phasellus nec sapien</a></li>--%>
<%--            </ul>--%>
<%--            <div class="main-button-red">--%>
<%--              <a href="meetings.jsp">All Upcoming Meetings</a>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="col-lg-8">--%>
<%--          <div class="row">--%>
<%--            <div class="col-lg-6">--%>
<%--              <div class="meeting-item">--%>
<%--                <div class="thumb">--%>
<%--                  <div class="price">--%>
<%--                    <span>$22.00</span>--%>
<%--                  </div>--%>
<%--                  <a href="meeting-details.jsp"><img src="/assets/images/meeting-01.jpg" alt="New Lecturer Meeting"></a>--%>
<%--                </div>--%>
<%--                <div class="down-content">--%>
<%--                  <div class="date">--%>
<%--                    <h6>Nov <span>10</span></h6>--%>
<%--                  </div>--%>
<%--                  <a href="meeting-details.jsp"><h4>New Lecturers Meeting</h4></a>--%>
<%--                  <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6">--%>
<%--              <div class="meeting-item">--%>
<%--                <div class="thumb">--%>
<%--                  <div class="price">--%>
<%--                    <span>$36.00</span>--%>
<%--                  </div>--%>
<%--                  <a href="meeting-details.jsp"><img src="/assets/images/meeting-02.jpg" alt="Online Teaching"></a>--%>
<%--                </div>--%>
<%--                <div class="down-content">--%>
<%--                  <div class="date">--%>
<%--                    <h6>Nov <span>24</span></h6>--%>
<%--                  </div>--%>
<%--                  <a href="meeting-details.jsp"><h4>Online Teaching Techniques</h4></a>--%>
<%--                  <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6">--%>
<%--              <div class="meeting-item">--%>
<%--                <div class="thumb">--%>
<%--                  <div class="price">--%>
<%--                    <span>$14.00</span>--%>
<%--                  </div>--%>
<%--                  <a href="meeting-details.jsp"><img src="/assets/images/meeting-03.jpg" alt="Higher Education"></a>--%>
<%--                </div>--%>
<%--                <div class="down-content">--%>
<%--                  <div class="date">--%>
<%--                    <h6>Nov <span>26</span></h6>--%>
<%--                  </div>--%>
<%--                  <a href="meeting-details.jsp"><h4>Higher Education Conference</h4></a>--%>
<%--                  <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6">--%>
<%--              <div class="meeting-item">--%>
<%--                <div class="thumb">--%>
<%--                  <div class="price">--%>
<%--                    <span>$48.00</span>--%>
<%--                  </div>--%>
<%--                  <a href="meeting-details.jsp"><img src="/assets/images/meeting-04.jpg" alt="Student Training"></a>--%>
<%--                </div>--%>
<%--                <div class="down-content">--%>
<%--                  <div class="date">--%>
<%--                    <h6>Nov <span>30</span></h6>--%>
<%--                  </div>--%>
<%--                  <a href="meeting-details.jsp"><h4>Student Training Meetup</h4></a>--%>
<%--                  <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </section>--%>



<%--  <section class="our-facts">--%>
<%--    <div class="container">--%>
<%--      <div class="row">--%>
<%--        <div class="col-lg-6">--%>
<%--          <div class="row">--%>
<%--            <div class="col-lg-12">--%>
<%--              <h2>A Few Facts About Our University</h2>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6">--%>
<%--              <div class="row">--%>
<%--                <div class="col-12">--%>
<%--                  <div class="count-area-content percentage">--%>
<%--                    <div class="count-digit">94</div>--%>
<%--                    <div class="count-title">Succesed Students</div>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--                <div class="col-12">--%>
<%--                  <div class="count-area-content">--%>
<%--                    <div class="count-digit">126</div>--%>
<%--                    <div class="count-title">Current Teachers</div>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6">--%>
<%--              <div class="row">--%>
<%--                <div class="col-12">--%>
<%--                  <div class="count-area-content new-students">--%>
<%--                    <div class="count-digit">2345</div>--%>
<%--                    <div class="count-title">New Students</div>--%>
<%--                  </div>--%>
<%--                </div> --%>
<%--                <div class="col-12">--%>
<%--                  <div class="count-area-content">--%>
<%--                    <div class="count-digit">32</div>--%>
<%--                    <div class="count-title">Awards</div>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div> --%>
<%--        <div class="col-lg-6 align-self-center">--%>
<%--          <div class="video">--%>
<%--            <a href="https://www.youtube.com/watch?v=HndV87XpkWg" target="_blank"><img src="/assets/images/play-icon.png" alt=""></a>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </section>--%>
<%------------------------------------------END CENTER---------------------------------------------------------------------------%>
  <section class="contact-us" id="contact">
    <div class="footer">
      <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved. 
          <br>Design: <a href="https://templatemo.com" target="_parent" title="free css templates">TemplateMo</a></p>
    </div>
  </section>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>

    <script src="/assets/js/isotope.min.js"></script>
    <script src="/assets/js/owl-carousel.js"></script>
    <script src="/assets/js/lightbox.js"></script>
    <script src="/assets/js/tabs.js"></script>
    <script src="/assets/js/video.js"></script>
    <script src="/assets/js/slick-slider.js"></script>
    <script src="/assets/js/custom.js"></script>
    <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

        var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
          e.preventDefault();
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script>
</body>

</body>
</html>