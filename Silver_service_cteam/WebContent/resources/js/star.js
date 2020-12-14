



$(".star").on('click',function(){
	   var idx = $(this).index();
	   $(".star").removeClass("on");
	     for(var i=0; i<=idx; i++){
	        $(".star").eq(i).addClass("on");
	   }
	 });
$('#contentText').keyup(function (e){
    var content = $(this).val();       
    $('#counter').val(300-content.length);

    if(content.length > 300) {
    $(this).val($(this).val().substring(0, 300));
    }
    });
var $setRows = $('#setRows');

$setRows.submit(function (e) {
  e.preventDefault();
  var rowPerPage = $('[name="rowPerPage"]').val() * 1;// 1 을  곱하여 문자열을 숫자형로 변환

//    console.log(typeof rowPerPage);

  var zeroWarning = 'Sorry, but we cat\'t display "0" rows page. + \nPlease try again.'
  if (!rowPerPage) {
    alert(zeroWarning);
    return;
  }
  $('#nav').remove();
  var $products = $('#products');

  $products.after('<div id="nav">');


  var $tr = $($products).find('tbody tr');
  var rowTotals = $tr.length;
//  console.log(rowTotals);

  var pageTotal = Math.ceil(rowTotals/ rowPerPage);
  var i = 0;

  for (; i < pageTotal; i++) {
    $('<a href="#"></a>')
        .attr('rel', i)
        .html(i + 1)
        .appendTo('#nav');
  }

  $tr.addClass('off-screen')
      .slice(0, rowPerPage)
      .removeClass('off-screen');

  var $pagingLink = $('#nav a');
  $pagingLink.on('click', function (evt) {
    evt.preventDefault();
    var $this = $(this);
    if ($this.hasClass('active')) {
      return;
    }
    $pagingLink.removeClass('active');
    $this.addClass('active');

    // 0 => 0(0*4), 4(0*4+4)
    // 1 => 4(1*4), 8(1*4+4)
    // 2 => 8(2*4), 12(2*4+4)
    // 시작 행 = 페이지 번호 * 페이지당 행수
    // 끝 행 = 시작 행 + 페이지당 행수

    var currPage = $this.attr('rel');
    var startItem = currPage * rowPerPage;
    var endItem = startItem + rowPerPage;

    $tr.css('opacity', '0.0')
        .addClass('off-screen')
        .slice(startItem, endItem)
        .removeClass('off-screen')
        .animate({opacity: 1}, 300);

  });

  $pagingLink.filter(':first').addClass('active');
  

});


$setRows.submit();
// 근무지역
function view_modal() {
	$(".bg_modal").show();
	$(".form_contract").show();
	$(".area_result").html("");
}
$(document).ready(function() {
	$("#area2_search").change(function() { areaTextInput("2"); });
	$("#area5_search").change(function() { areaTextInput("5"); });
	$("#area7_search").change(function() { areaTextInput("7"); });
});
function areaTextInput(n) {
	if ($("#area" + n + "_search").val() == "그외") {
		$("#area" + n + "_search_text").show();
	} else {
		$("#area" + n + "_search_text").hide();
	}
}
function close_modal() {
	var area1 = $("#sido_header").val();
	var area2 = $("#gugun_header").val();

	if (area2) {
		var area_result = area1 + " " + area2;
		$(".area_result2").html("");
		$(".area_result2").append(area_result);
	} else {
		var area_result = area1 + " " + "전체";
		$(".area_result2").html("");
		$(".area_result2").append(area_result);
	}
}

var dup_area2 = new Array();
var dup_area2_code = new Array();

$(function() {
	$(".sido_area_1").on("click", function() {
		// 타지역 선택시 선택값 모두 초기화
		$(".area_result2").html("");
		$("#gugun_header").val();
		$("#gugun_code_header").val("");
		dup_area2 = [];
		dup_area2_code = [];
		$(".area_result2").text($(this).text() + " " + "전체");

		$(".sido_area_all").removeClass("on");
		$(".sido_area_1").removeClass("on");
		$(this).addClass("on");

		// 선택값 가져오기
		var w_area1 = $(this).text();
		var sido_code = $(this).data("val");

		$("#sido_header").val(w_area1);
		$("#sido_code_header").val(sido_code);

		$.ajax({
			type:"POST",
			url:"/ajax/address.gugun.process.php",
			data:"w_area1=" + w_area1,
			dataType:"json",
			success: function(data) {
				var txt = "";
				txt += "<div class='gugun_area_1' id='gugun_area1_0' onclick='gugun_change_top(0)'>전체</div>";
				$.each(data, function(k, v) {
					k += 1;
					txt += "<div class='gugun_area_1' id='gugun_area1_" + k + "' onclick='gugun_change_top(" + k + ")'>" + v + "</div>";
				});

				$(".gugun_1").html("");
				$(".gugun_1").append(txt);

				$("#gugun_area1_0").addClass("on");
			}
		});
	});

	$(".sido_area_all").on("click", function() {
		// 타지역 선택시 선택값 모두 초기화
		$(".area_result2").html("전체");
		$(".gugun").html("");

		$("#gugun_header").val("");
		$("#gugun_code_header").val("");

		$("#sido_header").val("");
		$("#sido_code_header").val("");

		$(".sido_area_all").addClass("on");
		$(".sido_area_1").removeClass("on");
	});
});

function gugun_change_top(num) {
	var w_area1 = $("#sido_header").val();
	var w_area2 = $("#gugun_area1_" + num).text();
	if (num == 0) {
		$(".gugun_area_1").removeClass("on");
		$("#gugun_area1_0").addClass("on");
		dup_area2 = [];
		dup_area2_code = [];
		$("#gugun_header").val("전체");
		$("#gugun_code_header").val("");
	} else {
		console.log(num);
		if ($("#gugun_area1_" + num).hasClass("on") != false) {
			$("#gugun_area1_" + num).removeClass("on");
			dup_area2.splice(dup_area2.indexOf(w_area2), 1);
			search_code_pop(w_area1, w_area2);
		} else {
			$("#gugun_area1_" + num).addClass("on");
			$("#gugun_area1_0").removeClass("on");
			dup_area2.push(w_area2);
			search_code_input(w_area1, w_area2);
		}
		$("#gugun_header").val(dup_area2);
	}

	if (w_area2) {
		if (w_area2 == "전체") {
			var area_result = w_area1 + " " + w_area2;
		} else {
			var area_result = w_area1 + " " + dup_area2;
		}

		$(".area_result2").html("");
		$(".area_result2").append(area_result);
	}

	$("#locate").hide();
	$("#locate_select").show();
}

// 코드값 찾아서 배열에 넣는 함수
function search_code_input(w_area1, w_area2) {
	$.ajax({
		type:"POST",
		url:"/ajax/address.dong.process.php",
		data:"mode=search_code&w_area1=" + w_area1 + "&w_area2=" + w_area2,
		dataType:"json",
		success: function(data) {
			$.each(data, function(k, v) {
				dup_area2_code.push(v);
			});
			$("#gugun_code").val(dup_area2_code);
		}
	});
}

// 배열에서 코드값 찾아서 빼는 함수
function search_code_pop(w_area1, w_area2) {
	$.ajax({
		type:"POST",
		url:"/ajax/address.dong.process.php",
		data:"mode=search_code&w_area1=" + w_area1 + "&w_area2=" + w_area2,
		dataType:"json",
		success: function(data) {
			$.each(data, function(k, v) {
				dup_area2_code.splice(dup_area2_code.indexOf(v), 1);
			});

			$("#gugun_code").val(dup_area2_code);
		}
	});
}
// 현재시간 소스
 
 function start_time() {
    var now = new Date();
    var s = now.getFullYear()+"년 " + (now.getMonth()+1)+"월 "+ now.getDate()+" 일 "+
            now.getHours()+" 시 " + now.getMinutes()+" 분 "+now.getSeconds() +" 초"; 
    document.getElementById("start_time").innerHTML=s;
}

 function end_time() {
	    var now = new Date();
	    var s = now.getFullYear()+"년 " + (now.getMonth()+1)+"월 "+ now.getDate()+" 일 "+
	            now.getHours()+" 시 " + now.getMinutes()+" 분 "+now.getSeconds() +" 초"; 
	    document.getElementById("end_time").innerHTML=s;
	}

 
 // 달력 표시ss
 