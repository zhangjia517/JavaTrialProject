package cn.fostudio.btc;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
 
import org.json.JSONException;
import org.json.JSONObject;

public class GetBTCJson {
 
  private String readAll(Reader rd) throws IOException {
    StringBuilder sb = new StringBuilder();
    int cp;
    while ((cp = rd.read()) != -1) {
      sb.append((char) cp);
    }
    return sb.toString();
  }
 
  public JSONObject readJsonFromUrl(String url) throws IOException, JSONException {
    InputStream is = new URL(url).openStream();
    try {
      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
      String jsonText = readAll(rd);
      JSONObject json = new JSONObject(jsonText);
      return json;
    } finally {
      is.close();
    }
  }
 
//  public static void main(String[] args) throws IOException, JSONException {
//      //这里调用百度的ip定位api服务 详见 http://api.map.baidu.com/lbsapi/cloud/ip-location-api.htm
////    JSONObject json = readJsonFromUrl("http://api.map.baidu.com/location/ip?ak=F454f8a5efe5e577997931cc01de3974&ip=42.121.252.58");
////    System.out.println(json.toString());
////    System.out.println(((JSONObject) json.get("content")).get("address"));
//	  GetBTCJson gbj = new GetBTCJson();
//	  System.out.println(gbj.getLast()+" 比特币交易网最新成交价");
//  }
  
  public String getLast() throws IOException, JSONException 
  {
	  JSONObject json = readJsonFromUrl("https://api.btctrade.com/api/ticker?coin=btc");
	  return json.get("last").toString();
  }
}