<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>

    .container3 {
        width: 100%;
        height: 10%;
        margin: 0 auto;
        display: flex;
    }

    .studyItem {
        flex: 1;
        align-itmes: center;
        vertical-align: center;
        justify-content: center;
        text-align: center;
    }

    .studentImg {
        width: 85px;
        height: 85px;
        border-radius: 70%;
    }

    .attached {
        width: 40px;
        height: 40px;
    }

    .rdate {
        font-size: 0.95em;
        font-weight: 500;
        color: rgb(171, 171, 171);
    }

    hr {
        border: none;
        border-top: 0.3px solid #a2a2a2; /* 굵기 조절을 위한 border-top 속성 */
        margin: 5px 0; /* 위아래 마진을 조절 */
        padding: 0; /* 패딩을 제거 */
    }

</style>

<section class="upcoming-meetings" id="meetings">
        <div class="container">
            <div class="col-lg-9" style="margin: 0 auto;">
                <div class="categories">
                    <c:forEach var="obj" items="${cpage.getList()}">
                        <hr>
                        <div class=" col-lg-12 container3">
                            <div class="col-lg-2 studyItem" style="text-align: right;">
                                <img class="studentImg" src="/uimg/${obj.studentImg}">
                            </div>
                            <div class="col-lg-6 studyItem"
                                 style="text-align: left; display: flex;flex-direction: column;align-items: center;">
                                <p><b>${obj.studentName}</b><br>
                                    <span class="rdate">${obj.rdate}</span></p>
                            </div>
                            <div class="col-lg-6 studyItem"
                                 style="text-align: left; display: flex;flex-direction: column;align-items: center;">
                                <span class="rdate" style="font-size: 12px;">${obj.contents}</span></p>
                            </div>
                            <div class="col-lg-6 studyItem"
                                 style="text-align: left; display: flex;flex-direction: column;align-items: center;">
                            <span class="rdate"
                                  style="font-size: 12px;">${obj.startTime}<br> - ${obj.endTime}</span></p>
                            </div>
                            <div class="col-lg-3 studyItem"
                                 style="display: flex;flex-direction: column;align-items: center;">
                                <img class="attached" src="/assets/images/attached.png"><span class="rdate"
                                                                                              style="font-size: 12px;">${obj.fileName_org}</span></p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
</section>
<section>
    <div class="col-lg-12">
        <div class="pagination">
            <jsp:include page="../page.jsp"/>
        </div>
    </div>
</section>

