<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="../includes/header.jsp" %>
<script type="text/javascript" src="/resources/js/reply.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var form = $("#operForm");

		$("button[data-oper='modify']").on("click", function() {
			form.submit();
		});
		
		$("button[data-oper='list']").on("click", function() {
			form.find("input[name='bno']").remove();
			form.attr("action", "/board/list");
			form.submit();
		});
		
		var bnoValue = "${board.bno}";
		var replyUL = $(".chat");
		
		showList(1);
		
		function showList(page) {
			replyService.getList({bno:bnoValue, page:page||1}
				, function(replyCnt, list) {
					console.log("replyCnt:" + replyCnt);
					console.log("list:" + list);
					var str= "";
					if (list == null || list.length == 0) {
						replyUL.html("");
						return;
					}
					for (var i=0, len=list.length||0; i<len; i++) {
						str += "<li class='left clearfix' data-rno='" + list[i].rno + "'>";
						str += "<div><div class='header'><strong class='primary-font'>";
						str += list[i].userNm + "</strong>";
						str += "<small class='pull-right text-muted'>";
						str += replyService.displayTime(list[i].replyDate) + "</small></div>";
						str += "<p>" + list[i].reply + "</p></div></li>";
					}
					replyUL.html(str);
					showReplyPage(replyCnt);
				}
			);
		}
		
		var modal = $("#replyModal")
		var modalInputReply = modal.find("input[name='reply']");
		var modalInputReplyer = modal.find("input[name='userId']");
		var modalInputReplyDate = modal.find("input[name='replyDate']");
		
		var modalModBtn = $("#modalModBtn");
		var modalRemoveBtn = $("#modalRemoveBtn");
		var modalRegisterBtn = $("#modalRegisterBtn");
		
		$("#addReplyBtn").on("click", function(e) {
			modal.find("input").val("");
			modalInputReplyDate.closest("div").hide();
			modal.find("button[id != 'modalCloseBtn']").hide();
			
			modalRegisterBtn.show();
			
			modal.modal("show");
		});
		
		modalRegisterBtn.on("click", function(e) {
			var reply = {
				reply:modalInputReply.val()
				, userId:modalInputReplyer.val()
				, bno:bnoValue
			};
			replyService.add(reply, function(result) {
				alert(result);
				
				modal.find("input").val("");
				modal.modal("hide");
				
				showList(1);
			});
		});
		
		$(".chat").on("click", "li", function(e) {
			var rno = $(this).data("rno");
			replyService.get(rno, function(result) {
				modalInputReply.val(result.reply);
				modalInputReplyer.val(result.userNm);
				modalInputReplyDate.val(replyService.displayTime(result.replyDate)).attr("readonly", "readonly");
				modal.data("rno", result.rno);
				
				modal.find("button[id != 'modalCloseBtn']").hide();
				modalModBtn.show();
				modalRemoveBtn.show();
				
				modal.modal("show");
			});
			
			modalModBtn.on("click", function(e) {
				var reply = {rno:modal.data("rno"), reply:modalInputReply.val()};
				
				replyService.modify(reply, function(result) {
					alert(result);
					modal.modal("hide");
					showList(1);
				});
			});
		});
		
		modalRemoveBtn.on("click", function(e) {
			var rno = modal.data("rno");
			
			replyService.remove(rno, function(result) {
				alert(result);
				modal.modal("hide");
				showList(1);
			});
		});
		
		//댓글관련
		var pageNum = 1;
		var replyPageFooter = $(".panel-footer");
		
		function showReplyPage(replyCnt) {
			var endNum = Math.ceil(pageNum / 10.0) * 10;
			var startNum = endNum - 9;
			
			var prev = startNum != 1;
			var next = false;
			
			if (endNum * 10 >= replyCnt) {
				endNum = Math.ceil(replyCnt/10.0);
			}
			if (endNum * 10 < replyCnt) {
				next = true;
			}
			
			var str = "<ul class='pagination pull-right'>";
			
			if (prev) {
				str += "<li class='page-item'><a class='page-link' ";
				str += "href='" + (startNum - 1) + "'>Previous</a></li>";
			}
			
			for (var i=startNum; i<=endNum; i++) {
				var active = pageNum == i ? "active" : "";
				str += "<li class='page-item " + active + "'><a class='page-link' ";
				str += "href='" + i + "'>" + i + "</a></li>";
			}
			
			if (next) {
				str += "<li class='page-item'><a class='page-link' ";
				str += "href='" + (endNum + 1) + "'>Next</a></li>";
			}
			
			str += "</ul>";
			
			replyPageFooter.html(str);
		}
		
//		replyService.add(
//			{reply:"JS Test", userId:"user01", bno:bnoValue}
//			, function(result) {
//				alert("Result:" + result);
//			} 
//		)

//		replyService.getList({bno:bnoValue, page:1}
//			, function(list) {
//				for (var i=0, len=list.length||0; i<len; i++) {
//					console.log(list[i]);
//				}
//			}
//		);

//		replyService.remove(21
//			, function(result) {
//				console.log(result);
//				if (result === "success") {
//					alert("Removed");
//				}
//			}, function(err) {
//				alert("error");
//			}
//		);

//		replyService.modify(
//			{rno:2, reply:"Modified Reply..."}
//			, function(result) {
//				alert("수정완료...")
//			}, function(err) {
//				console.log(err);
//				alert("수정실패");
//			}
//		);

//		replyService.get(10, function(result) {
//			console.log(result);
//		});
	});
</script>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board Read</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Read</div>
			<div class="panel-body">
				<form id="operForm" role="form" action="edit" method="get">
					<div class="form-group">
						<input type="hidden" name="bno" value="${board.bno}" />
						<input type="hidden" name="pageNum" value="${cri.pageNum}" />
						<input type="hidden" name="amount" value="${cri.amount}" />
						<input type="hidden" name="type" value="${cri.type}" />
						<input type="hidden" name="keyword" value="${cri.keyword}" />
						<label>Title</label>
						<p>${board.title}</p>
					</div>
					<div class="form-group">
						<label>Description</label>
						<p>${board.content}
					</div>
					<div class="form-group">
						<label>Writer</label>
						<p>${board.userNm}</p>
					</div>
					<button type="button" data-oper="modify" class="btn btn-primary">Edit</button>
					<button type="button" data-oper="list" class="btn btn-secondary">List</button>
				</form>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-comments fa-fw"></i> Reply
				<button id="addReplyBtn" class="btn btn-primary btn-xs pull-right">New Reply</button>
			</div>
			<div class="panel-body">
				<ul class="chat">
					<li class="left clearfix" data-rno="12">
						<div>
							<div class="header">
								<strong class="primary-font">user01</strong>
								<small class="pull-right text-muted">2024-12-06 13:18</small>
							</div>
							<p>Good job!</p>
						</div>
					</li>
				</ul>
			</div>
			<div class="panel-footer">
			
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="replyModal" tabindex="-1" role="dialog"
	aria-labelledby="replyModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" ara-hidden="true">&times;</button>
				<h4 class="modal-title" id="replyModalLabel">REPLY MODAL</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>Reply</label>
					<input type="text" class="form-control" name="reply" value="New Reply!!!!" />
				</div>
				<div class="form-group">
					<label>Replyer</label>
					<input type="text" class="form-control" name="userId" value="user01" />
				</div>
				<div class="form-group">
					<label>Reply Date</label>
					<input type="text" class="form-control" name="replyDate" />
				</div>
			</div>
			<div class="modal-footer">
				<button id="modalModBtn" type="button" class="btn btn-warning">Modify</button>
				<button id="modalRemoveBtn" type="button" class="btn btn-danger">Remove</button>
				<button id="modalCloseBtn" type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button id="modalRegisterBtn" type="button" class="btn btn-primary" data-dismiss="modal">Register</button>
			</div>
		</div>
	</div>
</div>
<%@include file="../includes/footer.jsp" %>


















