// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
  

  $("table.activities_group").slideUp();
  $("table#modules_summary tbody#packages_totals").slideDown();
  
  $("span.module_name").live("click",function(){
    
    $("table.activities_group",$(this).parent().parent()).toggle(500);
    
  })
  
  $("a#link_collapse_all").toggle(function(){
    
    $("table.activities_group").slideUp();
    this.textContent = "mostrar todos";
    
  },function(){
  
  $("table.activities_group").slideDown();
  this.textContent = "collapsar todos";
  
  })

  $("h2#title_costing").toggle(function(){
  
    $("table#modules_summary tbody#packages_totals").slideDown();
    
  }, function(){
  $("table#modules_summary tbody#packages_totals").slideUp();
  });


 $("table#modules_summary").columnManager({listTargetID:'targetall', onClass: 'advon', offClass: 'advoff',  
                 saveState: true, colsHidden: [4,5]}); 
  
 var opt = {listTargetID: 'targetall', onClass: 'advon', offClass: 'advoff',  
         hide: function(c){ 
             $(c).fadeOut(); 
         },  
         show: function(c){ 
             $(c).fadeIn(); 
         }};  
         
  $("a#expand_package_summary").click(function(){
    
      $(this).toggleClass("merge")
      $("table#modules_summary").toggleColumns([3],opt)
      $("table#modules_summary").toggleColumns([4,5],opt)
  });

});
