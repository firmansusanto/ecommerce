$(document).ready(function()
{
	
	$.getJSON("kate.json",function(data)
	{
	
		
        $("#namaorg").text(data.nama);
        var ctr = parseInt(data.kategori.length);
        var c   = $("#bun1").clone().removeClass('template');
        for(var i=0;i<ctr;i++)
            {
                $("#cate").append(c);
                $("#link",c).attr("href","kategori.html?ids="+data.kategori[i].nama); 
                $("#buns",c).text(data.kategori[i].nama);
                c=$(c).clone();
            }

	});

	
        $.getJSON("koneksi.php",function(data)
		{
            
        if(localStorage.cart >= 1)
        {
            var taste = localStorage.getItem('cart');
            $("#cart").text(taste); 
        }
        
            
        var ctrs =  parseInt(data.product.length);
        var cs   = $("#bun2").clone().removeClass('template');
        for(var j=0;j<ctrs;j++)
            {
                $("#pro").append(cs);
                $("#links",cs).attr("href","product.html?id="+j );
				$(".harga",cs).text(data.product[j].harga);
                $("#bunss",cs).text(data.product[j].nama);
				$(".gambar",cs).attr("src",data.product[j].image);
				$("#buy",cs).attr("onclick","tambahisicart(\""+data.product[j].nama+"\","+data.product[j].harga+",\""+data.product[j].ID+"\",\""+data.product[j].image+"\")");
				$("#clear").click(function(ID){
					hapusisicart();
				});		
                cs=$(cs).clone();	
            }
            var noob = window.location.href;
            var split = noob.split("=");
         $("#nama").text(data.product[split[1]].nama); 
		 $("#deskripsi").text(data.product[split[1]].deskripsi);
		
        });
		
		
		
		
		
});


			var a;
		
function tambahisicart(nama,harga,ID,image)
			{
				 if(!localStorage.cart)
						{
							a = 0;
							localStorage.setItem('cart',1);
                            localStorage.setItem(localStorage.cart,ID);
                            var taste = localStorage.getItem('cart');
							$("#cart").text(taste); 
						}
				else
						{
							localStorage.cart++;
                            localStorage.setItem(localStorage.cart,ID);
							var taste = localStorage.getItem('cart');
							$("#cart").text(taste);
						}
			
			}
			
function hapusisicart()
			{
                for(i=1;i<=localStorage.cart;i++)
                {
                    localStorage.removeItem(i);
                }
				localStorage.removeItem('cart');
				var taste = localStorage.getItem('cart');
				$("#cart").text(0); 
			}
