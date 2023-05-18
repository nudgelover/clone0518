<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<style>
  section.meetings-page h6 {
    margin-top: 0px;
    font-size: 15px;
    text-transform: uppercase;
    font-weight: 600;
    color: #fff;
    letter-spacing: 1px;
    text-align: center;
  }

  section.meetings-page h2 {
    margin-top: 20px;
    margin-bottom: 20px;
    font-size: 36px;
    text-transform: uppercase;
    font-weight: 800;
    color: #fff;
    letter-spacing: 1px;
    text-align: center;
  }


  .meeting-single-item .down-content {
    background-color: #fff;
    padding: 40px;
    border-top-right-radius: 20px;
    border-top-left-radius: 20px;
    border-bottom-right-radius: 20px;
    border-bottom-left-radius: 20px;
    padding-bottom: 100px;
  }



</style>

<section class="meetings-page" id="meetings">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="meeting-single-item">
          <div class="down-content" >
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                  <th>IMAGE</th>
                  <th>ITEM CODE</th>
                  <th>ITEM NAME</th>
                  <th>ITEM PRICE</th>
                  <th>ITEM REG_DATE</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                  <th>IMAGE</th>
                  <th>ITEM CODE</th>
                  <th>ITEM NAME</th>
                  <th>ITEM PRICE</th>
                  <th>ITEM REG_DATE</th>
                </tr>
                </tfoot>
<%--                <tbody>--%>
<%--                <c:forEach var = "i" items = "${ilist}">--%>
<%--                  <tr>--%>
<%--                    <td><a href = "#"data-toggle="modal" data-target="#target${i.name}">--%>
<%--                      <img class="medium_img" src="/uimg/${i.imgname}" style = "width: 75px; height:75px;"></a></td>--%>
<%--                    <td><a href="/item/detail?id=${i.id}">${i.id}</a></td>--%>
<%--                    <td>${i.name}</td>--%>
<%--                    <td><fmt:formatNumber value="${i.price}" type="number" pattern = "###,###원"/></td>--%>
<%--                    <td><fmt:formatDate value="${i.rdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>--%>

<%--                    <!-- Modal -->--%>
<%--                    <div id="target${i.name}" class="modal fade" role="dialog">--%>
<%--                      <div class="modal-dialog">--%>

<%--                        <!-- Modal content-->--%>
<%--                        <div class="modal-content">--%>
<%--                          <div class="modal-header">--%>
<%--                            <button type="button" class="close" data-dismiss="modal"></button></br>--%>
<%--                            <h4 class="modal-title"></h4>--%>
<%--                          </div>--%>
<%--                          <div class="modal-body">--%>
<%--                            <h4>--%>
<%--                              Detail Image--%>
<%--                            </h4>--%>
<%--                            <p>${i.imgname}</p>--%>
<%--                            <img src="/uimg/${i.imgname}">--%>

<%--                          </div>--%>
<%--                          <div class="modal-footer">--%>
<%--                            <a href = "/item/detail?id=${i.id}" class="btn btn-info" role = "button">Detail</a>--%>
<%--                            <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>--%>
<%--                          </div>--%>
<%--                        </div>--%>

<%--                      </div>--%>
<%--                    </div>--%>
<%--                  </tr>--%>
<%--                </c:forEach>--%>
<%--                </tbody>--%>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

