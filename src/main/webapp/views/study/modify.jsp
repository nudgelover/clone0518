<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script>
    let study_board = {
        init: function () {
            $('#register_btn').click(function () {
                study_board.send();
            });
        },
        send: function () {
            $('#study_upload').attr({
                method: 'post',
                action: '/study/board_addimpl',
                enctype: 'multipart/form-data'
            });
            $('#study_upload').submit();
        }
    };
    $(function () {
        study_board.init();
    });


</script>
<%--------------------------------------center2---------------------------------------------%>
<section class="upcoming-meetings" id="meetings">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-heading">
                    <h2>Study Board</h2>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="categories">
                    <h4>Meeting Catgories</h4>
                    <form id="study_upload">
                        <div class="form-group">
                            <input type="text" class="form-control" id="studentId" name="studentId" placeholder="studentId">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="startTime" name="startTime"
                                   placeholder="startTime">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="endTime" name="endTime" placeholder="endTime">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="contents" name="contents" placeholder="contents">
                        </div>
                        <div class="form-group">
                            <input type="file" class="form-control" id="file" name="file" placeholder="INPUT FILE">
                        </div>
                        <button type="button" id="register_btn" class="btn btn-primary">REGISTER</button>
                    </form>
                    <ul>
                        <li><a href="#">Sed tempus enim leo</a></li>
                        <li><a href="#">Aenean molestie quis</a></li>
                        <li><a href="#">Cras et metus vestibulum</a></li>
                        <li><a href="#">Nam et condimentum</a></li>
                        <li><a href="#">Phasellus nec sapien</a></li>
                    </ul>
                    <div class="main-button-red">
                        <a href="allpage.jsp">All Upcoming Meetings</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

