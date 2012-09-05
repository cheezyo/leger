function showstuff(boxid, i, linkid) {
				var s = document.getElementById(boxid);
				var link = document.getElementById(linkid);
				if(s.style.display == "block" && i == 0) {
					s.style.display = "none";
					link.style.textDecoration = "none";
					
				}else if(i == 1) {
						s.style.display = "none";
						link.style.textDecoration = "none";
					}else{
					s.style.display = "block";
					link.style.textDecoration = "underline";
					
				} 

			}
			
function showstuff2(boxid, i, linkid) {
				var s = document.getElementById(boxid);
				var link = document.getElementById(linkid);
				if(s.style.display == "block" && i == 0) {
					s.style.display = "none";
					link.style.textDecoration = "none";
					
				}else if(i == 1) {
						s.style.display = "none";
						link.style.textDecoration = "none";
					}else{
					s.style.display = "block";
					link.style.textDecoration = "underline";
					
					
				} 

			}