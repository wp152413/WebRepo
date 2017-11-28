package org.dimigo.servlet;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.sun.javafx.geom.transform.Translate2D;


/**
 * Servlet implementation class TranslationServlet
 */
@WebServlet("/translation2")
public class TranslationServlet2 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

    /**   
     * @see HttpServlet#HttpServlet()
     */    
    public TranslationServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String clientId = "z22M2cqc9WBAF_gugyNn";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "KvkD0VTgsQ";//애플리케이션 클라이언트 시크릿값";
        try {
        	
        	request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset-utf-8");
        	String InputData=request.getParameter("InputData");
    		System.out.println(InputData);
        	
            String text = URLEncoder.encode(InputData, "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/papago/n2mt";
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("POST");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            // post request
            String postParams = "source=en&target=ko&text=" + text;
            con.setDoOutput(true);
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.writeBytes(postParams);
            wr.flush();
            wr.close();
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response1 = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response1.append(inputLine);
            }
            br.close();
            System.out.println(parseJson(response1.toString()));
            
            
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out=response.getWriter();
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>번역결과</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>"+parseJson(response1.toString())+"</h1>");
            out.println("</body></html>");
            out.close();
            
           
        } catch (Exception e) {
            System.out.println(e);
        }
	}
	
	
	 @SuppressWarnings("unchecked")
     private static String parseJson(String json) throws Exception {
     Map<String, Object> map = new ObjectMapper().readValue(json, Map.class);
     Map<String, Object> message = (Map<String, Object>) map.get("message");
     Map<String, String> result = (Map<String, String>) message.get("result");
     
     String translatedTextResult=result.get("translatedText");
	 return translatedTextResult;
	 
	 }
     
	

}
