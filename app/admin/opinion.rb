ActiveAdmin.register Opinion do

# Muestra el index de la pagina administrativa de noticias.
	index do
		column "ID Opinion", :id
		column "Título", :title
		column "Autor", :autor
		column "Fecha Creación", :created_at
		actions
	end

	# Opciones para que se envpien los parámetros al controlador
	permit_params :title, :body, :autor, :image

	# Opciones del menú
	menu label: "Opiniones"

	# Opciones del formulario
	form do |f|
		inputs 'Detalle' do
			input :title, label: "Título Opinión"
			input :autor, label: "Autor"
			input :body, label: "Texto Opinión", :as => :ckeditor
			input :image, label: "Imagen Autor"
		end

		f.submit "Guardar Opinión"
	end

	# Opciones del la pagina de muestra la noticia en administración
	show do
		panel "Detalle Opinión" do
			h3 opinion.title
			h4 opinion.autor
			div class: 'imagen-muestra-admin' do
				image_tag opinion.image
			end
			div do
				simple_format opinion.body
			end
			h5 opinion.created_at
		end
	end



end
