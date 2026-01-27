<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>Order Success</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">

<style>
body{
    margin:0;
    height:100vh;
    background:linear-gradient(135deg,#43cea2,#185a9d);
    display:flex;
    justify-content:center;
    align-items:center;
    font-family:Poppins,sans-serif;
}
.card{
    background:white;
    width:420px;
    padding:40px;
    border-radius:16px;
    text-align:center;
    box-shadow:0 30px 60px rgba(0,0,0,0.3);
}
h2{color:#16a34a;}
a{
    display:inline-block;
    margin-top:20px;
    padding:12px 25px;
    background:#16a34a;
    color:white;
    text-decoration:none;
    border-radius:10px;
}
a:hover{background:#15803d;}
</style>
</head>

<body>

<div class="card">
    <h2>✔ ${msg}</h2>
    <p>Your order has been placed successfully!</p>
    <a href="products">Continue Shopping</a>
</div>

</body>
</html>
