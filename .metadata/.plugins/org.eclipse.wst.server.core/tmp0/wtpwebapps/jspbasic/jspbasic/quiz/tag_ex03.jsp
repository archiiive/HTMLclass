<%@ page import="java.util.ArrayList, java.util.Collections, java.util.Random" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
// ArrayList 를 사용하여 1~45까지 랜덤한 번호를 발생시키고 리스트에 담는다.
ArrayList<Integer> lottoNumbers = new ArrayList<>();
Random random = new Random();

while (lottoNumbers.size() < 6) {
    int randomNumber = random.nextInt(45) + 1;
    if (!lottoNumbers.contains(randomNumber)) {
        lottoNumbers.add(randomNumber);
    }
}

// 리스트를 오름차순으로 정렬
Collections.sort(lottoNumbers);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lotto Numbers</title>
</head>
<body>
    <h1>이번주 로또번호</h1>
    <p>[<%= String.join(", ", lottoNumbers.stream().map(String::valueOf).toArray(String[]::new)) %>]</p>
</body>
</html>