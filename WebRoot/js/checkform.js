/**
 * Created by Administrator on 2016/3/26.
 */
function check(){
    var fm = document.getElementById('register_info');
    if (fm.nickname.value == ''){
        alert('请输入昵称！');
        fm.nickname.focus();
        return false;
    }
    if (fm.password.value.length < 6 || fm.password.value.length > 12){
        alert('密码的长度应为6-12位。你现在输入了' + fm.password.value.length + '位。');
        fm.password.focus();
        return false;
    }
    if (fm.confirm_pass.value != fm.password.value){
        alert('两次输入的密码不一致！请重新输入');
        fm.confirm_pass.focus();
        return false;
    }
    if (fm.mobile.value.length != 11){
        alert('请输入有效的手机号！');
        fm.mobile.focus();
        return false;
    }
    if (fm.email.value == ''){
        alert('请输入有效的邮箱！');
        fm.email.focus;
        return false;
    }
    return true;
}