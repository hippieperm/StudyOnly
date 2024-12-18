<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="../includes/header.jsp" %>

<script type="text/javascript">
	$(document).ready(function() {
		var result = '${result}';
		
		checkModal(result);
		
		function checkModal(result) {
			if (result === '') {
				return;
			}
			
			if (parseInt(result) > 0) {
				$(".modal-body").html("게시글 " + parseInt(result) + "번이 등록되었습니다.");
			}
			$("#myModal").modal("show");
		}
		
		$("#regBtn").on("click", function() {
			self.location="/board/write";
		});
		
		var actionForm = $("#actionForm");
		
		$(".paginate_button a").on("click", function(e) {
			e.preventDefault();
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
		$(".move").on("click", function(e) {
			e.preventDefault();
			actionForm.append("<input type='hidden' name='bno' value='" + $(this).attr("href") + "' />");
			actionForm.attr("action", "/board/get");
			actionForm.submit();
		});
		
		var searchForm = $("#searchForm");
		
		$("#searchForm button").on("click", function(e) {
			if (!searchForm.find("option:selected").val()) {
				alert("검색종류를 선택하세요.");
				return false;
			}
			
			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요.");
				return false;
			}
			
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();
			searchForm.submit();
		});
	})
</script>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Tables</h1>
<p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
	For more information about DataTables, please visit the <a target="_blank"
		href="https://datatables.net">official DataTables documentation</a>.</p>

<!-- DataTales Example -->
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
		<button id="regBtn" type="button" class="btn btn-primary pull-right">Regist</button>
	</div>
	<div class="card-body">
		<form id="actionForm" action="list" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}" />
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}" />
			<input type="hidden" name="type" value="${pageMaker.cri.type}" />
			<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}" />
		</form>
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				<thead>
					<tr>
						<th>#번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>수정일</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<th>#번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>수정일</th>
					</tr>
				</tfoot>
				<tbody>
				<c:forEach items="${list}" var="board">
					<tr>
						<td><c:out value="${board.bno}" /></td>
						<td><a href="${board.bno}" class="move">${board.title}</a></td>
						<td>${board.userNm}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${board.regDate}" /></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${board.updDate}" /></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			
			<div class="row">
				<div class="col-lg-12">
					<form id="searchForm" action="/board/list" method="get">
						<select name="type">
							<option value="" ${pageMaker.cri.type == null ? 'selected' : ''}>--</option>
							<option value="T" ${pageMaker.cri.type eq 'T' ? 'selected' : ''}>제목</option>
							<option value="C" ${pageMaker.cri.type eq 'C' ? 'selected' : ''}>내용</option>
							<option value="W" ${pageMaker.cri.type eq 'W' ? 'selected' : ''}>작성자</option>
							<option value="TC" ${pageMaker.cri.type eq 'TC' ? 'selected' : ''}>제목+내용</option>
							<option value="TW" ${pageMaker.cri.type eq 'TW' ? 'selected' : ''}>제목+작성자</option>
							<option value="TWC" ${pageMaker.cri.type eq 'TWC' ? 'selected' : ''}>제목+내용+작성자</option>
						</select>
						<input type="text" name="keyword" value="${pageMaker.cri.keyword}"/>
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}" />
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}" />
						<button type="submit" class="btn btn-primary">Search</button>
					</form>
				</div>
			</div>
			
			<div class="pull-right">
				<ul class="pagination">
					<c:if test="${pageMaker.prev}">
						<li class="paginate_button previous">
							<a href="${pageMaker.startPage -1}" class="page-link">Previous</a>
						</li>
					</c:if>
					
					<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<li class='paginate_button page-item ${pageMaker.cri.pageNum == num ? "active":""}'>
							<a href="${num}" class="page-link">${num}</a>
						</li>
					</c:forEach>
					
					<c:if test="${pageMaker.next}">
						<li class="paginate_button next">
							<a href="${pageMaker.endPage +1}" class="page-link">Next</a>
						</li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>













<%@include file="../includes/footer.jsp" %>