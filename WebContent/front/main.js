
function airlineSearch(id) {
    if (id == 1) {
        document.getElementById("LoadedPage").innerHTML = document.getElementById("round").innerHTML;
    } else if (id == 2) {
        document.getElementById("LoadedPage").innerHTML = document.getElementById("one").innerHTML;
   
}}
var popover = new bootstrap.Popover(document.querySelector('.popover-dismiss'), {
  trigger: 'focus'
})

var offcanvasElementList = [].slice.call(document.querySelectorAll('.offcanvas'))
var offcanvasList = offcanvasElementList.map(function (offcanvasEl) {
  return new bootstrap.Offcanvas(offcanvasEl)
})

function ow_valid_check() {
   const frm = document.forms[0]
    const dep_port = frm.dep_port
    const arr_port = frm.arr_port
    const dep_time = frm.dep_time
    const seat_count = frm.seat_count
    let isValid = true

    
    if(dep_port.value=='') {
        alert('출발지를 선택하세요.')
        dep_port.focus()
        isValid=false
    }

    if(arr_port.value=='')
    {
        alert('도착지를 선택하세요.')
        arr_port.focus()
        isValid=false
    }

   if(dep_time.value=='')
    {
        alert('출발 날짜를 선택하세요.')
        dep_time.focus()
        isValid=false
    }

    if((seat_count.value > 9 || seat_count.value < 1) || seat_count == '') {
        alert('좌석 수를 입력하세요. (최소 1, 최대 9)')
        seat_count.focus()
        isValid=false
    }

    if(isValid) {   
        frm.action='ow_resConfirm.jsp'
    } 
}

function rd_valid_check() {
   const frm = document.forms[0]
    const dep_port = frm.dep_port
    const arr_port = frm.arr_port
    const dep_time = frm.dep_time
	const arr_time = frm.arr_time
    const seat_count = frm.seat_count
    let isValid = true

    
    if(dep_port.value=='') {
        alert('출발지를 선택하세요.')
        dep_port.focus()
        isValid=false
    }

    if(arr_port.value=='')
    {
        alert('도착지를 선택하세요.')
        arr_port.focus()
        isValid=false
    }

   if(dep_time.value=='')
    {
        alert('출발 날짜를 선택하세요.')
        dep_time.focus()
        isValid=false
    }

   if(arr_time.value=='')
    {
        alert('돌아오는 날짜를 선택하세요.')
        arr_time.focus()
        isValid=false
    }

    if((seat_count.value > 9 || seat_count.value < 1) || seat_count == '') {
        alert('좌석 수를 입력하세요. (최소 1, 최대 9)')
        seat_count.focus()
        isValid=false
    }

    if(isValid) {   
        frm.action='rd_resConfirm.jsp'
    } 
}
