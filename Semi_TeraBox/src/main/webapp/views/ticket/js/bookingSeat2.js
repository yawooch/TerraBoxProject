$(document).ready(function(){
	
	let sum = 0;
		
    $('#tk_btn_plus').click(function(){
	
	let a = Number($('#tk_now').html());
	let aBox = $('#tk_now');
	
	let b = Number($('#tk_now2').html());
	let bBox = $('#tk_now2');
	
	let c = Number($('#tk_now3').html());
	let cBox = $('#tk_now3');
	
	sum = a + b + c;
 		
 		a = a+1;
	
 	if (sum >=8 ){
		 alert('최대 인원수를 초과했습니다.');	  
		 return a = 8;
	 }
 		aBox.text(a);
 		    console.log(sum);
     
    });
     
    $('#tk_btn_minus').click(function(){
	
	let a = Number($('#tk_now').html());
	let aBox = $('#tk_now');
	
	let b = Number($('#tk_now2').html());
	let bBox = $('#tk_now2');
	
	let c = Number($('#tk_now3').html());
	let cBox = $('#tk_now3');
	
	sum = a + b + c;
 		
 		a = a-1;
 		
 	if (a <0) {
		return a = 0;
	 }
	
	if (sum <= 0) {
		return a = 0;
	}
     
 	 aBox.text(a);
 	     console.log(sum);
     });
     
     
    $('#tk_btn_plus2').click(function(){
	
	let a = Number($('#tk_now').html());
	let aBox = $('#tk_now');
	
	let b = Number($('#tk_now2').html());
	let bBox = $('#tk_now2');
	
	let c = Number($('#tk_now3').html());
	let cBox = $('#tk_now3');
	
	sum = a + b + c;
 		
 		b = b+1;
	
 	if (sum >=8 ){
		 alert('최대 인원수를 초과했습니다.');	  
		 return b = 8;
	 }
 		bBox.text(b);
 		    console.log(sum);
     
    });
    
     $('#tk_btn_minus2').click(function(){
	
	let a = Number($('#tk_now').html());
	let aBox = $('#tk_now');
	
	let b = Number($('#tk_now2').html());
	let bBox = $('#tk_now2');
	
	let c = Number($('#tk_now3').html());
	let cBox = $('#tk_now3');
	
	sum = a + b + c;
 		
 		b = b-1;
 		
 	if (b <0) {
		return b = 0;
	 }
	
	if (sum <= 0) {
		return b = 0;
	}
     
 	 bBox.text(b);
 	     console.log(sum);
 	 
     });
    
     $('#tk_btn_plus3').click(function(){
	
	let a = Number($('#tk_now').html());
	let aBox = $('#tk_now');
	
	let b = Number($('#tk_now2').html());
	let bBox = $('#tk_now2');
	
	let c = Number($('#tk_now3').html());
	let cBox = $('#tk_now3');
	
	sum = a + b + c;
 		
 		c = c+1;
	
 	if (sum >=8 ){
		 alert('최대 인원수를 초과했습니다.');	  
		 return c = 8;
	 }
 		cBox.text(c);
     
         console.log(sum);
    });
    
    
    $('#tk_btn_minus3').click(function(){
	
	let a = Number($('#tk_now').html());
	let aBox = $('#tk_now');
	
	let b = Number($('#tk_now2').html());
	let bBox = $('#tk_now2');
	
	let c = Number($('#tk_now3').html());
	let cBox = $('#tk_now3');
	
	sum = a + b + c;
 		
 		c = c-1;
 		
 	if (c <0) {
		return c = 0;
	 }
 	
	
	if (sum <= 0) {
		return c = 0;
	}
     
 	 cBox.text(c);
 	 
 	 
    $('.tk-seat-click').click(function() {
		console.log(sum);		
		sum = sum-1;
		
		
	});
 	 
     });
     
     
     
    
    
    
 });