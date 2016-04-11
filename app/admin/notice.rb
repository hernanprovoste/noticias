ActiveAdmin.register Notice do
	# Muestra el index de la pagina administrativa de noticias.
	index do
		column "ID Noticia", :id
		column "Título", :title
		column "Subtitulo", :subtitle
		column "Fecha Creación", :created_at
		column "Fecha Noticia", :date
		actions
	end

	# Opciones para que se envpien los parámetros al controlador
	permit_params :title, :body, :image, :subtitle, :date

	# Opciones del menú
	menu label: "Noticias"

	# Opciones del formulario
	form do |f|
		inputs 'Detalle' do
			input :title, label: "Título Noticia"
			input :subtitle, label: "Subtitulo Noticia"
			input :body, label: "Cuerpo Noticia", :as => :ckeditor
			input :image, label: "Imagen Noticia"
		end
		
		f.submit "Crear Noticia"
	end

	# Opciones del la pagina de muestra la noticia en administración
	show do
		panel "Detalle Noticia" do
			h3 notice.title
			h4 notice.subtitle
			div class: 'imagen-muestra-admin' do
				image_tag notice.image
			end
			div do
				simple_format notice.body
			end
			h5 notice.created_at
		end
	end
end
