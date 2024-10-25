<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

* {
    margin: 0;
    padding: 0;
}

body {
    background-color: rgba(7, 7, 7, 0.946);
    width: 100vw;
    transition-property: background-color;
    transition-timing-function: ease-in;
    transition-duration: 2s;
}

.light_bg {
    transition: all;
    background-color: rgb(255, 171, 69);
    transition-timing-function: ease-in;
    transition-duration: 2s;
}

.icon1 {
    width: 100vw;
    height: 15vh;
    position: absolute;
    display: flex;
    justify-content: flex-start;
    z-index: -2;
}

.icon1 img {
    height: 78px;
    padding-left: 10px;
    padding-top: 10px;
    position: absolute;
}
.dark{
    opacity: 1;
    transition-property: opacity;
    transition-duration: 2s;
    transition-timing-function: ease-in-out;
}
.dark_icon{
    opacity: 0;
    transition-property: opacity;
    transition-duration: 2s;
    transition-timing-function: ease-in-out;
}
.light{
    height: 135px !important;
    top:-27px;
    transition-property: opacity;
    transition-timing-function: ease-in-out;
    transition-duration: 2s;
    opacity: 0;
}
.light_icon{
    opacity: 1;
    transition: all;
    transition-timing-function: ease-in-out;
    transition-duration: 2s;
}
.icon2 {
    width: 100vw;
    height: 15vh;
    display: flex;
    justify-content: flex-end;
    position: absolute;
}

.videos {
    width: 100vw;
    height: 100vh;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: center;
    position: absolute;
    margin-top: 18vh;
  top:40px;
}

iframe {
    width: 400px;
    height: 300px;
    margin: 20px;
    border-radius: 20px;
    transform: translateZ(1000px);
    opacity: 1;
    box-shadow: 0px 0px 10px 2px black;
}

iframe:hover {
    opacity: 0.95;
}

.imgs {
    width: 50px;
    height: 50px;
    position: absolute;
    object-fit: contain;
    right: 60px;
    top:6px;
}

.imgs img {
    position: absolute;
    width: 100%;
    height: 100%;
    object-fit: contain;
    margin: 20px;
}

.hinata {
    transform: scale(2.7) rotateY(180deg);
    backface-visibility: hidden;
}

.rotatet {
    animation: rotatet 2s cubic-bezier(0.175, 0.885, 0.32, 1.5) 0s 1 forwards;
}

.rotateh {
    animation: rotateh 2s cubic-bezier(0.175, 0.885, 0.32, 1.5) 0s 1 forwards;
}

.rotatehR {
    animation: rotatehR 2s cubic-bezier(0.175, 0.885, 0.32, 1.5) 0s 1 forwards;
}

.rotatetR {
    animation: rotatetR 2s cubic-bezier(0.175, 0.885, 0.32, 1.5) 0s 1 forwards;
}

.tsuki {
    transform: scale(1.7);
}

@keyframes rotateh {
    from {
        transform: scale(2.7) rotateY(180deg);
        backface-visibility: hidden;
    }

    to {
        transform: scale(2.7) rotateY(0deg);
    }
}

@keyframes rotatehR {
    from {
        transform: scale(2.7) rotateY(0deg);
    }

    to {
        transform: scale(2.7) rotateY(180deg);
        backface-visibility: hidden;
    }
}

@keyframes rotatet {
    from {
        transform: scale(1.7);
    }

    to {
        transform: scale(1.7) rotateY(180deg);
        backface-visibility: hidden;
    }
}

@keyframes rotatetR {
    from {
        transform: scale(1.7) rotateY(180deg);
        backface-visibility: hidden;
    }

    to {
        transform: scale(1.7) rotateY(0deg);
    }
}

</style>	
</head>
<body>

<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setDateHeader("Expires", 0); // Proxies
    
    %>    
<%
String username=(String)session.getAttribute("username");

  if(username==null)
  {
	  response.sendRedirect("login.jsp");
  }
  
  %>
 


	 <div class="icon1" style="display: flex;justify-content: center;">
         
        <form action="logout"  method="post">
          <input style="padding: 10px 10px" type="submit" value="logout">
        </form>
    </div>
   
    
     
    <div class = "videos">
        <iframe src="https://www.youtube.com/embed/d-zfByIoKaM?si=aE1oy6YVnSauDXy7" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        <iframe src="https://www.youtube-nocookie.com/embed/Uooi8jEVC3Q?si=93hyCos1NpRTTy8B" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        <iframe src="https://www.youtube.com/embed/amJBEAW9FJQ?si=WpZ75JfowV1QjUXp" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        <iframe src="https://www.youtube.com/embed/W6Mvefr1_iM?si=mZr9_sJr_g8bpDdA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        <iframe src="https://www.youtube.com/embed/D7v1D9bDAMk?si=qRApOIc_ziiQ7ALb" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        <iframe src="https://www.youtube.com/embed/kOQIWza3KrA?si=lWD2zs5oDYUC_sb1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>
    <div class = "spacing"></div>
    
    
    <script type="text/javascript">
    let rot_state = 0;
    document.querySelector(".imgs").addEventListener("click",()=>{
       if(rot_state == 0){
        rot_state = 1;
        document.querySelector(".hinata").classList.add("rotateh");
        document.querySelector(".tsuki").classList.add("rotatet");
        document.querySelector(".hinata").classList.remove("rotatehR");
        document.querySelector(".tsuki").classList.remove("rotatetR");
        document.body.classList.add("light_bg")
        document.querySelector(".light").classList.add("light_icon");
        document.querySelector(".dark").classList.add("dark_icon")
       }
       else{
        rot_state = 0;
        document.querySelector(".hinata").classList.add("rotatehR");
        document.querySelector(".tsuki").classList.add("rotatetR");
        document.querySelector(".hinata").classList.remove("rotateh");
        document.querySelector(".tsuki").classList.remove("rotatet");
        document.body.classList.remove("light_bg")
        document.querySelector(".light").classList.remove("light_icon")
        document.querySelector(".dark").classList.remove("dark_icon")

       }
    })
    
    </script>
</body>
</html>