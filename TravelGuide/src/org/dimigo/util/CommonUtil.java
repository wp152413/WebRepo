package org.dimigo.util;import java.rmi.activation.ActivationInstantiator;

public class CommonUtil {
	
	public static boolean isEmpty(String s){
		return s==null ||"".equals(s.trim());
	}
	
	public static void main(String[] args) {
		String uri="/login.do";
		
		//login을 추출하기
		String actionName=uri.substring(uri.lastIndexOf("/")+1); //endIndex생략 login.do
		actionName =actionName.substring(0,actionName.indexOf("."));
		System.out.println("actionName :" +actionName);
	}
}
