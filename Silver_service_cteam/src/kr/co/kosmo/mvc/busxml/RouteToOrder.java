package kr.co.kosmo.mvc.busxml;


import java.io.BufferedInputStream;

import java.net.URL;



import java.util.*;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;
import org.springframework.stereotype.Component;

//노선들의 정류장 순서를 XML파싱하는 클라스 
@Component("routeToOrder")
public class RouteToOrder {

	public final static String URL = "http://openapi.tago.go.kr/openapi/service/BusRouteInfoInqireService/getRouteAcctoThrghSttnList";
	public final static String KEY = "QuTvH%2BSPwgls0hKs3vD%2F0vlWAbOwrDm3VG67iaucTPqM4MSe3s7ZOAzoWnF9qCgtuGeeOmwOJfv41FeVK6rnEw%3D%3D";

	public List<Map<String, Object>> insertInfo(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

		for(int i = 210000000; i<=210000200; i++) {
			URL url = new URL(URL + "?ServiceKey=" + KEY + "&cityCode=31050&numOfRows=100&routeId=GGB"+i);

	
			XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
			factory.setNamespaceAware(true);
			XmlPullParser xpp = factory.newPullParser();
			BufferedInputStream bis = new BufferedInputStream(url.openStream());
			xpp.setInput(bis, "utf-8");

			String tag = null;
			int event_type = xpp.getEventType();

			Map<String, Object> tempMap = null;
			while (event_type != XmlPullParser.END_DOCUMENT) {
				if (event_type == XmlPullParser.START_TAG) {
					tag = xpp.getName();
					if (tag.equals("item")) {
						tempMap = new HashMap<String, Object>();
					}
				} else if (event_type == XmlPullParser.TEXT) {
					if (tag.equals("routeid")) {
						tempMap.put("ROUTEID", xpp.getText());
					} else if (tag.equals("nodeord")) {
						tempMap.put("NODEORD", xpp.getText());
					} else if (tag.equals("nodenm")) {
						tempMap.put("NODENAME", xpp.getText());
					} else if (tag.equals("nodeid")) {
						tempMap.put("NODEID", xpp.getText());
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
		}
		return list;
	}

}