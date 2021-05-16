/**
 * 
 */

$(function() {
	dateInput();
	calendar();	
});


var count = 1;
var date = new Date();
var currentYear;
var currentMonth;


//매달 1일 요일
var firstDay;

//매달 마지막 날짜
var lastDay;

//현재 년월일 표시
function dateInput(data,btnDate) {
	console.log('full',btnDate);
	if(data == 'P' || data == 'N') {
		date = new Date(btnDate);
	}else {
		date = new Date();
	}

	currentYear = date.getFullYear();
	currentMonth = date.getMonth()+1;
	
	$("#currentYear").val(currentYear+'년');
	$("#currentMonth").val(currentMonth+'월');	
}

function calendar() {
	
	$("#body_table tbody").children().remove();

	firstDay = new Date(date.getFullYear(),date.getMonth(),1).getDay();
	lastDay = new Date(currentYear, currentMonth, 0).getDate();

	for (let i = 0; i < firstDay + lastDay; i++) {

		//매주 tr 생성
		if (i == 0 || i % 7 == 0) {
			var tr = $("<tr>");
		}
		//전체 td 생성
		let td = $("<td>");

		//td 공란채우기
		if (i < firstDay) {
			td.addClass('tdEmpty_' + i);
		} else {

			//날짜 표출  input
			let dayInput = $("<input>");
			dayInput.attr({
				'class': 'inputDay',
				'type': 'text',
				'value': count,
				/*'readonly': 'true'*/
			});

			//전체 일정 개수 표출 input
			let planCountInput = $("<input>");
			planCountInput.attr({
				'class': 'planCountInput_' + count,
				'type': 'text',
				'value': '★',
				'readonly': 'true',				
				'data-target':'.modal'
			});

			let ul = $("<ul>");
			ul.addClass('list-group');
			let list1 = $("<li>");
			let list2 = $("<li>");
			let list3 = $("<li>");
			let list4 = $("<li>");

			list1.addClass('list-group-item').html('테스트1');
			list2.addClass('list-group-item').html('테스트2');
			list3.addClass('list-group-item').html('테스트3');
			list4.addClass('list-group-item').html('테스트4');


			ul.append(list1).append(list2).append(list3).append(list4);
			td.addClass('tdDay_' + count)
			td.append(dayInput);
			td.append(planCountInput);
			td.append(ul);
			count++;
			
			if(count > lastDay) {
				count = 1;
			}
		}

		tr.append(td);
		$("#body_table tbody").append(tr);

	}

}

$("#prevBtn").on('click', function() {	
	
	if(currentMonth == 1){
		currentMonth = 13;
		currentYear -= 1;
	}
	let fullDate = currentYear +','+ (currentMonth-1);
	
	
	dateInput('P',fullDate);
	calendar();
});

$("#nextBtn").on('click', function() {	
	console.log('???');
	if(currentMonth == 12){
		currentMonth = 0;
		currentYear += 1;
	}
	let fullDate = currentYear+','+(currentMonth+1);
	
	
	dateInput('P',fullDate);
	calendar();
});

//일정등록 modal
$(document).on('click','.inputDay',function(e){
		$(".modal").modal('show');	
		var target = $(e.target);
		console.log(target.val());
})

