#encoding: utf-8
class HomeController < ApplicationController

  def index
    @titulo = "Curso Rails - Inicio"
    
  end

  def quienes_somos
    @titulo = "Curso Rails - Quiénes Somos"
  end

  def contacto
    @titulo = "Curso Rails - Contacto"
  if request.post?
      #Recogemos la imagen del formulario en la variable local
      imagen = params[:archivo]
      #Obtenemos el nombre de la imagen recibida
      nombre_imagen = imagen.original_filename

      ver_si_es_imagen_pgn = /^\w+\.(\S{3})$/.match(nombre)

    if ver_si_es_imagen_png[1] == "png" 

      #Le indicamos la ruta donde guardamos la imagen en nuestro ordenador
      directorio = "/Users/santiagoponce/Desktop/prueba/" + nombre

  
      #  Creamos un fichero en modo binario
      #  Y compañado de un bloque vamos escribiendo 
      #  a la vez que leyendo del fichero recibido
     
      File.open(directorio,"wb"){|f| f.write(imagen.read)}
      flash[:mensaje] = "Grabación se ha realizado correctamente"
    else

      flash[:mensaje] = "Error al subir la imagen"  
    end
      
    redirect_to root_path
  end
    
  end

  def localizacion
  	@titulo = "Curso Rails - Localización"
  end

  def servicios
    if request.get?
  	 @titulo = "Curso Rails - Servicios - GET"
    else
      @titulo = "Curso Rails - Servicios - POST"
      
    end
  end
  
end
