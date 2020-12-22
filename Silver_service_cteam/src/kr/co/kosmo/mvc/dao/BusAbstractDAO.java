package kr.co.kosmo.mvc.dao;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;


/*sqlSessionTemplate를 사용할 DAO
개발할 때 조금 더 편하게 로그를 남기기위해 insert, delete, update, select 메서드들을 재정의
하여 각 비즈니스 로직을 담당할 DAO를 생성하여 지금 만든 DAO를 상속. 
지금 만든 DAO는 Factory 패턴화 시킨 것으로 비즈니스 로직을 모듈화*/

public class BusAbstractDAO {
	protected Log log = LogFactory.getLog(BusAbstractDAO.class);
    
	//SqlSessionTemplate를 선언하고 Autowired Annotaion을 통해서
	//xml에 선언했던 의존관계를 자동으로 주입한다.
    @Autowired
    private SqlSessionTemplate sqlSession;
      
    protected void printQueryId(String queryId) {
        if(log.isDebugEnabled()){
            log.debug("\t QueryId  \t:  " + queryId);
        }
    }
      
    public Object insert(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.insert(queryId, params);
    }
      
    public Object update(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.update(queryId, params);
    }
      
    public Object delete(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.delete(queryId, params);
    }
      
    public Object selectOne(String queryId){
        printQueryId(queryId);
        return sqlSession.selectOne(queryId);
    }
      
    public Object selectOne(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.selectOne(queryId, params);
    }
      
    @SuppressWarnings("rawtypes")
    public List selectList(String queryId){
        printQueryId(queryId);
        return sqlSession.selectList(queryId);
    }
      
    @SuppressWarnings("rawtypes")
    public List selectList(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.selectList(queryId,params);
    }
}

