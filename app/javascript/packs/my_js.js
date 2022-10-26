/*console.log("hola")*/
$(document).ready(function(){
  $("#button2").click(function(){
    $.get("/search/ajax", function(data, status){
      console.log("Data: " + data + "\n");
      for (const d in data){
        console.log(data[d].id)
        console.log(data[d].name)
        $("#text").append('<li> '+ data[d].name+ ' </li>');
       
      }
    });
  });
  $("#button3").click(function(){
      console.log("Borrar lista\n");
      $("li").remove();
  });
  $("#btn2").click(function(){
    var name = $("#search_name").val()
    console.log("Text: " + name);
    
  });
});




