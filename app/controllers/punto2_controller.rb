class Punto2Controller < ApplicationController

    
        def modp
          @usuario = Usuario.all
          seluser = params[:parametros]
          if (seluser != nil )
            @prestamolib = Prestamo.where(Usuario:seluser)
          end
        end
      
      
    
end
