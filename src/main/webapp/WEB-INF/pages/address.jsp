<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Delivery Address</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">

<style>
body{
    margin:0;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;

    /* background image added */
    background:
        linear-gradient(135deg, rgba(102,126,234,0.6), rgba(118,75,162,0.6)),
        url(<%= request.getContextPath() %>/images/productdeliverybg.png);

    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;

    font-family:Poppins,sans-serif;
}

.card{
    background:white;
    width:420px;
    padding:35px;
    border-radius:14px;
    box-shadow:0 25px 50px rgba(0,0,0,0.25);
}
.card h2{text-align:center;margin-bottom:20px;}
input{
    width:100%;
    padding:12px;
    margin-bottom:15px;
    border-radius:8px;
    border:1px solid #ccc;
}
button{
    width:100%;
    padding:12px;
    background:#667eea;
    color:white;
    border:none;
    border-radius:8px;
    font-size:16px;
}
button:hover{background:#5a67d8;}
</style>
</head>

<body>

<div class="card">
    <h2>Delivery Address 🏠</h2>

    <form action="order" method="post">
        <input type="text" name="house" placeholder="House / Flat No" required>
        <input type="text" name="city" placeholder="City" required>
        <input type="text" name="pincode" placeholder="Pincode" required>
        <button type="submit">Place Order</button>
    </form>
</div>

</body>
</html>

