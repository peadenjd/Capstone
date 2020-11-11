<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CyberDaySystem.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="jumbotron">
            <h1 class="display-3">Welcome to CyberDay!</h1>
            <p class="lead">By teaching others about Computer Information Systems, you will learn to develop advanced competencies and diagnostic skills to correct software problems. Mentorship in the CyberDay program, which is a collaborative effort between the College of Business (CoB) and the JMU Office of Admissions, will offer the opportunity to engage middle school students in animation programming or other computer technology activities.  Share your excitement in the field of computer information systems and cultivate the interests of young people in future business/technology related careers. </p>
            <hr class="my-4">
            <p class="lead">According to Dr. Tom Dillon, co-director of CyberDay, “The JMU mission has always been to educate leaders. Our students exemplify that mission by not only being leaders in their academic studies, but also by leading these visiting young people to promising technology careers.” </p>
           
        </div>
        <div class="container">

  <!-- Full-width images with number text -->
  <div class="mySlides">
    <div class="numbertext">1 / 3</div>
      <img src="/images/cyberr.jpg" class="center" style="width: auto">
  </div>

  <div class="mySlides">
    <div class="numbertext">2 / 3</div>
      <img src="/images/kids.jpg" class="center" style="width:auto">
  </div>

  <div class="mySlides">
    <div class="numbertext">3 / 3</div>
      <img src="/images/event.jpg" style="width:auto">
  </div>

  

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>

  <!-- Image text -->
  <div class="caption-container">
    <p id="caption"></p>
  </div>

  <!-- Thumbnail images -->
  <div class="row">
    <div class="column">
      <img class="demo cursor" src="/images/cyberr.jpg" style="width:100%" onclick="currentSlide(1)" alt="James Madison University - Cyber Day">
    </div>
    <div class="column">
      <img class="demo cursor" src="/images/kids.jpg" style="width:100%" onclick="currentSlide(2)" alt="Local Middle School Students Working on a Programming Activity">
    </div>
    <div class="column">
      <img class="demo cursor" src="/images/event.jpg" style="width:100%" onclick="currentSlide(3)" alt="Cyber Day participants collaborating on an assignment">
    </div>
   
  </div>
</div>
        <script>
            var slideIndex = 1;
            showSlides(slideIndex);

            // Next/previous controls
            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            // Thumbnail image controls
            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("demo");
                var captionText = document.getElementById("caption");
                if (n > slides.length) { slideIndex = 1 }
                if (n < 1) { slideIndex = slides.length }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                captionText.innerHTML = dots[slideIndex - 1].alt;
            }
        </script>
</asp:Content>
