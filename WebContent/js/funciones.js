$(document).ready(function () {
    $("tr #btnDelete").click(function (){
        var idp=$(this).parent().find("#idp").val();
        swal({
            title: "Esta Seguro de Eliminar?",
            text: "Once deleted, Ud puede agregar de nuevo!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        }).then((willDelete) => {
                    if (willDelete) {
                        eliminar(idp);  
                        swal("El producto se elimino", {
                            icon: "success",
                        }).then((willDelete)=>{
                            if(willDelete){
                                parent.location.href="Controlador?accion=carrito";
                            }
                        });
                    } else {
                        swal("Registro não eliminado!");
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
        });
    }
    
   $("tr #Cantidad").click(function (){
       var idp=$(this).parent().find("#idpro").val();
       var cantidad=$(this).parent().find("#Cantidad").val();
       var url="Controlador?accion=ActualizarCantidad";
       $.ajax({
          type: 'POST',
          url: url,
          data: "idp="+ idp + "&Cantidad=" + cantidad,
          success: function(data, textStatus, jqXHR){
              location.href="Controlador?accion=carrito";
          }
       });
   });
});