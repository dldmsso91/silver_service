package kr.co.kosmo.mvc.busxml;

import java.io.BufferedInputStream;
import java.net.URL;



import java.util.*;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;
import org.springframework.stereotype.Component;

//정류장 정보를 XML를 파싱하는 클래스 
@Component("nodeInfo")
public class NodeInfo {

	//정류장의 정보를 가져올 수 있는 API URL로 cityCode와 numOfRows를 통해 지역 선택과 가져올 정류장 갯수를 설정하고  해당 정보들을 저장할 List를 선언
	public String URL = "http://openapi.tago.go.kr/openapi/service/BusSttnInfoInqireService/getSttnNoList";
	public String KEY = "QuTvH%2BSPwgls0hKs3vD%2F0vlWAbOwrDm3VG67iaucTPqM4MSe3s7ZOAzoWnF9qCgtuGeeOmwOJfv41FeVK6rnEw%3D%3D";

	public List<Map<String, Object>> insertInfo(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

		URL url = new URL(URL + "?ServiceKey=" + KEY + "&cityCode=31050&numOfRows=1400");

		
		//XML 구성의 페이지를 파싱하기 위해 필요한 변수를 선언하는 과정이다.
		XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
		factory.setNamespaceAware(true);
		XmlPullParser xpp = factory.newPullParser();
		BufferedInputStream bis = new BufferedInputStream(url.openStream());
		xpp.setInput(bis, "utf-8");

		String tag = null;
		
		//해당 부분이 파싱하는 과정으로 event_type 변수를 통해 위 그림의 XML파일의 시작과 종료, 
		//태그의 시작과 종료, 태그의 Text값을 구분하고 태그의 텍스트값을 가져와 비교하고 Map에 저장한 뒤 위에서
		//선언한 List에 저장하고 해당 XML을 모두 파싱한 뒤 정류장 정보값들이 들어있는 List를 리턴(정류소ID, 이름, 번호, 경도, 위도 값)
		int event_type = xpp.getEventType();

		Map<String, Object> tempMap = null; //임시 배열 생성
		while (event_type != XmlPullParser.END_DOCUMENT) {//문서의 끝
			if (event_type == XmlPullParser.START_TAG) { //태그의 시작을 예)<data>
				tag = xpp.getName();
				if (tag.equals("item")) {
					tempMap = new HashMap<String, Object>(); //임시 배열에 Tag값을 저장
				}
			} else if (event_type == XmlPullParser.TEXT) {//테그의 시작과 끝사이에서 나타난다 예)<data> 여기서 이벤트 발생 </data>
				if (tag.equals("nodeid")) {
					tempMap.put("NODEID", xpp.getText());
				} else if (tag.equals("nodenm")) {
					tempMap.put("NODENAME", xpp.getText());
				} else if (tag.equals("nodeno")) {
					tempMap.put("NODENO", xpp.getText());
				} else if (tag.equals("gpslati")) {
					tempMap.put("GPSLATI", Double.parseDouble(xpp.getText()));
				} else if (tag.equals("gpslong")) {
					tempMap.put("GPSLONG", Double.parseDouble(xpp.getText()));
				}
			} else if (event_type == XmlPullParser.END_TAG) {//태그의 끝을 예)</data>
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
