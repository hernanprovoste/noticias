ActiveAdmin.register Foto do

  index do
    column "ID Fotografía", :id
    column "Título", :title
    column "Subtitulo", :subtitle
    column "Fecha Creación", :created_at
    actions
  end

  # Opciones para que se envpien los parámetros al controlador
  permit_params :title, :subtitle, :imagen

  # Opciones del menú
  menu label: "Fotografías"

  # Opciones del formulario
  form do |f|
    inputs 'Detalle' do
      input :title, label: "Título Fotografía"
      input :subtitle, label: "Subtitulo Fotografía"
      input :imagen, label: "Imagen"
    end

    f.submit "Guardar Fotografía"
  end

  # Opciones del la pagina de muestra la noticia en administración
  show do
    panel "Detalle Fotografía" do
      h3 foto.title
      h4 foto.subtitle
      div class: 'imagen-muestra-admin' do
        image_tag foto.imagen
      end
      h5 foto.created_at
    end
  end


end
