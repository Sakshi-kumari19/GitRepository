<%@ page language="java" contentType="text/html;charset=UTF-8" session="true" %>
<%
    String username = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Fitness Website</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<!-- Navbar Section-->
<nav class="navbar">
    <div class="logo">Healthify Me</div>
    <ul class="nav-links">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
        <% if (username != null) { %>
          <li class="welcome-user">Welcome, <%= username %></li>
          <li><a href="logout.jsp">Logout</a></li>
        <% } else { %>
          <li><a href="login.jsp">Login</a></li>
        <% } %>


        
    </ul>
</nav>

<!-- Hero Section -->
<section class="hero">
  <div class="hero-content">
    <h2 style="font-size:40px ;color: rgb(14, 19, 14);">Fuel Your Fitness Journey</h2>
    <p style="color: black;">Health is wealth, start investing today.</p>
    <div class="social-icons">
      <a href="#"><img src="https://img.icons8.com/ios-filled/30/ffffff/facebook--v1.png" alt="Facebook" style="background-color: black;"/></a>
      <a href="#"><img src="https://img.icons8.com/ios-filled/30/ffffff/twitter--v1.png" alt="Twitter" style="background-color: black; "/></a>
      <a href="#"><img src="https://img.icons8.com/ios-filled/30/ffffff/instagram-new--v1.png" alt="Instagram" style="background-color: black;"/></a>
      <a href="#"><img src="https://img.icons8.com/ios-filled/30/ffffff/linkedin.png" alt="LinkedIn" style="background-color: black;"/></a>
    </div>
  </div>
</section>

<!-- Courses Section -->
<section class="courses">
  <h2 class="section-title">Our Popular Courses</h2>
  <div class="course-container">

    <div class="course-card">
      <img src="courses-5.png" alt="Course 1">
      <h3>Fitness Basics</h3>
      <p><strong>Instructor:</strong> Lalita singh</p>
      <p><strong>Price:</strong> Rs 149</p>
      <button class="buy-btn">Buy Now</button>
    </div>

    <div class="course-card">
      <img src="courses-2.jpg" alt="Course 2">
      <h3>Healthy Eating</h3>
      <p><strong>Instructor:</strong> Rohit Kumar</p>
      <p><strong>Price:</strong> Rs 99</p>
      <button class="buy-btn">Buy Now</button>
    </div>

    <div class="course-card">
      <img src="courses-3.png" alt="Course 3">
      <h3>Yoga for Beginners</h3>
      <p><strong>Instructor:</strong> Hemant Sharma</p>
      <p><strong>Price:</strong> Rs 129</p>
      <button class="buy-btn">Buy Now</button>
    </div>

  </div>
</section>

<!-- Blogs section -->
<section class="blogs">
  <h2 class="section-title" style="color: black;">Latest Blog Posts</h2>
  <div class="blog-container">

    <div class="blog-card">
      <h3>10 Healthy Habits for Life</h3>
      <p><strong>Author:</strong> Richa Singh</p>
      <button class="read-btn">Read More</button>
    </div>

    <div class="blog-card">
      <h3>The Power of Morning Workouts</h3>
      <p><strong>Author:</strong> Monica Khanna</p>
      <button class="read-btn">Read More</button>
    </div>

    <div class="blog-card">
      <h3>Nutrition Facts You Didn’t Know</h3>
      <p><strong>Author:</strong> Chander Singh</p>
      <button class="read-btn">Read More</button>
    </div>

  </div>
</section>

<!-- Testimonial Section -->
<section class="testimonials">
  <h2 class="section-title">What Our Users Say</h2>
  <div class="testimonial-slider">
    <div class="testimonial active">
      <p>"This platform completely changed my life. The courses are amazing!"</p>
      <h4>- Shivani Kumari</h4>
    </div>
    <div class="testimonial">
      <p>"Great instructors and easy-to-follow content. Highly recommend."</p>
      <h4>- Roshni Sharma</h4>
    </div>
    <div class="testimonial">
      <p>"I learned so much about nutrition in just a few days!"</p>
      <h4>- Tanmay Kumar</h4>
    </div>
  </div>
</section>

<!-- Footer Section -->
<footer>
    <p>&copy; 2025 Healthify Me Site</p>
</footer>

<script>
  let index = 0;
  const testimonials = document.querySelectorAll('.testimonial');

  setInterval(() => {
    testimonials[index].classList.remove('active');
    index = (index + 1) % testimonials.length;
    testimonials[index].classList.add('active');
  }, 2000);
</script>

</body>
</html>
