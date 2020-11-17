<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el표현 방식</title>
</head>
<body>
	나누기/(div), 나머지%(mod), 같다==(eq), 같지않다!=(ne), 크다>(gt), 작거나같다<=(le), 크거나같다>=(ge)
	또는||(or), 그리고&&(and), 부정!(not)
	<hr>
	${ 5/2 } => ${ 5 div 2 } <!-- 오른쪽의 표현식 둘다 가능하다. -->
<hr>
	${5+2 }<br>
	${5==2 }
<hr>

	정수형 : ${ 10 }<br>
	실수형 : ${ 10.123 }<br>
	논리형 : ${ true }<br>
	null : ${null }<br>
	<%String s = null; %>
<hr>

	null => <%= s %><br>
	null => ${s}
<hr>

	${ "el 표현" }<br>
	<%out.print("스크립트릿 표현"); %><br>
	<%="표현식" %>
</body>
</html>