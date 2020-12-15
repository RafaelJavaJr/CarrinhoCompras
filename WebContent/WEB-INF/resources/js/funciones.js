/**
 * 
 */
$(document).ready(function () {
    $("tr #btnDelete").click(function (){
        var idp=$(this).parent().find("#idp").val();
        swal({
        	  title: "Está certo disso?",
        	  text: "Uma vez deletado, não será mais possível recuperar este item!",
        	  icon: "warning",
        	  buttons: true,
        	  dangerMode: true,
        	})
        	.then((willDelete) => {
        	  if (willDelete) {
        		  eliminar(idp);	
        		  swal("Pronto! Seu item foi eliminado!", {
        			  icon: "success",
                  }).then((willDelete)=>{
                      if(willDelete){
                          parent.location.href="Controlador?accion=carrito";
                      }
                  });
              } else {
                  swal("Registro no eliminado!");
              }
          });
});
    function eliminar(idp){
        var url="Controlador?accion=Delete";
        $.ajax({
           type: 'POST',
           url: url,
           data: "idp="+idp,
           success: function (data, textStatus, jqXHR){
   
           }
        })
    }
});    
    
  