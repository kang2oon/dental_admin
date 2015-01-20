<!--#include file="inc/header.aspx"-->
	
	<!-- Page Content -->
	<div id="page-content-wrapper">
		<div class="container-fluid">
			<h2>진료내역</h2>
			
			<div class="table-responsive mgtop_vlow">
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
						<td><strong>홍길동</strong></td>
						<th>차트번호</th>
						<td>1234</td>
					</tr>
					<tr>
						<th>휴대폰</th>
						<td>010-1234-5678</td>
						<th>진료구분</th>
						<td>임플란트</td>
					</tr>
					<tr>
						<th>진료일</th>
						<td>2014-12-19 13:10</td>
						<th>다음 진료예정일</th>
						<td>2014-12-19 13:15</td>
					</tr>
					<tr><td colspan="4"></td></tr>
					<tr>
						<th>진료내용</th>
						<td colspan="3">
							이현석님의 도움으로 임플란트 수술이 성공적으로 이루어졌습니다.
							<br/><br/>
							앞전에도 말씀드렸다시피 관리소홀로 치아가 많이 발치되었습니다.
							<br/><br/>
							임플란트는 수술도 중요하지만 앞으로의 관리가 매우 중요합니다.
							<br/><br/>
							저희 임플란트 평생관리시스템을 적극적으로 참여하시어 오랫동안 건강한 치아를 유지하시기 바랍니다.
							<br/><br/>
							앞으로 관리방법과 칫솔질 방법 등 자세히 알려드릴테니 잘 지켜주시기 바랍니다.
						</td>
					</tr>
					<tr>
						<th>진료사진</th>
						<td colspan="3">
							<img src="http://placehold.it/400x300&text=photo1" alt="진료사진"/>
							<img src="http://placehold.it/400x300&text=photo2" alt="진료사진"/>
						</td>
					</tr>
					</tbody>
				</table>
			</div>
			<div class="row">
				<div class="col-xs-12 text-center">
					<button class="btn btn-success btn-sm"><i class="ion-edit"></i> 진료내역 수정</button> <button class="btn btn-danger btn-sm" onclick="javascript:history.back();"><i class="ion-navicon-round"></i> 목록</button>
				</div>
			</div>
		</div>
	</div>
	
<!--#include file="inc/footer.aspx"-->