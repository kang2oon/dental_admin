<!--#include file="inc/header.aspx"-->
	
	<!-- Page Content -->
	<div id="page-content-wrapper">
		<div class="container-fluid">
			<h2>출납관리</h2>
			
			<div class="mgtop_low">
				<ul class="nav nav-tabs" id="cashier">
				  <li class="active"><a href="#income">수입</a></li>
				  <li><a href="#outgoings">지출</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="income">
						<div class="panel panel-default mgtop_vlow">
						  <div class="panel-body">
							<div class="row">
								<div class="col-xs-6"><input type="date" /></div>
								<div class="col-xs-6 text-right">
									<button class="btn btn-success btn-sm"><i class="ion-log-in"></i> 엑셀 가져오기</button> <button class="btn btn-success btn-sm"><i class="ion-log-out"></i> 엑셀 내보내기</button>
								</div>
							</div>
						  </div>
						</div>
						<div class="table-responsive">
							<table class="table table-bordered table-cash">
								<thead>
								<tr>
									<th rowspan="3">NO</th>
									<th rowspan="3">차트번호</th>
									<th rowspan="3">환자이름</th>
									<th rowspan="3">총금액</th>
									<th colspan="6">보험/의료급여</th>
									<th colspan="6">비보험</th>
									<th colspan="2" rowspan="2">자진발급</th>
									<th rowspan="3">건수미수금</th>
									<th rowspan="3">총미수금</th>
								</tr>	
								<tr>
									<th colspan="2">카드</th>
									<th colspan="2">현금</th>
									<th colspan="2">현영</th>
									<th colspan="2">카드</th>
									<th colspan="2">현금</th>
									<th colspan="2">현영</th>
								</tr>
								<tr>
									<th>과세</th>
									<th>면세</th>
									<th>과세</th>
									<th>면세</th>
									<th>과세</th>
									<th>면세</th>
									<th>과세</th>
									<th>면세</th>
									<th>과세</th>
									<th>면세</th>
									<th>과세</th>
									<th>면세</th>
									<th>과세</th>
									<th>면세</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>1</td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
								</tr>
								</tbody>
							</table>
						</div>
						<div class="mgtop_low text-center">
							<button class="btn btn-primary btn-sm" id="add_income"><i class="ion-plus"></i> 입력라인 추가</button> <button class="btn btn-success btn-sm"><i class="ion-checkmark"></i> 저장</button>
						</div>
					</div>
					<div class="tab-pane" id="outgoings">
						<div class="panel panel-default mgtop_vlow">
						  <div class="panel-body">
							<div class="row">
								<div class="col-xs-6"><input type="date" /></div>
								<div class="col-xs-6 text-right">
									<button class="btn btn-success btn-sm"><i class="ion-log-in"></i> 엑셀 가져오기</button> <button class="btn btn-success btn-sm"><i class="ion-log-out"></i> 엑셀 내보내기</button>
								</div>
							</div>
						  </div>
						</div>
						<div class="table-responsive">
							<table class="table table-bordered table-cash">
								<thead>
								<tr>
									<th rowspan="2">NO</th>
									<th rowspan="2">지출계정</th>
									<th colspan="4">지출금액</th>
									<th rowspan="2">총금액</th>
									<th rowspan="2">메모</th>
								</tr>	
								<tr>
									<th>카드</th>
									<th>현금</th>
									<th>현영</th>
									<th>이체</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>1</td>
									<td><label><input type="radio" name="account" />주요</label> <label><input type="radio" name="account" />기타</label> <select><option>복리후생비</option></select></td>
									<td><input type="text" /></td>
									<td><input type="text" /></td>
									<td><input type="text" /></td>
									<td><input type="text" /></td>
									<td><input type="text" /></td>
									<td><input type="text" style="width:300px;"/></td>
								</tr>
								</tbody>
							</table>
						</div>
						<div class="mgtop_low text-center">
							<button class="btn btn-primary btn-sm" id="add_outgoing"><i class="ion-plus"></i> 입력라인 추가</button> <button class="btn btn-success btn-sm"><i class="ion-checkmark"></i> 저장</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<!--#include file="inc/footer.aspx"-->