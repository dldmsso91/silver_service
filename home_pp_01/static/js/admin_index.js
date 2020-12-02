
$(function(){  
		
		
		

    	$('.productMG').click(function(){
    	
    		$('.rightPage').attr("src", 'getProductList.do');  
    		
    		
    		$('#piechart').css({	
							
						'display':'none' }); 
						
			$('#curve_chart').css({	
							
						'display':'none' }); 
   
   
    	});	
    	
    	
    	$('.orderMG').click(function(){
    	
    		$('.rightPage').attr("src", 'getOrderlist.do'); 
    		
    			
    		$('#piechart').css({	
							
						'display':'none' }); 
						
			$('#curve_chart').css({	
							
						'display':'none' }); 
   
   
    	});	
    	
    	
    	$('.memberMG').click(function(){
    	
    		$('.rightPage').attr("src", 'getMemberList.do'); 
    		
    			
    		$('#piechart').css({	
							
						'display':'none' }); 
						
			$('#curve_chart').css({	
							
						'display':'none' }); 
   
   
    	});	
    	
    	    	
    	
    	    	   	  
});