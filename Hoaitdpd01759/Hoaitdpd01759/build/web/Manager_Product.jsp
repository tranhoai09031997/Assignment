<%-- 
    Document   : Manager_Product
    Created on : Oct 21, 2016, 10:01:23 AM
    Author     : ASUS
--%>

<%@page import="Model.Product"%>
<%@page import="DAO.CalelogueDAO"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="Controller.LoginServlet"%>
<%@page import="Controller.LoginServlet"%>
<%@page import="Model.Catalogue"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <c:set var="root" value="${pageContext.request.contextPath}"/>
          
        <link href="CSS/Style.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/Style_Product.css" rel="stylesheet" type="text/css"/>
        <script src="CSS/boxover.js" type="text/javascript"></script>
        <script src="CSS/javascript.js" type="text/javascript"></script>
        <script src="CSS/jquery.js" type="text/javascript"></script>
        <script src="CSS/jv2.js" type="text/javascript"></script>
        <script src="CSS/jv3.js" type="text/javascript"></script>
        <script src="CSS/jv4.js" type="text/javascript"></script>
        <script src="CSS/jv_1.js" type="text/javascript"></script>
        <link href="CSS/main.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/test_1.css" rel="stylesheet" type="text/css"/>
        <link href="File/SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css"/>
        <script src="File/SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
       
       <body  class="home">
            <%
            CalelogueDAO calelogueDAO = new CalelogueDAO();
        %>

        <%
            ProductDAO productDAO = new ProductDAO();
            String Ma_loai = "";
            if (request.getParameter("Catalogue") != null) {
                Ma_loai = request.getParameter("Catalogue");
            }
        %>

           
<div class="wrapper_all">
<div class="wrapper">


<div class="header">

    <div class="header_left"><img src="Image/logo 2.jpg" width="300" height="200" /></div>
    <div class="header_right">
    	<div class="header_right_top">
           
                                
        <a href="Login.jsp#login" style="color:#F03" ><strong>Đăng nhập</strong></a> I
     <a href="Register.jsp#dangky" style="color:#F03"><strong>Đăng ký</strong></a>
     
         <ul>
     <li class="lidn" style="color: #F03;<%=LoginServlet.displayDN%>"  > <%=LoginServlet.userN%>
     <a style="color: #F00;<%=LoginServlet.displayDN%>" href="LogoutServlet">Đăng xuất</a>
                                </ul>
        </div>
        <div class="header_right_bottom">
          <ul id="MenuBar1" class="MenuBarHorizontal"> 
              <li><a href="MainPage.jsp#trangchu"><center><strong>TRANG CHỦ</strong></center></a></li>
             
                
             <li><a href="MainPage.jsp#bosuutap"><center><strong>BỘ SƯU TẬP</strong></center></a>
                           </li>
             <li><a href="MainPage.jsp#sanpham"><center><strong>SẢN PHẨM</strong></center></a><ul>
                                        <%
                                            for (Catalogue c : calelogueDAO.getListCategory()) {
                                        %>
                                        <li><a href="MainPage.jsp?Catalogue=<%=c.getMaloai()%>"><%= c.getTenloai()%></a></li>

                                        <%
                                            }
                                        %>
                                    </ul>
</li>
             <li><a href="MainPage.jsp#lienhe"><center><strong>LIÊN HỆ</strong></center></a></li>
             <li><a href="MainPage.jsp#Fanpage"><center><strong>FANPAGE</strong></center></a></li>
          </ul>
          
        </div>
        
    </div>
    
</div><div class="dangky">
             <%
            String error = "";
            if (request.getParameter("error")!=null) {
                    error = (String) request.getParameter("error");
                }
            
            
            %>
        <script>
                        function ac0() {
                            var a0 = 0;
                            document.getElementById("ac").value = a0;

                        }
                        function ac1() {
                            var a1 = 1;
                            document.getElementById("ac").value = a1;
                        }
                        function ac2() {
                            var a2 = 2;
                            document.getElementById("ac").value = a2;
                        }
                        function ac3() {
                            var a3 = 3;
                            document.getElementById("ac").value = a3;
                        }
                      
                    </script>
                    <center></br></br></br>
       <form action="getProduct" method="post">
           <center>
		<table width="95%" border="1" >
			
			<tr><td><b>Mã Sản Phẩm</b></td><td>
                             
                               
                                <input type="type" class="" name="Ma_sp" id="maloai" name="Ma_sp" value="<%=Model.getProduct.masp%>"><input type="submit" value="Tìm" onclick="ac0()"></td>
				
                             
			</td></tr>
                        <tr><td><b>Tên Sản Phẩm</b></td><td>
                                <input type="text" class="panjang" name="Ten_sp" value="<%=Model.getProduct.tensp%>"</td></tr>
			
			 <tr><td><b>Mô Tả</b></td><td>
                                <input type="text" class="panjang" name="Mo_ta" value="<%=Model.getProduct.mota%>"</td></tr>	
			</td></tr>
			 <tr><td><b>Số Lượng</b></td><td>
                                <input type="text" class="panjang" name="So_luong" value="<%=Model.getProduct.soluong%>"</td></tr>	
			</td></tr>
                         <tr><td><b>Đơn Giá</b></td><td>
                                <input type="text" class="panjang" name="Don_gia" value="<%=Model.getProduct.dongia%>"</td></tr>	
			</td></tr>
                        <tr><td><b>Hình Ảnh</b></td><td>
                                <input type="text" class="panjang" name="Hinh_anh" value="<%=Model.getProduct.hinhanh%>"</td></tr>	
			</td></tr>
                         <tr><td><b>Nhà Sản Xuất</b></td><td>
                                <input type="text" class="panjang" name="Nha_sx" value="<%=Model.getProduct.nhasx%>"</td></tr>	
                          <tr><td><b>Mã Loại</b></td><td>
                                <input type="text" class="panjang" name="Ma_loai" value="<%=Model.getProduct.maloai%>"</td></tr>	
			</td></tr>
			</td></tr>
			<tr><td>
                               
                             <td height="40"><input type="submit" value="Thêm" onclick="ac1()" >  <input type="submit" value=" Sửa " onclick="ac2()">  <input type="submit" value=" Xóa " onclick="ac3()"></td>
			</td></tr>
                         <input type="text" value="" style="display: none" id="ac" name="ac"> 
                </table>
                        </center> 
       </form></center></div>
                      
       <div class="footer">
   
    <div class="footer_right">
    <div class="footer1_1">
      <ul id="MenuBar1" class="MenuBarHorizontal"> 
            <li><a href="#"><center><strong>Giới thiệu</strong></center></a></li>
             <li><a href="#"><center><strong>Trợ giúp</strong></center></a></li>
             <li><a href="#"><center><strong>Hộp Thư</strong></center></a></li>
             <li><a href="#"><center><strong>Giới Thiệu</strong></center></a></li>
             <li><a href="#"><center><strong>Trách Nhiệm</strong></center></a></li>
             <li><a href="#"><center><strong>Góp Ý </strong></center></a></li>
             <li><a href="#"><center><strong>FanPage </strong></center></a></li>
          </ul>
           <div class="footer2">
  <table width="500" border="0" height="150">
  <tr>
 <td> Bản quyền và phát triển bởi Công ty FPT. Chịu trách nhiệm nội dung: FPT PolyTechnic- Trưởng chi nhánh phía Nam Đà Nẵng - Phó giám đốc Công ty Đông Ri.
<p>Giấy phép số 29/GP-TTĐT do Bộ Thông tin và Truyền thông cấp ngày 11/02/2010 và giấy phép số 88/GP-TTĐT của Sở Thông tin và Truyền thông TP.Đà Nẵng cấp ngày 28/7/2015.</p>
  </td>
  </tr>
</table></div>
    <div class="footer3">
  <table width="500" border="0" height="150">
  <tr>
    <td>
Địa chỉ: 137 Nguyễn Thị Thập
<p>Điện thoại: (84-8) 38251028 -  Fax: (84-8) 38251049.</p>
Quảng cáo: 0936009959 - Email: Tranhoai09031997@gmail.com
<p>FPT Polytechnic/<td>
  </tr>
</table></div>
    </div>
    </div>
</div>
</div>
</div>
    </body>
</html>
