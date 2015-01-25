if(!localStorage.cart)
				{
					localStorage.setItem('cart','0');
				}
				else
				{
					localStorage.cart++;
				}
				
				var taste = localStorage.getItem('cart');