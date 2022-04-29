<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <!--html 주석 : 개발자 도구탭에 노출됨 -->
  <%-- jsp 주석 : 개발자 도구탭에 노출이 되지 않음--%>
  
  <h1>스크립팅 원소</h1>
  
  <%!
     // 선언문 : 변수 또는 메소드 선언 가능
     public String test() {
	    
	  return "test 메소드 호출됨";
     }
  %>
  
 <%--<%= sum %> => 오류--%> 
  
  <%
     // 스크립틀릿 : 이 안에 일반적인 자바 코드를 작성 (변수 선언 및 초기화, 제어문 등)
     int sum = 0;
     for(int i=0; i<=100; i++){
    	 sum += i;
     }
     System.out.println("덧셈끝! 결과는 " + sum);
     System.out.println(test());
  %>
  
  <p>
        화면으로 출력하고자 한다면 <br>
        스트립틀릿을 이용해서 출력 가능 : <% out.print(sum); %><br>
        표현식(출력식)을 이용해서 출력 가능 : <%= sum %>  <br>
        메소드를 호출한 결과를 출력해보기 : <%= test()  %>           
  </p>
  
   <%
      // 배열 사용
      String[] name = {"김말똥","홍길동","이순신","박말순"};
   %>
   
   <h5>배열의 길이: <%= name.length %></h5>
   
   <h5>배열명 출력: <%= name %></h5> <%-- name 이라는 변수에 담긴 주소값이 그대로 출력됨 --%>
   
   <h5>문자열로 연이어서 출력: <%= String.join(", ", name) %></h5>
    
    <br>
    
    <h4>반복문을 통해 html 요소를 반복적으로 화면에 출력 가능</h4>
    
    <ul>
    <%-- 
      <% for(int i=0; i<name.length;i++){ %>
          <li><%= name[i] %> </li>
      <% } %>
    --%>
      <%for(String n : name) { %>
          <li><%= n %></li>
      <% } %>     
    </ul>
    
   <%-- <%= n %> => 오류 --%> 
   <%--
      500오류는 자바 소스코드 상의 오류(예외발생 등)을 나타낸다.
      404오류는 요청에 대한 응답 페이지를 찾지 못할 때 발생하는 오류이다.
    --%>
   

</body>
</html>

