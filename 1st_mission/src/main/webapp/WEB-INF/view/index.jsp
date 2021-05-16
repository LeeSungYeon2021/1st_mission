<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css" href="/resources/css/index.css">

<%@ include file="/WEB-INF/view/common/header.jsp"%>
<section>
	<div class="container">

		<table id="header_tbl">
			<thead>
				<tr>
					<th>

						<button type="button" id="prevBtn">
							<i class="fa fa-angle-left fa-2x"></i>
						</button> <input type="text" id="currentYear" readonly> <input
						type="text" id="currentMonth" readonly>
						<button type="button" id="nextBtn">
							<i class="fa fa-angle-right fa-2x"></i>
						</button>

					</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<th><span>전체일정(xx)</span></th>
				</tr>
			</tbody>
		</table>

		<table class="table table-bordered" id="body_table">
			<thead>
				<tr>
					<td style="color: red;">일</td>
					<td>월</td>
					<td>화</td>
					<td>수</td>
					<td>목</td>
					<td>금</td>
					<td style="color: skyblue;">토</td>
				</tr>
			</thead>

			<tbody>

			</tbody>
		</table>



		<!-- 일정 modal -->
		<div class="modal" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">일정 등록</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">

						<div>
							<input class="form-conrol" id="plan-title" type="text"
								placeholder="일정 제목을 입력해주세요"> <br /> <br />
						</div>
						<div>
							<textarea></textarea>
						</div>
						<div>
							<input type="checkbox">							
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary">등록</button>
					</div>
				</div>
			</div>
		</div>




		<!-- 컨테이너 -->
	</div>
</section>

<%@ include file="/WEB-INF/view/common/footer.jsp"%>
<script src="/resources/js/index.js"></script>