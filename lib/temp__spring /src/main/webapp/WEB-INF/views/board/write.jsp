<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="../includes/header.jsp" %>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board Register</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Register</div>
			<div class="panel-body">
				<form role="form" action="create" method="post">
					<div class="form-group">
						<label>Title</label> <input type="text" class="form-control" name="title">
					</div>
					<div class="form-group">
						<label>Description</label>
						<textarea class="form-control" rows="5" name="content"></textarea>
					</div>
					<div class="form-group">
						<label>Writer</label><input type="text" class="form-control" name="userId" />
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
					<button type="reset" class="btn btn-secondary">Reset</button>
				</form>
			</div>
		</div>
	</div>
</div>
<%@include file="../includes/footer.jsp" %>


















