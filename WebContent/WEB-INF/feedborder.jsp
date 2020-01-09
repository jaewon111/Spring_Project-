<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간식 </title>
<style>
.font { font-size:20pt; }
.a{ color:red; }
.b{ font:bold 13pt '맑은고딕'; }
</style>
</head>
<body>
	<%
	String src = request.getParameter("src");
	%>
<!-- 0  -->
	<%
	if(src.equals("Maltese Adult") )
	{
	%>


		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed0.jpg" width= 200 height=200 >
					</td>
					<td colspan="2">
							<h2 style="color:red">MALTESE ADULT<br>말티즈 어덜트</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>1.5Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 11개월 부터의 말티즈</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>말티즈</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td>
						<div class="a">아름다운 긴  피모	</div>
						피모 건강<br>
						말티즈는 윤기나는 피모를 유지하기 위해<br>
						상당한 미용이 필요합니다. 이 견종은 또한<br>
						유전적으로 꽃가루와 같은 환경적 피부 알러지가<br>
						잘 발생하는 성향이 있습니다. 로얄캐닌 사료에<br>
						함유된 보리지 오일과 비오틴은 피모의 부드러움과<br>
						윤기를 유지하고 강화하는데 도움이 되며 오메가 3<br>
						지방산 (EPA & DHA)은 피부 염증 감소에 도움이 됩니다. 
					</td>			
					<td  align="center"><img src="./imgs/feed0-2.jpg" width= 300 height=300 ></td>
					<td>
						<div class="a">기호에 맞는 것만 찾는 습성</div>
						까다로운 식성<br>
						특별한 향과 독특한 식감으로 까다로운 식성에 도움을 줍니다.<br><br><br>
						<div class="a">
						실내 생활 중심의 견종</div>
						변의 양과 냄새 감소에 도움<br>
						소화가 매우 높은 성분이 함유 되어 프리바이오틱스와<br>
						 섬유소는 변의 양과 냄새를 줄이는데 도움을 줍니다<br>
					</td>					
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/feed0-3.jpg" width="800" height="700" >
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/feed0-4.jpg" width="800" height="700" >
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>
			</table>
	<%
	}
	%>
<!-- 1  -->	
	<%
	if(src.equals("Shih Tzu Puppy") )
	{
	%>


		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed1-1.jpg" width= 200 height=200 >
					</td>
					<td colspan="2">
							<h2 style="color:red">Shih Tzu Puppy<br>시츄 퍼피</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>1.5Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 10개월 까지의 시츄</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>시츄 퍼피</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="b">건강한 피부 & 피모	</div>
							영야의 조화로 피부장벽을 형성하고 EPA&DHA,비타민A의 영양분공급이 건강한 피부를 유지시켜주고,<br>
							풍부한 보라지 오일함유로 피모도 가꾸어줍니다.
						<div class="b">건강한 소화	</div>
							장내 세균총 균형을 향상시켜 소화건강에 도움을 줍니다
						<div class="b">자연 면역력	</div>
							어린 시츄의 자연면역력 형성에 도움을 줍니다.
						<div class="b">마춤형 사료모양 : 단두종을 위한설계</div>
							단두형 턱을 시츄를 위해서 쉽게 물고 부수어 먹을수 있도록 제작되었습니다.
	    			</td>			
				</tr>
				<tr>
					<td colspan="3" align="center">
					<h2>FAQ</h2>
					<div class="b">
						■ 시츄 주니어 전용사료의 알갱이는 왜 독특한 모양을가지게 되나요?
					</div>
						퍼그,시츄. 불독같이 주둥이가 짧은 단두조은 다른 견종과는 다르게 사요 알갱이를 물고 부수어 먹는데<br>
						별도의 알갱이의 크기와 모양이 필요로 합니다. 시츄주니어 전용사료는 주둥이가 짧은 시츄를 위해서 <br>
						쉽게 물고 부수어 먹을수있는 크기와 모양의 알갱이로 고안되었습니다.<br>
						또한 치석의 발달을 억제하기 위해서 구강위생을 위해 칼슘킬레이터인 sodium Polyhspgate를 첨가하였습니다.<br>
						어린 시츄를 위해 고안된 알갱이 킈와 모양은 천천히 사료 알갱이를 부수어 먹게 하여 소화흢수를 돕고<br>
						급하ㅔ 먹는 것을 예방하는 효과가 있습니다. 
					</td>
				</tr>
 			    <tr>
					<td colspan="3" align="center">
					<h2>성분</h2>
						육분,쌀,옥수수,동물성지방,밀글루텐,사탕무박,동물성유도단백징<br>
						비타민A,비타민D3,비타민E,철,요오드,구리,대두유,프락토올리고당<br>
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>

			</table>
	<%
	}
	%>
<!-- 2  -->
	<%
	if(src.equals("Shih Tzu Adult") )
	{
	%>


		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed2.jpg" width= 200 height=200 >
					</td>
					<td colspan="2">
							<h2 style="color:red">Shih Tzu adult<br>시추 어덜트</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>1.5Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 11개월 부터의 시추</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>시추</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td>
						<div class="a">관리가 필요한 화려한 피모 	</div>
						건강한 피부 & 피모 <br>
						시추 어덜트는 피부 '장벽' 역할을<br>
						지원하며 피부 건강을 유지하고 피모에<br>
						 영양분(EPA & DHA, 비타민 A)을 공급합니다.<br>
						 보리지 오일 성분을 첨가했습니다.  
					</td>			
					<td  align="center"><img src="./imgs/feed2-1.jpg" width= 300 height=300 ></td>
					<td>
						<div class="a">더 나은 구강-치아 위생 </div>
						치아 건강<br>
						칼슘 킬레이트제의 함유로 치석 생성 감소에 도움이 됩니다.<br><br><br>
						<div class="a">실내 생활 중심의 견종</div>
						변의 양과 냄새 감소<br>
						변 냄새와 양 감소에 도움이 됩니다. <br>
					</td>					
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/feed2-2.jpg" width="800" height="700" >
					</td>
				</tr>
				<tr>
					<td colspan="3">
					<h3><font color="red">시추 전용 사료 알갱이 : 독특한 단두견의 턱</font></h3>
						시추는 짧고 넓은 동그란 머리를 가지고 있습니다.<br>
						이런 얼굴 모양에 알맞은 사료는<br>
						시추가 제대로 씹을 수 있도록 도와줍니다. <br>
						시추가 먹이를 쉽게 집어올리고 제대로<br>
						씹을 수 있도록 특별히 디자인 되었습니다. <br>
					</td>
				</tr>
 			    <tr>
					<td colspan="3" align="center">
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>
				
				<tr>
					<td colspan="3">
					<div class="b">
						구성
					</div>
						쌀, 육분(닭, 칠면조, 오리), 동물성 지방(가금류), 밀글루텐, 동물성 유도단백질(닭, 칠면조), 분말셀룰로스, 사탕무박, 혼합광물질류 합제, 어유,<br>
						 대두유, 프락토올리고당, 보리지유, 금잔화 추출물(루테인의 원료), 녹차와 포도 추출물(폴리페놀의 원료), 글루코사민, 뮤코다당단백(콘드로이틴의 원료),<br>
						  비타민A, 비타민D3, 비타민E, 철, 요오드, 구리, 망간, 아연, 셀레늄, 제올라이트, 소르빈산칼륨, 항산화제. 
 					</td>
				</tr>
			</table>
	<%
	}
	%>
<!-- 3  -->
	<%
	if(src.equals("Dachshund Puppy") )
	{
	%>


		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed3-1.jpg" width= 200 height=200 >
					</td>
					<td colspan="2">
							<h2 style="color:red">Dachshund Puppy<br>닥스훈트 퍼피</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>1.5Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 11개월 부터의 닥스훈트</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>닥스훈트 퍼피</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="b">관절 & 뼈 형성</div>
						적절한 칼슘과 인, 그리고 글루코사민과 콘드로이틴 성분이 어린 탁스훈트가 겅간한 관절과 벼를 형성 할수있도록하며<br>
						이상적인 체중유지에 도움을 줍니다.
						<div class="b">건강한 소화	</div>
							장내 세균총 균형을 향상시켜 소화건강에 도움을 줍니다
						<div class="b">자연 면역력	</div>
							어린 시츄의 자연면역력 형성에 도움을 줍니다.
						<div class="b">마춤형 사료모양 : 단두종을 위한설계</div>
							칼슘흡착성분은 칼슘이 치아표면에 침착되는 것을 억제하여 치석 형성을 감소시킵니다.
						<br>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
					<h2>FAQ</h2>
					<div class="b">
						■ 닥스훈트에게 많은 척추질환에 닥스훈트 주니어 전용사료는 어떤 예방 효과가 있나요?
					</div>
						닥스푼트는 낮고 짧은 다리,그리고 긴허리로 인해서 다른 품종보다 척추 질환의 발생율이 높습니다.<br>
						그래서 닥스훈트좋으 과체중 비만을 예방하는것이 척추 질환을 예방하는데 필수적입니다.<br>
						닥스훈트 주니어 전용사료에는 근육량을 유지하면서 이상적인 체형을 만들수있도록성장기에 알맞은 <br>
						지방함량과 체내의 지방을 연소하는데 도움을 주는 성분을 함유하고있습니다. 그리고 항염즘 기능을 <br>
						위하여 EPA, DHA함량을 강화하여 관정 및 피부질환 예방에 도움을 줍니다. 또한 관절을 보호하기위해
						그루코사민, 콘드로이틴이 첨가하였습니다.<br>
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>
 			    <tr>
					<td colspan="3" align="center">
					<h2>성분</h2>
						육분,쌀,옥수수,동물성지방,밀글루텐,사탕무박,동물성유도단백징<br>
						비타민A,비타민D3,비타민E,철,요오드,구리,대두유,프락토올리고당<br>
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>
						
				
			</table>
	<%
	}
	%>
<!-- 4  -->
<%
	if(src.equals("Dachshund Adult1") )
	{
	%>


		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed4.jpg" width= 200 height=200 >
					</td>
					<td colspan="2">
							<h2 style="color:red">Dachshund adult<br>닥스훈트 어덜트</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>1.5Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 11개월 부터의 닥스훈트</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>닥스훈트</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td>
						<div class="a">관절 보호	</div>
						관절 및 뼈 건강에 도움<br>
						키가 작은 닥스훈트는 매우 길지만 단단한 근육질의 몸을 가지고 있습니다.<br>
						다른 견종에 비해 관절이 취약합니다. 닥스훈트 어덜트는 맞춤형 칼슘과 <br>
						인 성분을 함유하고 있어 닥스훈트의 뼈와 관절을 지원합니다.<br>
						또한 이상적인 체중 유지에 도움이 됩니다. 
					</td>			
					<td  align="center"><img src="./imgs/feed4-1.jpg" width= 300 height=300 ></td>
					<td>
						<div class="a">근육량과 이상적인 체중 유지 </div>
						근육량<br>
						닥스훈트의 근육량 유지에 도움이 됩니다. <br><br><br>
						<div class="a">실내 생활 중심의 견종</div>
						변 냄새 감소<br>
						대변량과 냄새 감소에 도움이 됩니다. <br>

					</td>					
				</tr>
				<tr>
					<td colspan="3" align="center">
					<img src="./imgs/feed4-2.jpg" width="800" height="700" >
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="a"><h3>닥스훈트 전용 사료 알갱이 </h3></div>
						닥스훈트는 치아 문제에 쉽게 노출되어<br>
						칼슘 킬레이트제를 포함한 로얄캐닌 닥스훈트<br>
						전용 사료가 치석 생성 감소에 도움이 됩니다.
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>
			</table>
	<%
	}
	%>
<!-- 5  -->
<%
	if(src.equals("Dachshund Adult2") )
	{
	%>


		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed5-1.jpg" width= 200 height=200 >
					</td>
					<td colspan="2">
							<div class="a">
							관절과 뼈 건강 유지에 도움을 주는 닥스훈트 전용 습식사료
							</div>
							<h2 style="color:red">Dachshund Adult<br>닥스훈트 어덜트(습식)</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>1.5Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 10개월 이상의 닥스훈트 어덜트</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>닥스훈트 어덜트(습식)</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="b">근건강에 도움</div>
							닥스훈트의 근육건강에유지에 도움을 줍니다<br>
						<div class="b">기호성 증진에 도움</div>
							닥스훈트의 기호성 만족에 도움을 줍니다
	    			</td>			
				</tr>
 			    <tr>
					<td colspan="3" align="center">
					<h2>성분</h2>
						육분,쌀,옥수수,동물성지방,밀글루텐,사탕무박,동물성유도단백징<br>
						비타민A,비타민D3,비타민E,철,요오드,구리,대두유,프락토올리고당<br>
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>

			</table>
	<%
	}
	%>
<!-- 6  -->
	<%
	if(src.equals("Bichon Frise Adult") )
	{
	%>
		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed6.jpg" width= 200 height=200 >
					</td>
					<td colspan="2">
							<h2 style="color:red">Bichon Frise adult<br>비숑 프리제 어덜트</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>1.5Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 11개월 부터의 비숑 프리제</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>비숑 프리제</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td>
						<div class="a">민감한 요로계</div>
						비숑 프리제는 요로결석이 생기기 쉬운 경향이 있습니다.<br>
						소변의 양이 적고 배뇨는 자주 보는 편이 아니기 때문에 <br>
						소변이 방광에 오랫동안 남아 있게 됩니다.<br>
						최적의 미네랄 성분은 요로계 건강에 도움이 됩니다.<br><br><br>
						<div class="a">이상적인 체중 유지에 도움</div>
						실내 생활을 하는 비숑 프리제의 경우 체중이 증가되기<br>
						쉽습니다. 과체중과 관절 건강을 위해서, 근육량 유지에<br>
						도움이 될 수 있는 식이를 공급해야 합니다.
						
					</td>			
					<td  align="center"><img src="./imgs/feed6-1.jpg" width= 300 height=300 ></td>
					<td>
						<div class="a">취약한 피모와 피부</div>
						피부가 예민한 비숑 프리제는 피모가 지속적으로<br>
						자라기 때문에 정기적인 미용과 특별한 관심이 필요합니다.<br>
						비숑 프리제 어덜트는 '장벽' 역할을 잘 할 수 있도록<br>
						지원하며 피부 건강 유지에 도움을 주고 피모에<br>
						영양분(EPA와 DHA를 포함한 오메가 3 지방산과 비타민 A)을<br>
						공급합니다. 보리지 오일 성분을 강화했습니다.
					</td>					
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/feed6-2.jpg" width="800" height="700" >
					</td>
				</tr>
  			  <tr>
					<td colspan="3">
						<div class="a"><h3>비숑 프리제 전용 사료 알갱이 </h3></div>
						<div class="b">
						비숑 프리제는 치아 질환에 취약하여 사료에 포함된 칼슘 킬레이트제가  치석 생성 감소에 도움을 줍니다
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>
			</table>
	<%
	}
	%>
<!-- 7  -->
	<%
	if(src.equals("French Bulldog Adult") )
	{
	%>
		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed6.jpg" width= 200 height=200 >
					</td>
					<td colspan="2">
							<h2 style="color:red">French Bulldog adult<br>프렌치 불독 어덜트</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>1.5Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 12개월 이상의 프렌치 불독</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>프렌치 불독</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td>
						<div class="a">이상적인 근육량</div>
						L-카르니틴이 첨가된 최적의 단백질 함유로(26%)<br>
						프렌치 불독의 근육량 유지에 도움이 됩니다
					</td>			
					<td  align="center"><img src="./imgs/feed7-1.jpg" width= 300 height=300 ></td>
					<td>
						<div class="a">소화기계 강화</div>
						변 냄새 감소<br>
						소화기 이상과 불쾌한 변 냄새의<br>
						 원인이 되는 장내 발효 감소에 도움이 됩니다.<br><br><br>
					    <div class="a">민감한 피부</div>
						건강한 피모<br>
						특허받은 복합물로 피부 장벽 기능에<br>
						 도움이 되고 EPA+DHA는 영양분으로<br>
						  건강한 피부 유지에 도움이 됩니다
					</td>					
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/feed7-2.jpg" width="800" height="700" >
					</td>
				</tr>
  			  <tr>
					<td colspan="3">
						<div class="a"><h3>프렌치 불독 전용 사료 알갱이 :독특한 단두형 턱</h3></div>
						<div class="b">
						프렌치 불독이 먹이를 쉽게 집어올리고 제대로 씹을 수 있도록 특별하게 디자인 되었습니다. 
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>
			</table>
	<%
	}
	%>
<!-- 8  -->
	<%
	if(src.equals("Poodle Puppy") )
	{
	%>


		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed8-1.jpg" width= 200 height=200 >
					</td>
					<td colspan="2">
							<h2 style="color:red">Poodle Puppy<br>푸들 퍼피</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>1.5Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 10개월 까지의 푸들</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>푸들 퍼피</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td colspan="3">
						<img src="./imgs/feed8-2.jpg" width="800" height="700" >
	    			</td>			
				</tr>
				<tr>
					<td colspan="3">
					<div class="a"><h2>성분</h2></div>
						육분,쌀,옥수수,동물성지방,밀글루텐,사탕무박,동물성유도단백징<br>
						비타민A,비타민D3,비타민E,철,요오드,구리,대두유,프락토올리고당<br>
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>

			</table>
	<%
	}
	%>
<!-- 9  -->
	<%
	if(src.equals("Poodle Adult1") )
	{
	%>
		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed9.jpg" width= 200 height=200 >
					</td>
					<td colspan="2">
							<h2 style="color:red">POODLE ADULT<br>푸들 어덜트</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>1.5Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 11개월 부터의 푸들</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>푸들 어덜트</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td>
						<div class="a">매우 특별한 피모</div>
						피모 건강<br>
						보리지 오일, EPA & DHA, 비오틴 성분이<br>
						피모의 부드러움과 광택을 높이고 자연 피부<br>
						장벽을 강화하여 아름다운 피모와 건강한<br>
						피부를 유지하도록 도와줍니다.<br><br><br>
						
						<div class="a">높은 치석 생성률로 인한 관리가 필요</div>
						치아 건강<br>
						로얄캐닌 푸들 사료는 푸들의 치아를 건강하게<br>
						유지하도록 칼슘 킬레이트 물질을 함유하여<br>
						치석 생성 감소에 도움을 줍니다.
					</td>			
					<td  align="center"><img src="./imgs/feed9-1.jpg" width= 300 height=300 ></td>
					<td>
						<div class="a">독보적인 장수 견종</div>
						건강한 활력 유지<br>
						푸들은 긴 수명으로 유명합니다. 로얄캐닌<br>
						푸들 어덜트 사료는 건강과 활력을 유지하는데<br>
						필요한 영양소를 제공하여 푸들의 노년까지 든든하게 지원합니다.<br><br><br>
					    <div class="a">날씬한 근육질 몸</div>
						근육량<br>
						맞춤형 단백질 성분과<br>
						L-카르니틴으로 활동적인 푸들의<br>
						근육량을 유지하는데 도움을 줍니다.
					</td>					
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/feed9-2.jpg" width="800" height="700" >
					</td>
				</tr>
  			  <tr>
					<td colspan="3">
						<div class="a"><h3>푸들 전용 사료 알갱이 </h3></div>
						<div class="b">
						로얄캐닌 푸들 사료는 푸들의 예민한 코와 입 주변을  특별히 고려하여 만들어졌습니다.<br>
						푸들은 치아 사이 공간이 작고 가위질하듯 씹을 때에는 서로 만나게 됩니다. 로얄캐닌 사료는 독특한 식감과 모양으로 물기 쉽고<br>
						적절한 씹는 습관 형성과 깨끗한 치아 위생 유지를 도와줍니다. 
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>
			</table>
	<%
	}
	%>
<!-- 10 -->
	<%
	if(src.equals("Poodle Adult2") )
	{
	%>


		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed10-1.jpg" width= 200 height=200 >
					</td>
					<td colspan="2">
							<div class="a">
							피모 건강과 근육량 유지에 도움이 되는 푸들 전용 습식 사료
							</div>
							<h2 style="color:red">Poodle Adult<br>푸들 어덜트(습식)</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>1.5Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 11개월 이상의 푸들</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>푸들 어덜트(습식)</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="b">근건강에 도움</div>
							푸들의 근육건강에유지에 도움을 줍니다<br>
						<div class="b">기호성 증진에 도움</div>
							푸들의 기호성 만족에 도움을 줍니다
	    			</td>			
				</tr>
 			    <tr>
					<td colspan="3" align="center">
					<h2>성분</h2>
						육분,쌀,옥수수,동물성지방,밀글루텐,사탕무박,동물성유도단백징<br>
						비타민A,비타민D3,비타민E,철,요오드,구리,대두유,프락토올리고당<br>
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>

			</table>
	<%
	}
	%>
<!-- 11 -->
	<%
	if(src.equals("Miniature Schnauzer Puppy") )
	{
	%>


		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed11.jpg" width= 300 height=300 >
					</td>
					<td colspan="2">
							<div class="a">
							체중유지,소화기 건강 위한 생후 10개월 까지의 슈나우저 전용사료
							</div>
							<h2 style="color:red">Miniature Schnauzer Puppy<br>미니어처 슈나우저 퍼피</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>1.5Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 10개월 까지의 미니어처 슈나우져</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>미니어처 슈나우저</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="b">이상적인 체중</div>
							조화로운 성장과 이상적인 체중을 위하여 지방의 함향을 낮추고  지방을 분해하는데 도움을 주는 L-카르니틴이 첨가되었습니다.
						<div class="b">소화건강</div>
							장내 세균총 균형을향상시켜 소화건강에 도움을 줍니다.
						<div class="b">자연면역력</div>
						어린 미니어처 슈나우져의 자연면역력향상을 도와줍니다.
						<div class="b">맞춤혈 사료모양:치아건강</div>
						칼슘흡착성분은 칼슘이 치아표면에 침착되는 것을 억제하여 치석형서을 감소시킵니다.
						
	    			</td>			
				</tr>
				<tr>
					<td colspan="3" align="center">
					<h2>FAQ</h2>
					<div class="b">
						■ 슈나우져 주니어 전용사료를 급여하면 어떤 장점이 있나요?
					</div>
						슈나우져는 식탐이 강하여 성장하는 기간에 보통보다 체중이 증가할 수있는 위험이 있습니다. 이상적인 성장과<br>				
						비만을 예방하기 위하여 감소된 지방함량과 근육량을 유지하면서 체내에서 지방을 연소시키는데 도움을 주는 L-Carnitine을<br>
						첨가하였습니다. 성장기에 취약한 면역기능의 강화를 위해 장내 면역을 증진시키는 prebiotic와 자연면역을 증진시키는 <br>
						황산화제의 함량을 강화하였습니다. 또한 슈나우져의 섭식습성을 고려하여 쉽게 집고 부수어 먹을수 있도록 어린 슈나우져를<br>
						 위한 알갱이 크기와 모양을 디자인했습니다.
						 
					</td>
				</tr>
 			    <tr>
					<td colspan="3" align="center">
					<h2>성분</h2>
						육분,쌀,옥수수,동물성지방,밀글루텐,사탕무박,동물성유도단백징<br>
						비타민A,비타민D3,비타민E,철,요오드,구리,대두유,프락토올리고당<br>
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>

			</table>
	<%
	}
	%>
<!-- 12 -->
	<%
	if(src.equals("Miniature Schnauzer Adult") )
	{
	%>
		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed12.jpg" width= 300 height=300 >
					</td>
					<td colspan="2">
							<h2 style="color:red">Schnauzer adult<br>슈나우저 어덜트</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>3.0Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 11개월 부터의 슈나우저</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>슈나우저</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td>
						<div class="a">취약한 요로계</div>
						요로 건강<br>
						미니어처 슈나우저는 특히 요로 결석이 잘 생깁니다.<br>
						미니어처 슈나우저 어덜트는 건강한 비뇨기계를 유지하는데<br>
						도움이 됩니다. 또한 소변 희석을 위해 당신의 슈나우저가 <br>
						수분 섭취를 잘 할 수 있도록 해주세요. 
					</td>			
					<td  align="center"><img src="./imgs/feed12-1.jpg" width= 300 height=300 ></td>
					<td>
						<div class="a">독특한 피모</div>
						진한 피모색<br>
						피모의 천연색 유지에 도움이 되는<br>
						특정 아미노산을 적정수준 함유하고 있습니다.<br><br><br>
					    <div class="a">이상적인 체중 유지하기</div>
						이상적인 체중<br>
						미니어처 슈나우저의 이상적인 체중<br>
						 유지에 도움이 됩니다
						  
					</td>					
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/feed12-2.jpg" width="800" height="700" >
					</td>
				</tr>
  			  <tr>
					<td colspan="3">
						<div class="a"><h3>슈나우저 전용 사료 알갱이 </h3></div>
						<div class="b">
						슈나우저는 치아 문제에 쉽게 노출되어 칼슘 킬레이트제를 포함한 로얄캐닌 슈나우저<br>
						전용 사료가 치석 생성 감소에 도움이 됩니다
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="a"><h3>Q & A</h3></div>
						<div class="a">●결석/요로계 건강에 도움을 주는 효과는 어떤 것인가요?</div>
						슈나우저는 소형견 중 결석이 발생할 유병률이 매우 높은 견종입니다. 결석에 도움을 주기 위해서는<br>
						수분을 자주 섭취하여 방광내 포화도를 높이는 것이 중요합니다. 이를 위해 슈나우저 전용사료는 나트륨의<br>
						함량(1%)을 높여 물을 잘 먹지 않는 경우에 갈증을 유발해 수분을 많이 섭취할 수 있도록 했습니다. 나트륨의 <br>
						함량의 경우, 건강한 개체에 해롭지 않습니다. 단 중증도의 신장질환, 심장질환이 있는 경우에는 수의사의 처방<br>
						후에 급여하기를 권장합니다. 
						<div class="a">●급하게 먹는 슈나우저에게 천천히 먹게 할 수 있는 방법이 있나요? </div>
						슈나우저는 식탐이 강하여 사료를 빨리 먹으려 하는 습성이 있습니다. 슈나우저 전용사료는 알갱이 크기와<br>
						재질을 슈나우저에게 알맞게 맞춤 제작하여 슈나우저가 사료를 급하게 먹지 않게 하고 천천히 씹어 먹을 수<br>
						 있도록 도와줍니다 .너무 급하게 먹는 경우는 사료 밥그릇을 바닥이 넓은 것으로 교체하거나 쟁반에 뿌려서 주게 되면 도움이 됩니다. 						
						<div class="a">●피부질환이 있는 경우에 도움이 되나요? </div>
						네 도움이 됩니다.<br>
						피부질환에 관련된 영양소의 비교대상 같이 명시하여 일반사료보다 피부 쪽에 훨씬 도움이 되도록 했습니다.
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>
			</table>
	<%
	}
	%>
<!-- 13 -->
<%
	if(src.equals("Yorkshire Terrier Puppy") )
	{
	%>


		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed13.jpg" width= 200 height=200 >
					</td>
					<td colspan="2">
							<div class="a">
							체중유지,소화기 건강 위한 생후 10개월 까지의 슈나우저 전용사료
							</div>
							<h2 style="color:red">Yorkshire Terrier Puppy<br>요크셔테리어 퍼피</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>1.5Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 10개월 까지의 요크셔테리어</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>요크셔테리어 퍼피</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="b">피모건강</div>
							풍부한 오메가3 지방산과 오메가6 지방산, 보라지 오일과 비오틴 함유로요크셔테리어 의 긴 피모를 건강하게 유지시켜줍니다
						<div class="b">소화건강</div>
							장내 세균총 균형을 향상시켜 소화 건가에 도움을 줍니다.
						<div class="b">자연면역력</div>
							어린 요크셔테리어의 자연 면역력 형성에 도움을 줍니다.
						<div class="b">맞춤형 사료모양 : 치아 건강</div>
							칼슘흡착성분은 칼슘이 치아 표면에 침착되는 것을 억제하여 치석형성을 감소시킵니다.		
					</td>			
				</tr>
				<tr>
					<td colspan="3" align="center">
					<h2>FAQ</h2>
					<div class="b">
						■ 요크셔테리어에 피모쪽에 어떤 성분이 도움을 주나요?
					</div>
						요크셔테리어는 매우 길고 부드러운 hair가 undercoat없이 계속 자라납니다.<br>
						이러한 피모가 아름답게 유지되기 위해서는 황을 포함한 아미노산인 시스틴, 메티오닌뿐만 아니라 아연,<br>
						구리,철 그리고 망간 같은 미량 원소가 필수적입니다. 요크셔테리어  주니어 전용사료에는 특히 이와 같은 황을 포함한<br>
						아미노산과 미량원소가 풍부하게 함유되어 길고 은빛으로 빛나는 헤어를 아름답게 유지하는데 도움을줍니다. 
					</td>
				</tr>
 			    <tr>
					<td colspan="3" align="center">
					<h2>성분</h2>
						육분,쌀,옥수수,동물성지방,밀글루텐,사탕무박,동물성유도단백징<br>
						비타민A,비타민D3,비타민E,철,요오드,구리,대두유,프락토올리고당<br>
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>

			</table>
	<%
	}
	%>
<!-- 14 -->
	<%
	if(src.equals("Yorkshire Terrier Adult1") )
	{
	%>
		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed14.jpg" width= 300 height=300 >
					</td>
					<td colspan="2">
							<h2 style="color:red">Yorkshire Terrier adult<br>요크셔테리어 어덜트</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>건식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>3.0Kg</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 11개월 부터의 요크셔테리어</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>요크셔테리어 어덜트</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td>
						<div class="a">빛나는 아름다운 피모 </div>
						피모 건강<br>
						요크셔테리어는 털갈이를 하지 않는 견종 가운데 하나이며<br>
						피모가 계속해서 자랍니다.(한 달에 1~1.5센치미터) 이 견종의<br>
						길고 부드러운 피모는 특별한 관심을 필요로 합니다. 이 전용<br>
						사료는 피모 건강 유지에 도움이 됩니다. 오메가 3 <br>
						지방산(EPA & DHA), 오메가 6 지방산, 보리지 <br>
						오일과 비오틴 성분이 함유되었습니다. 
					</td>			
					<td  align="center"><img src="./imgs/feed14-1.jpg" width= 400 height=500 ></td>
					<td>
						<div class="a">예민한 입맛을 만족</div>
						까다로운 식성<br>
						탁월한 풍미로 까다롭기로 유명한<br>
						요크셔테리어의 입맛에 도움을 줍니다.<br><br><br>
					    <div class="a">건강한 활력 유지에 도움</div>
						요크셔테리어가 건강하게 지내는데<br>
						필요한 영양소를 제공합니다<br><br><br>
						<div class="a">치아 위생 도모</div>
						치석이 쉽게 생기는 요크셔테리어를 위해<br>
						칼슘 킬레이트제를 포함하여 치석 생성을<br>
						감소에 도움을 줍니다.
						  
					</td>					
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/feed14-2.jpg" width="800" height="700" >
					</td>
				</tr>
  			  <tr>
					<td colspan="3">
						<div class="a"><h3>요크셔테리어 전용 사료 알갱이 </h3></div>
						<div class="b">
						치아 문제에 쉽게 노출되기 쉬운 요크셔테리어를 위한 로얄캐닌 요크셔테리어 전용사료는<br>
						칼슘 킬레이트제를 포함하고 있어치석 생성 감소에 도움이 됩니다. 
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>
			</table>
	<%
	}
	%>
<!-- 15 -->	
	<%
	if(src.equals("Yorkshire Terrier Adult2") )
	{
	%>


		<div class="product_name"  align="left">
			<table  border="0">
				<tr>
					<td>
						<img src="./imgs/feed15-1.jpg" width= 300 height=350 >
					</td>
					<td colspan="2">
							<div class="a">
							피모 건강과 건강 유지에 도움을 주는 요크셔테리어 전용 습식사료
							</div>
							<h2 style="color:red">Yorkshire Terrier Adult<br>요크셔테리어 어덜트(습식)</h2>

							<table class="font">
								<tr>
									<td width= "130px">종류	  </td><td>습식</td>
								</tr>
		   						<tr>
									<td>포장단위 </td><td>85g</td>
								</tr>
		   						<tr>
									<td>섭취대상 </td><td>생후 10개월 이상의 요크셔테리어</td>
								</tr>
							</table>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<div >
							<h2>요크셔테리어 어덜트(습식)</h2><dr>
							<d style="font-size:15pt">특징 & 맞춤 영양 정보</d>
						</div>
		      		</td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="b">기호성 증진에 도움	</div>
							요크셔테리어의 기호성 만족에 도움을 줍니다.
						<div class="b">건강한 변상태에 도움</div>
							소화기능을 도와주어 건강한 변상태에 도움을 줍니다.
	    			</td>			
				</tr>
 			    <tr>
					<td colspan="3" align="center">
					<h2>성분</h2>
						육분,쌀,옥수수,동물성지방,밀글루텐,사탕무박,동물성유도단백징<br>
						비타민A,비타민D3,비타민E,철,요오드,구리,대두유,프락토올리고당<br>
						<img src="./imgs/free.jpg" width="800" height="150" >
					</td>
				</tr>

			</table>
	<%
	}
	%>
</body>
</html>