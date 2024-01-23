package com.tera.common.jdbc.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 * ORACLE OJDBC 테스트 실행 파일 
 *                      ┏-----<JDBC>-----┓
 *                      ┃ ┏-----------┓┃┏-----------┓
 *                  ┏--╋-┫Oracle JDBC┣╋┫Oracle DBMS┃
 *                  ┃  ┃ ┃Driver     ┃┃┖-----------┚
 *                  ┃  ┃ ┖-----------┚┃
 *┏--------------┓┃  ┃ ┏-----------┓┃┏-----------┓
 *┃ 어플리케이션 ┣╋--╋-┫MySQL JDBC ┣╋┫MySQL DBMS ┃
 *┖--------------┚┃  ┃ ┃Driver     ┃┃┖-----------┚
 *                  ┃  ┃ ┖-----------┚┃
 *                  ┃  ┃ ┏-----------┓┃┏-----------┓
 *                  ┖--╋-┫Sybase JDBC┣╋┫Sybase DBMS┃
 *                      ┃ ┃Driver     ┃┃┖-----------┚
 *                      ┃ ┖-----------┚┃
 *                      ┖----------------┚
 */
public class Application
{
    public static void main(String[] args)
    {
//        JdbcTest.findAll();
//      JdbcTest.findByGradeCode(40);
//        JdbcTest.findAllEmployee();
//      JdbcTest.insert("일반화원");
//        JdbcTest.update(50,"그냥회원","2023/11/15");
//        JdbcTest.delete(70);
//        JdbcTest.memberFindAll();
        try {
            SimpleDateFormat sdf  = new SimpleDateFormat("yyMMdd");
            SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMdd");
            
            String birth = "920421";
            System.out.println(sdf2.format(sdf.parse(birth)));
       } catch (ParseException e) {
          e.printStackTrace();
       }
        
    }
}
