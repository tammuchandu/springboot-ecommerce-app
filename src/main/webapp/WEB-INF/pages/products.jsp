<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Products | Mini Store</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">

<style>
body {
    margin:0;
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(135deg, #f3f4f6, #e5e7eb);
}

/* ===== Navbar ===== */
.navbar {
    background: #667eea;
    padding: 15px 40px;
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
}
.navbar h3 {
    margin:0;
    font-size: 22px;
}
.navbar a {
    color: white;
    text-decoration: none;
    font-weight: 500;
    transition: 0.2s;
}
.navbar a:hover { text-decoration: underline; }

/* ===== Product Grid ===== */
.products {
    padding: 40px;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 30px;
    max-width: 1200px;
    margin: 0 auto;
}

/* ===== Product Card ===== */
.card {
    background: #ffffff;
    border-radius: 16px;
    box-shadow: 0 15px 40px rgba(0,0,0,0.08);
    text-align: center;
    padding: 25px 15px;
    transition: transform 0.3s, box-shadow 0.3s;
    cursor: pointer;
}
.card:hover {
    transform: translateY(-8px);
    box-shadow: 0 25px 50px rgba(0,0,0,0.15);
}

.card img {
    width: 160px;
    height: 160px;
    object-fit: cover;
    border-radius: 12px;
    margin-bottom: 15px;
}

.card h4 {
    font-size: 18px;
    color: #1f2937;
    margin: 10px 0 5px;
}

.price {
    color: #16a34a;
    font-weight: 600;
    margin-bottom: 15px;
    font-size: 16px;
}

/* ===== Buy Button ===== */
.buy {
    display: inline-block;
    padding: 10px 25px;
    background: #667eea;
    color: white;
    border-radius: 10px;
    text-decoration: none;
    font-weight: 500;
    transition: 0.3s;
}
.buy:hover {
    background: #5a67d8;
    transform: translateY(-2px);
}

/* ===== Responsive ===== */
@media(max-width:768px) {
    .products { padding: 30px 15px; gap: 20px; }
    .card img { width: 140px; height: 140px; }
}
</style>
</head>

<body>

<!-- Navbar -->
<div class="navbar">
    <h3>Mini Store 🛍️</h3>
    <a href="logout">Logout</a>
</div>

<!-- Products Grid -->
<div class="products">
<c:forEach var="p" items="${products}">
    <div class="card">
        <img src="product/image/${p.id}" alt="${p.name}">
        <h4>${p.name}</h4>
        <div class="price">₹ ${p.price}</div>
        <a href="order" class="buy">Buy Now</a>
    </div>
</c:forEach>
</div>

</body>
</html>
