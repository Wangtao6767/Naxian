package com.naxian.common;



import com.naxian.util.RandUtil;

import java.net.URLEncoder;


/**
 * 短信API发送
 * @author JiangPengFei
 * @version $Id: javaHttpNewApiDemo, v 0.1 2019/1/23 11:42 JiangPengFei Exp $$
 */
public class GetMsgCode {

	/**
	 * 短信发送(验证码通知，会员营销)
	 * 接口文档地址：http://www.miaodiyun.com/doc/https_sms.html
	 */
	public String execute(String perTel) throws Exception{
		StringBuilder sb = new StringBuilder();
		sb.append("accountSid").append("=").append(Config.ACCOUNT_SID);
		sb.append("&to").append("=").append(perTel);
		//获得随机验证码
		String code = URLEncoder.encode(RandUtil.getRandNum(),"UTF-8");
		sb.append("&param").append("=").append(code);//把后台随机生成的验证码发送到秒滴云，并发送信息
		sb.append("&templateid").append("=").append("233163");
//		sb.append("&smsContent").append("=").append( URLEncoder.encode("【秒嘀科技】您的验证码为123456，该验证码5分钟内有效。请勿泄漏于他人。","UTF-8"));
		String body = sb.toString() + HttpUtil.createCommonParam(Config.ACCOUNT_SID, Config.AUTH_TOKEN);
		String result = HttpUtil.post(Config.BASE_URL, body);
		System.out.println(result);
		return code;
	}


}
