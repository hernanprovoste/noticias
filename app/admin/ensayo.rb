ActiveAdmin.register Ensayo do

# Muestra el index de la pagina administrativa de noticias.
	index do
		column "ID Ensayo", :id
		column "Título", :titlo
		column "Autor", :autor
		column "Fecha Creación", :created_at
		actions
	end

	# Opciones para que se envpien los parámetros al controlador
	permit_params :titlo, :pdf, :autor

	# Opciones del menú
	menu label: "Ensayos"

	# Opciones del formulario
	form do |f|
		inputs 'Detalle' do
			input :titlo, label: "Título Ensayo"
			input :autor, label: "Autor"
			input :pdf, label: "Insertar Documento PDF"
		end
		
		f.submit "Guardar Ensayo"
	end

	# Opciones del la pagina de muestra la noticia en administración
	show do
		panel "Detalle Noticia" do
			h3 ensayo.titlo
			h4 ensayo.autor
			h5 ensayo.created_at
		end
	end


end
