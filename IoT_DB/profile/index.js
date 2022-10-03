
function hello(){

    alert("환영합니다.")

}

function check(){
    let j_id = $("input[name='join_id']").val();
    alert(j_id);

    $.ajax({
        type : "POST",
        url : "http://127.0.0.1:5500/check",
        data : {join_id : j_id},
        success : function(res){
            alert('성공!');
            alert(res);
        },
        error : function(res){
            alert('실패!');
            alert(res);
        }
        })
    
    }

// check라는 경로로 id를 보내서
// 만약, 중복이라면
// '중복입니다' alert
// 중복이 아니라면,
// '사용가능한 ID입니다.' alert