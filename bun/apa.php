<html>
<head>
<script src="jquery.js"></script>
<script src="checkout.js"></script>
<link href="style.css" rel="stylesheet">
</head>	
<body>
   <table border="1" style="width:100%" id ="table">
   <tr>
    <td>No</td>
    <td>ID</td> 
    <td>Nama</td>
	<td>Harga</td>
	<td>Gambar</td>
	<td>Qty</td>
	<td>Total</td>
  </tr>
  <form id="form1" name="form1" method="post" action="insert.php">
		<tr id ="tampil" class = "template">
    <td>	<span  id="no"     ></span></td>
    <td>	<span  id="id"     ></span></td>	
    <td>	<span  id="nama"   ></span></td>
	<td>	<span  id="harga"  ></span></td>
	<td> 	<span> <img class="gambar" src=""height="80" width="140"> </span></td>
	<td>	<span  id="qty"  ></span></td>	
	<td>	<span  id="total"  ></span></td>
            
		</tr>
      
      
	</table>
	<button id="Beli" button >Beli</button>
        <input type = "hidden" name =  "id"     value=""  id="idinput"> 
        <input type = "hidden" name =  "nama"   value=""  id="namainput">
        <input type = "hidden" name =  "harga"  value=""  id="hargainput">
        <input type = "hidden" name =  "gambar" value=""  id="gambarinput">
        <input type = "hidden" name =  "qty"    value=""  id="qtyinput">
        <input type = "hidden" name =  "total"  value=""  id="totalinput">
       
	</form>
    <button><a href ="bun.html">Home</a></button>
	<br><br>
	<p> Total Belanjaan Anda :</p>
	<p>Rp.<span id="grandtotal"  ></span></p>
       

</body>
</html>
