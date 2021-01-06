		$(document).ready(function(){
			
		    $('#delete').click(function(){
		    	var result = confirm('정말 삭제하시겠습니까?'); 

		    	if(result){ 

			    	location.replace('index');
			    	alert("삭제되었습니다");
			    	} 

			    else{  }

			    });			
			
			
			var birth2 = $('.u_birth2').val()
			


            var birth3 = birth2.slice(0,1);
            var gender = $('#gender');
            if(birth3 == '1' || birth3 == '3')
            	gender.text('남자');
            else if(birth3 == '2' || birth3 == '4')
            	gender.text('여자');


				var birth1 = $('.u_birth').val();
				var age=0;
             

                  var yy=birth1.substr(0,2);    //생년
                  var mm=birth1.substr(2,2);    //생월
                  var dd=birth1.substr(4,2);    //생일

	            
			      //생년 계산(80세 이전까지 적용하므로 첫자가 0~2이 아니면 1900년대/ 아니면 2000년대)
					today=new Date();
                  
					var i=birth1.substr(0,1);
					
					cc=(i>2) ? '19':'20';
					
					var birthyear=cc+yy;
					var m=today.getMonth()+1-6; 
					
					m=(m<0)?m+12:m; 
					
					var d=today.getDate();
					var age=today.getFullYear()-birthyear;
					
					
			  		var age_val = $('#age');
						age_val.text(age);	
			
			
			genRowspan("first");
		});

		function genRowspan(className){
			$("." + className).each(function() {
				var rows = $("." + className + ":contains('" + $(this).text() + "')");
				if (rows.length > 1) {
					rows.eq(0).attr("rowspan", rows.length);
					rows.not(":eq(0)").remove();
				}
			});
		}
		