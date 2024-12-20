<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="../includes/header.jsp" %>
<script type="text/javascript">
	$(document).ready(function() {
		var form = $("form");
		
		$("button").on("click", function(e) {
			e.preventDefault();
			
			var operation = $(this).data("oper");
			
			if (operation === "remove") {
				form.attr("action", "/board/remove");
			} else if (operation === "list") {
				var pageNumTag = $("input[name='pageNum']").clone();
				var amountTag = $("input[name='amount']").clone();
				var typeTag = $("input[name='type']").clone();
				var keywordTag = $("input[name='keyword']").clone();
				form.attr("action", "/board/list").attr("method", "get");
				form.empty();
				form.append(pageNumTag);
				form.append(amountTag);
				form.append(typeTag);
				form.append(keywordTag);
				//self.location = "/board/list";
				//return;
			}
			form.submit();
		});
	});
</script>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board Edit</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Edit</div>
			<div class="panel-body">
				<form role="form" action="modify" method="post">
					<div class="form-group">
						<label>Title</label>
						<input type="hidden" name="bno" value="${board.bno}" />
						<input type="hidden" name="pageNum" value="${cri.pageNum}" />
						<input type="hidden" name="amount" value="${cri.amount}" />
						<input type="hidden" name="type" value="${cri.type}" />
						<input type="hidden" name="keyword" value="${cri.keyword}" />
						<input type="text" class="form-control" name="title" value="${board.title}" />
					</div>
					<div class="form-group">
						<label>Description</label>
						<textarea class="form-control" rows="5" name="content">${board.content}</textarea>
					</div>
					<div class="form-group">
						<label>Writer</label>
						<p>${board.userNm}</p>
					</div>
					<button type="submit" id="m" data-oper="modify" class="btn btn-primary">Modify</button>
					<button type="submit" id="r" data-oper="remove" class="btn btn-secondary">Remove</button>
					<button type="submit" id="l" data-oper="list" class="btn btn-info">List</button>
				</form>
			</div>
		</div>
	</div>
</div>
<%@include file="../includes/footer.jsp" %>


















