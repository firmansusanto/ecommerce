$(document).ready(function(){

$.getJSON("koneksi.php",function(data)
		{
var jumlah;
var harga;
var a = 1,b =0;
var qty = 0;  
var no = 1;
var idtam = "",namatam ="",hargatam="",qtytam="",gambartam="";
var idtampil;
var nama,harga,total,qty;
grandtotal = 0;
    
var produk =  parseInt(data.product.length);

jumlah = localStorage.getItem("cart");
var c   = $("#tampil").clone().removeClass('template');
    
    
    for (b=0;b<produk;b++)
    {
            for (var i=1;i<=jumlah;i++)
                {
                    
                                if(data.product[b].ID == localStorage.getItem(i))
                                    {
                                            qty     = qty +1;
                                            nama    = data.product[b].nama;
                                            id      = data.product[b].ID;
                                            gambar  = data.product[b].image;
                                            harga   = data.product[b].harga;
                                            total 	= qty*harga; 
                                            grandtotal = grandtotal+total;
                                          
                                        
                                            $("#table").append(c);
                                            $("#no",c).text(no);
                                            $("#nama",c).text(nama);
                                            $("#id",c).text(id);
                                            $(".gambar",c).attr("src",gambar);
                                            $("#harga",c).text(harga);
                                            $("#total",c).text(total);
                                            $("#qty",c).text(qty); 
                                    }
                    
                }
          no++
          if(data.product[b].ID == id)
                 {
                    idtam      = ""+id+"   "+idtam;
                    namatam    = ""+nama+"  "+namatam;
                    hargatam   = ""+harga+"  "+hargatam;
                    gambartam  = ""+gambar+"  "+gambartam;
                    qtytam     = qty+"  "+qtytam;
                    
                 }
                    
        $("#grandtotal").text(grandtotal);
        qty = 0;
        c=$(c).clone();	
         } 
    
     $("#idinput").attr("value",idtam);
     $("#namainput").attr("value",namatam);
     $("#hargainput").attr("value",hargatam);
     $("#gambarinput").attr("value",gambartam);
     $("#qtyinput").attr("value",qtytam);
     $("#totalinput").attr("value",grandtotal);
    
 });
});
