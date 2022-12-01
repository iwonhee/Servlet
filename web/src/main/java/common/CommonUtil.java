package common;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;

public class CommonUtil {
	
	static public String requestAPI(String apiURL) {
		try {
		      URL url = new URL(apiURL);
		      HttpURLConnection con = (HttpURLConnection)url.openConnection();
		      con.setRequestMethod("GET");
		      int responseCode = con.getResponseCode();
		      BufferedReader br;
		      System.out.print("responseCode="+responseCode);
		      if(responseCode==200) { // 정상 호출
		        br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
		      } else {  // 에러 발생
		        br = new BufferedReader(new InputStreamReader(con.getErrorStream(), "utf-8"));
		      }
		      String inputLine;
		      StringBuffer res = new StringBuffer();
		      while ((inputLine = br.readLine()) != null) {
		        res.append(inputLine);
		      }
		      br.close();
		      if(responseCode==200) {
		        System.out.print(res.toString());
		      }
		      apiURL = res.toString();
		    } catch (Exception e) {
		      System.out.println(e);
		    }
		return apiURL;
	}
	//메소드 오버로딩
	static public String requestAPI(String apiURL, String property) {
		try {
		      URL url = new URL(apiURL);
		      HttpURLConnection con = (HttpURLConnection)url.openConnection();
		      con.setRequestMethod("GET");
		      //추가 코드 
		      con.setRequestProperty("Authorization", property);
		      int responseCode = con.getResponseCode();
		      BufferedReader br;
		      System.out.print("responseCode="+responseCode);
		      if(responseCode==200) { // 정상 호출
		        br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
		      } else {  // 에러 발생
		        br = new BufferedReader(new InputStreamReader(con.getErrorStream(), "utf-8"));
		      }
		      String inputLine;
		      StringBuffer res = new StringBuffer();
		      while ((inputLine = br.readLine()) != null) {
		        res.append(inputLine);
		      }
		      br.close();
		      if(responseCode==200) {
		        System.out.print(res.toString());
		      }
		      System.out.println();
		      apiURL = res.toString();
		    } catch (Exception e) {
		      System.out.println(e);
		    }
		return apiURL;
	}
	
	static public String appUrl(HttpServletRequest request) {
		// URL - http://localhost/web/naverlogin.mb
		String url = request.getRequestURL().toString();
		// servletPath - /naverlogin.mb
		String path = request.getServletPath();
		// http://localhost/web
		return url.replace(path, "");
	}
}
