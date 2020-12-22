package kr.co.kosmo.mvc.busxml;

import org.springframework.stereotype.Component;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

import java.io.BufferedInputStream;
import java.net.URL;
import java.util.*;

//실시간 버스 정보 xml 가져오기
@Component("busStopParser")
public class BusStopParser {
    public final static String KEY = "QuTvH%2BSPwgls0hKs3vD%2F0vlWAbOwrDm3VG67iaucTPqM4MSe3s7ZOAzoWnF9qCgtuGeeOmwOJfv41FeVK6rnEw%3D%3D";
     
    public List<Map<String,Object>> apiParserNodeRealTime(Map<String,Object> map) throws Exception {
     String apiUrl = "http://openapi.tago.go.kr/openapi/service/ArvlInfoInqireService/getSttnAcctoArvlPrearngeInfoList";
        URL url = new URL(apiUrl+"?ServiceKey="+KEY+"&nodeId="+map.get("NODEID")+"&cityCode=31050");
  
        XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
        factory.setNamespaceAware(true);
        XmlPullParser xpp = factory.newPullParser();
        BufferedInputStream bis = new BufferedInputStream(url.openStream());
        xpp.setInput(bis, "utf-8");
         
        String tag = null;
        int event_type = xpp.getEventType();
         
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String,Object> tempMap = null;
        while (event_type != XmlPullParser.END_DOCUMENT) {
            if (event_type == XmlPullParser.START_TAG) {
                tag = xpp.getName();
                if(tag.equals("item")) {
                 tempMap=new HashMap<String,Object>();
                }
            } else if (event_type == XmlPullParser.TEXT) {
                if(tag.equals("nodeid")){
                    tempMap.put("NODEID", xpp.getText());
                }
                else if(tag.equals("routeid")){
                 tempMap.put("ROUTEID", xpp.getText());
                }
                else if(tag.equals("routeno")) {
                 tempMap.put("ROUTENO", xpp.getText());
                }
                else if(tag.equals("vehicletp")) {
                 tempMap.put("VEHICLETP", xpp.getText());
                }
                else if(tag.equals("arrprevstationcnt")) {
                 tempMap.put("ARRPREV", xpp.getText());
                }
                else if(tag.equals("arrtime")) {
                 tempMap.put("ARRTIME", xpp.getText());
                }
            } else if (event_type == XmlPullParser.END_TAG) {
                tag = xpp.getName();
                if (tag.equals("item")) {
                    list.add(tempMap);
                }
            }
  
            event_type = xpp.next();
        }
        bis.close();
        return list;
    }
}