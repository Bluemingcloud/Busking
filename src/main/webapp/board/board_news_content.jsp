<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../include/header.jsp" %>

	<section id="board_content">
	
	    <nav class="board_nav">
		    <div id="board_nav_wrap">
		        <h1>BOARD</h1>
		        <ul class="menu">
		            <li class="nth1 active"><strong><a href="board_list.boardNews">NEWS</a></strong></li>
		            <li class="nth2"><strong><a href="board_list.boardFree">자유게시판</a></strong></li>
		            <li class="nth3"><strong><a href="board_list.boardTeam">팀원 모집</a></strong></li>
		            <li class="nth4"><strong><a href="board_list.boardAsk">Q & A</a></strong></li>
		        </ul>
		    </div>
		</nav>
	
	    <div class="board_content_box">      
	        <div class="inner_box">
	            <div class="inner">
	                <div class="inner_top">
	                    <div class="category">NEWS</div>
	                    <h1 class="title">
	                        <strong>${dto.newsTitle }</strong>
	                        <span class="new">N</span>
	                    </h1>
	                    <div class="info">
	                        <div class="writer">${dto.newsWriter }</div>
	                        <div class="date">
	                        	<fmt:formatDate value="${dto.newsRegdate }" pattern="yy.MM.dd"/>
	                        </div>
	                    </div>
	                </div>
	                <div class="inner_mid">
	                    <div class="like_container">
	                        <button class="like_button" onclick="location.href='board_like.boardNews?bno=${dto.newsNum }'">
	                            <!-- <img src="../resources/img/board_img/like.png" alt="좋아요"> -->
	                            <c:choose>
	                            	<c:when test="${like == 'T' }">
	                            		<i class="fa-solid fa-heart like"></i>
	                            	</c:when>
		                            <c:otherwise>
			                            <i class="fa-regular fa-heart"></i>
		                            </c:otherwise>
	                            </c:choose>
	                            
	                        </button>
	                        <span class="like_count" id="likeCount">${dto.newsLikeCount }</span>
	                    </div>
	                    <div class="content">
	                        ${dto.newsContent }
	                    </div>
	                </div>
	                <div class="inner_bottom">
	                    <div class="inner_bottom_left">
	                        <div class="count" title="조회수">
	                            <img src="../resources/img/board_img/count.png" alt="조회수">
	                            <span>${dto.newsHit }</span>
	                        </div>
	                        <div class="comment_count" title="댓글수">
	                            <img src="../resources/img/board_img/comment.png" alt="댓글수">
	                            <span>${dto.newsCmtCount }</span>
	                        </div>
	                    </div>
	                    <div class="inner_bottom_right">
	                        <button class="delete_button" type="button" data-bno=${dto.newsNum } data-writer=${dto.newsWriter } data-subject="News">삭제</button>
	                        <button class="edit_button" type="button" onclick="location.href='board_edit.boardNews?subject=News&bno=${dto.newsNum}&writer=${dto.newsWriter }'">수정</button>
	                        <button class="list_button" type="button" onclick="location.href='board_list.boardNews'">목록</button>
	                    </div>
	                </div>
					<div class="comment_box">
		                <iframe src="board_comment_news_list.comment?bno=${dto.newsNum }" frameborder="0" scrolling="no"></iframe>
					</div>
	            </div>
	        </div>
	    </div>
	</section>
	<script>

		var date = new Date();
		var regdate = '${regdate}';
		
		if((date - regdate) > 86400000) {
			var newSpan = document.querySelector('.inner_top .title .new');
			newSpan.style.display = "none";
		}
		

	</script>
	<script src="${pageContext.request.contextPath }/resources/js/board/board_content.js"></script>
	
<%@ include file="../include/footer.jsp" %>
