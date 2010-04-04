// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


$(document).ready(function() {
  
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
  
});
