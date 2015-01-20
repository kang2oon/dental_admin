<!--#include file="inc/header.aspx"-->
	
	<!-- Page Content -->
	<div id="page-content-wrapper">
		<div class="container-fluid">
			<h2>예약현황</h2>
			
			<div class="mgtop_vlow">
				<div id="calendar"></div>
			</div>
			<div class="row mgtop_vlow">
				<div class="col-xs-12 text-right">
					<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#creat_reservation"><i class="ion-calendar"></i> 예약등록</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="creat_reservation" tabindex="-1" role="dialog" aria-labelledby="예약등록" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title">예약등록</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-xs-12">
							<table class="table table-bordered table-reg">
								<colgroup>
									<col width="15%"/>
									<col width="35%"/>
									<col width="15%"/>
									<col width="35%"/>
								</colgroup>
								<tbody>
								<tr>
									<th>이름</th>
									<td><input type="text" /></td>
									<th>차트번호</th>
									<td><input type="text" /> <button class="btn btn-success btn-xs">검색</button></td>
								</tr>
								<tr>
									<th>예약일시</th>
									<td><input type="date" /></td>
									<th>예약시간</th>
									<td><select><option>09시</option><option>09시30분</option><option>10시</option><option>10시30분</option></select></td>
								</tr>
								</tbody>
							</table>
							<div class="mgtop_vlow text-center">
								<button class="btn btn-success btn-sm"><i class="ion-checkmark-round"></i> 예약등록</button> <button class="btn btn-danger btn-sm" data-dismiss="modal" aria-hidden="true"><i class="ion-close-round"></i> 취소</button>
							</div>
						</div>
					</div>
							
				</div>
			</div>
		</div>
	</div>
	
<!--#include file="inc/footer.aspx"-->