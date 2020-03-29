<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk//IGNORE"></meta>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/exampleResume.css">
        <title>简历详情</title>


    <style>
    html,body,p,ul,table,tr,td{margin:0;padding:0}
    a{text-decoration:none}
    li{list-style:none}
    img{border:0 none}
    body{font-family:'Microsoft YaHei';font-size:14px}
    div,span,a{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;-o-box-sizing:border-box;-ms-box-sizing:border-box;box-sizing:border-box}
    table{border-collapse:collapse;border-spacing:0;border:0 none;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;-ms-box-sizing:border-box;-o-box-sizing:border-box;box-sizing:border-box}
    td{text-align:left}
    .resume_clearfix{display:block;overflow:hidden;clear:both}
    .all_wrap{width:693px}
    .logo_divide{border-bottom:1px solid #b9b9b9}
    .at{white-space:nowrap;text-overflow:ellipsis;overflow:hidden}
    .page{width:693px;margin:0 auto;padding:3px;background-color:#fff}
    .gray{color:#919191 !important}
    .l_green{color:#6d8194 !important}
    .blue{color:#4567af !important}
    .yellow{color:#fae001 !important}
    .y_green{color:#a4b049 !important}
    .s_blue{color:#00a0e9 !important}
    .orange{color:#f39800 !important}
    .resume_box{border:15px solid #efefef}
    .company{font-size:12px;font-weight:bold}
    .infomation_l{width:266px;vertical-align:top;background-color:#2d4e5c}
    .top{margin:26px 0px 18px 0px}
    .picture{text-align:center}
    .name{height:40px;line-height:40px;font-size:18px;color:#fff;text-align:center}
    .posi{width:265px;line-height:14px;text-align:center;padding:0 10px}
    .mes_l{margin-left:20px}
    .title{height:30px;font-weight:bold;color:#d8dcde}
    .border_b2{margin-left:20px;border-bottom:1px solid #91a875}
    .per_list{line-height:35px;font-size:12px;color:#d8dcde}
    .title_iconl{*width:12px;padding-right:8px}
    .title_icon1 img{margin-top:5px}
    .b_border{border-top:1px solid #233c47}
    .dir{vertical-align:top}
    .limit1{width:180px}
    .wid{width:225px}
    .limit2{width:204px}
    .con{position:relative;width:176px;height:16px;*height:15px;top:2px;border:1px solid #b9b9b9}
    .rank{position:absolute;top:0;left:0;width:70%;height:16px;line-height:16px;text-indent:6px;top:0px;left:0px;background-color:#b9b9b9}
    .email{max-width:146px;word-wrap:break-word}
    .infomation_r{width:386px;vertical-align:top;padding-left:12px;background-color:#efefef}
    .mes_r{margin-left:26px;padding:10px 0 16px 0}
    .title_icon{*width:17px;padding-right:8px;border:0 none}
    .title_icon img{margin-top:0px}
    .title_txt{width:340px;height:28px;line-height:28px;font-weight:bold;color:#2d4e5c;text-align:left;border-bottom:1px solid #96a6ad}
    .title_txt1{width:235px;height:27px;line-height:27px;font-weight:bold;color:#d8dcde;text-align:left}
    .mes_boxl{margin:10px 0 22px 0}
    .mes_detail{margin:10px 0px 16px 0px}
    .mes_detail_a{margin-bottom:10px}
    .mes_r .info_list{line-height:24px;font-size:12px;color:#000;overflow:hidden}
    .mes_r .limit{width:290px}
    .mes_r .edu{width:42px;line-height:15px;}
    .mes_r .edu_a{width:100px;line-height:15px;}
    .mes_r .reu{max-width:144px;line-height:15px;}
    .mes_r .reu_a{max-width:190px;vertical-align:top;padding-right:20px}
    .mes_r .in{line-height:22px;font-size:12px;color:#919191}
    .mes_r .exp{width:180px}
    .mes_r .pofi{width:106px;text-align:right;vertical-align:top}
    .mes_r .edu1{width:206px;margin-right:20px}
    .mes_r .edu2{width:220px;padding-right:20px}
    .mes_r .edu2 span{display:block;width:220px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
    .infomation_l2{width:276px;vertical-align:top;background-color:#466820}
    .title_txt_b{width:340px;height:12px;line-height:3px;font-weight:bold;color:#466820;text-align:left;border-bottom:1px solid #a2b68c}
    .mes_l
    .mer_right{line-height:22px;font-size:12px;color:#919191;padding-left:25px;}
</style>
</head>

    <body>
      <div xmlns="" class="page">
          <div class="all_wrap">
              <table class="resume_box">
                  <tbody>
                  <tr>
                        <td class="infomation_l2">
                         <div class="top">
                            <p class="picture"><img src="${pageContext.request.contextPath}/images/touxiang.png" alt="简历照片" width="140" height="148"></p>
                            <p class="name">${writeVo.persons.perName}</p>
                            <p class="posi"><a class="yellow" >******</a></p>
                         </div>
                        <table class="border_b2"><tbody><tr class="title">
                        <td class="title_iconl" valign="middle">
                             <img src="${pageContext.request.contextPath}/images/icon7_type1.png" width="12" height="13">
                        </td>
                        <td class="wid"><span>个人信息</span>
                        </td>
                  </tr>

                  </tbody>
              </table>

        <div class="mes_boxl">

            <table class="mes_l"><tbody>
            <tr class="per_list">
                <td><span>性别：</span></td>
                <td><span class="y_green">${writeVo.persons.perGender == 1 ? "男":"女"}</span></td>
            </tr>
            <tr class="per_list">
                <td><span>生日：</span></td>
                <td><span class="y_green"><fmt:formatDate value="${writeVo.persons.perBirth}" pattern="yyyy年MM月dd日"/></span></td>
            </tr>
            </tbody></table>

            <table class="mes_l"><tbody><tr class="per_list">
                <td class="dir"><span>电话：</span></td>
                <td class="limit2"><span class="y_green">${writeVo.persons.perTel}</span></td>
            </tr></tbody></table>


            <table class="mes_l"><tbody><tr class="per_list">
                <td class="dir"><span>E-mail：</span></td>
                <td class="limit1"><span class="y_green">${writeVo.persons.perEmail}</span></td>
            </tr></tbody></table>

        </div>

        <table class="border_b2"><tbody><tr class="title">
            <td class="title_iconl" valign="middle"><img src="${pageContext.request.contextPath}/images/icon8_type1.png" width="12" height="13"></td>
            <td class="wid"><span>技能技巧</span></td>
        </tr></tbody></table>
        <div class="mes_boxl"><table class="mes_l"><tbody>

        <tr class="per_list">
            <td><span>行业：</span></td>
            <td class="limit1"><span class="y_green">${writeVo.workexperience.workIndustrytype}</span></td>
        </tr>
        <tr class="per_list">
            <td class="dir"><span>职位：</span></td>
            <td class="limit1"><a class="y_green" >${writeVo.workexperience.workSubfunction}</a></td>
        </tr>

        <tr class="per_list">
            <td class="dir"><span>获得证书：</span></td>
            <td class="limit1"><span class="y_green">${writeVo.education.getCertificate}</span></td>
        </tr>

        </tbody></table></div>
        <table class="border_b2"><tbody><tr class="title">
            <td class="title_iconl" valign="middle"><img src="${pageContext.request.contextPath}/images/top_logo.png" width="12" height="13"></td>
            <td class="wid"><span>语言能力</span></td>
        </tr></tbody></table>
        <div class="mes_boxl"><table class="mes_l"><tbody>


        <tr class="per_list">
            <td><span>语言证书：</span></td>
            <td class="limit1"><span class="yellow">${writeVo.education.languageSkills}</span></td>
        </tr>

        </tbody></table></div>
    </td>

    <td class="infomation_r">

        <table class="per_title"><tbody><tr>
            <td class="title_icon" valign="middle"><img src="${pageContext.request.contextPath}/images/icon2_type2.png" alt="最高学历" width="17" height="16"></td>
            <td width="340"><p class="title_txt_b">最高学历</p></td>
        </tr></tbody></table>

        <div class="mes_r">

            <table><tbody><tr class="info_list">
                <td class="edu"><span>学历：</span></td>
                <td class="edu_a"><span class="gray">${writeVo.education.eduDegree}</span></td>
                <td class="edu"><span>专业：</span></td>
                <td class="reu"><span class="gray">${writeVo.education.eduSubMajor}</span></td>
            </tr></tbody></table>

            <table><tbody><tr class="info_list">
                <td class="edu"><span>状态：</span></td>
                <td class="gray limit"><span>${writeVo.resumes.personStatus == 1 ? "已有工作":"求职"}</span></td>
            </tr></tbody></table>



        </div>

        <table class="per_title"><tbody><tr>
            <td class="title_icon" valign="middle"><img src="${pageContext.request.contextPath}/images/icon1_type2.png" alt="教育经历" width="17" height="16"></td>
            <td width="340"><p class="title_txt_b">教育经历</p></td>
        </tr></tbody></table>
        <table><tbody ><tr class="info_list"style="height: 50px">
            <td class="edu"style="font-size: 11px"><span>学校：</span></td>
            <td class="edu_a"style="font-size: 11px"><span class="gray">${writeVo.education.eduSchool}</span></td>
            <td class="edu"style="font-size: 11px"><span>入学时间：</span></td>
            <td class="reu"style="font-size: 11px"><span class="gray"><fmt:formatDate value="${writeVo.education.eduTimeStart}" pattern="yyyy-MM-dd"/></span></td>
            <td class="edu"style="font-size: 11px"><span>离校时间：</span></td>
            <td class="reu"style="font-size: 11px"><span class="gray"><fmt:formatDate value="${writeVo.education.eduTimeEnd}" pattern="yyyy-MM-dd"/></span></td>
        </tr></tbody></table>


        <table class="per_title"><tbody><tr>
            <td class="title_icon" valign="middle"><img src="${pageContext.request.contextPath}/images/icon3_type2.png" alt="个人经历" width="17" height="16"></td>
            <td width="340"><p class="title_txt_b">社会经验</p></td>
        </tr></tbody></table>
        <div class="mes_r">

            <table><tbody><tr class="info_list">
                <td class="edu"><span>公司：</span></td>
                <td class="exp"><span class="gray">${writeVo.workexperience.workCompany}</span></td>
                <td class="edu"><span>职位：</span></td>
                <td class="pofi"><span class="gray">${writeVo.workexperience.workSubfunction}</span></td>

            </tr></tbody></table>

            <table><tbody>
            <tr class="info_list"><td><span>工作内容：</span></td></tr>

            <td>
                <p style="text-indent:2em;font:400 12px Simsun;line-height:18px;"><a class="gray" >${writeVo.workexperience.workIntroduction}</a></p>

            </td>
            <!--注释:"text-indent:2em"能使文字空两个字符-->
            </tbody></table>

            <table><tbody><tr class="info_list">
                <td class="pofi"><span class="gray" style="margin-left: 200px"><fmt:formatDate value="${writeVo.workexperience.workTimeStart}" pattern="yyyy-MM-dd"/>-<fmt:formatDate value="${writeVo.workexperience.workTimeEnd}" pattern="yyyy-MM-dd"/></span></td>
            </tr></tbody></table>

        </div>

        <table class="per_title"><tbody><tr>
            <td class="title_icon" valign="middle"><img src="${pageContext.request.contextPath}/images/icon3_type2.png" alt="校园经历" width="17" height="16"></td>
            <td width="340"><p class="title_txt_b">校园经历</p></td>
        </tr></tbody></table>
        <div class="mes_r">



            <table><tbody>
            <tr class="info_list"><td><span>获得荣誉：</span></td></tr>

            <td>
                <p style="text-indent:2em;font:400 12px Simsun;line-height:18px;"><a class="gray" >${writeVo.education.getCertificate}</a></p>

            </td>
            <!--注释:"text-indent:2em"能使文字空两个字符-->
            </tbody></table>


            <table><tbody>
            <tr class="info_list"><td><span>专业描述：</span></td></tr>

            <td>
                <p style="text-indent:2em;font:400 12px Simsun;line-height:18px;"><a class="gray" >${writeVo.education.majorIntroduction}</a></p>

            </td>
            <!--注释:"text-indent:2em"能使文字空两个字符-->
            </tbody></table>
        </div>

        <table class="per_title"><tbody><tr>
            <td class="title_icon" valign="middle"><img src="${pageContext.request.contextPath}/images/icon4_type2.png" alt="自我评价" width="17" height="16"></td>
            <td width="340"><p class="title_txt_b">自我评价</p></td>
        </tr></tbody></table>

        <div class="mes_r">
            <p class="in">${writeVo.resumes.introductionSelf}</p>

        </div>

</tr></tbody></table></div></div>
    </body>
</html>




