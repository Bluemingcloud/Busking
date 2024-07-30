<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<%@ include file="../include/header.jsp" %>

    <!-- 중앙 레이아웃 -->
    <section class="container customer-center-width" id="change">
     	<!-- 좌측메뉴 -->
        <div class="board_nav">
            <div id="board_nav_wrap">
	             <h1>고객센터</h1>
	             <ul class="menu">
	                 <li class="nth1"><strong><a href="customer_center_index.customer"><span>공지사항</span></a></strong>
	                 </li>
	                 <li class="nth2"><strong><a href="customer_center_res.customer"><span>이달의 예약</span></a></strong>
	                 </li>
	                 <li class="nth3"><strong><a href="customer_center_guide.customer"><span>이용안내</span></a></strong>
	                 </li>
	                 <li class="nth4"><strong><a href="customer_center_FAQ.customer"><span>FAQ</span></a></strong>
	                 </li>
	             </ul>
            </div>
        </div>
        <!-- 공지사항 게시판 -->
        <div class="board">
	        <!-- 공지사항 목록 -->
	        <div class="board_list">
	        	<div class="board_list_title">
					<strong>이달의 예약</strong>
				</div>
	            <!-- 공지사항 목록 -->
				<div class="board_list_box">

					<table class="board_list_table" id="layout1">
		                <thead>
		                    <tr>
		                        <th class="nth2">신청자</th>
		                        <th class="nth3">예약 날짜</th>
		                        <th class="nth4">예약 시간</th>
		                        <th class="nth5">장소</th>
		                        <th class="nth6">신청 날짜</th>
		                    </tr>
		                </thead>
                        <tbody>
							<c:forEach var="dto" items="${resList}">
							    <tr>
							        <td>${dto.userId}</td>
							        <td><a href="getResContent.customer?resNum=${dto.resNum }" style="width:30%;">
							        	<fmt:formatDate value="${dto.resDate}" pattern="yyyy-MM-dd" />
							        </a></td>
							        <td>${dto.resTime }</td>
							        <td>${dto.locaName}</td>
							        <td><fmt:formatDate value="${dto.resRegdate}" pattern="yy.MM.dd"/></td>
							    </tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- 페이지 번호 -->
				<div class="page_nav">
	                <ul class="center">
	                	<c:choose>
		                	<c:when test="${!pageVO.first }">
								<li id="page_first">
									<a href="customer_center_index.customer">
										<i class="fa-solid fa-angles-left"></i>
									</a>
								</li>
							</c:when>
							<c:otherwise>
								<li id="page_first">
									<div class="page_link">
										<i class="fa-solid fa-angles-left" style="color: #daeede;"></i>
									</div>
								</li>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${!pageVO.first }">
								<li id="page_prev">
									<a href="customer_center_res.customer?page=${pageVO.pageNum - 1 }">
										<i class="fa-solid fa-angle-left"></i>
									</a>
								</li>
							</c:when>
							<c:otherwise>
								<li id="page_prev">
									<div class="page_link">
										<i class="fa-solid fa-angle-left" style="color: #daeede;"></i>
									</div>
								</li>
							</c:otherwise>
						</c:choose>
						
						<c:forEach var="i" begin="${pageVO.startPage }" end="${pageVO.endPage }" step="1">
							<li class="page_li" data-page="${i }">
								<a href="customer_center_res.customer?page=${i }" title="1페이지">${i }</a>
							</li>
						</c:forEach>
						
						<c:choose>
		                	<c:when test="${!pageVO.last }">
								<li id="page_next">
									<a href="customer_center_res.customer?page=${pageVO.pageNum + 1}">
										<i class="fa-solid fa-angle-right"></i>
									</a>
								</li>
							</c:when>
							<c:otherwise>
								<li id="page_next">
									<div class="page_link">
										<i class="fa-solid fa-angle-right" style="color: #daeede;"></i>
									</div>
								</li>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${!pageVO.last }">
								<li id="page_last">
									<a href="customer_center_res.customer?page=${pageVO.realEndPage }">
										<i class="fa-solid fa-angles-right"></i>
									</a>
								</li>
							</c:when>
							<c:otherwise>
								<li id="page_last">
									<div class="page_link">
										<i class="fa-solid fa-angles-right" style="color: #daeede;"></i>
									</div>
								</li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
				<!-- 검색 -->
				<form action="customer_center_res.customer" method="post">
					<div class="board_search">
						<select class="board_search_box" name="type">
							<option value="all" selected>전체</option>
							<option value="writer">작성자</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select> 
						<input placeholder="검색어를 입력해 주세요" type="text" name="target" required> 
						<span>
							<input class="btn" type="submit" id="search_btn" value="검색">
						</span>
					</div>
				</form>
			</div>
		</div>
	</section>

    <script>
	    var pageNum = '${page}';
	    var pageFirst;
	    var pageUl = document.querySelector(".page_nav .center");
	
	    var pageItems = pageUl.querySelectorAll(".page_li");
	    Array.from(pageItems)
	    	 .filter(i => i.dataset.page == pageNum)
	    	 .forEach(item => item.classList.add("active"));
    
    </script>
   	
    
<%@ include file="../include/footer.jsp"%>
