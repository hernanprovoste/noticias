ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    
    columns do
        column do
            panel "Noticias Recientes" do
                table_for Notice.order("created_at desc").limit(5) do
                    column "Título de la Noticia", :title do |notice|
                        link_to notice.title, [:admin, notice]
                    end
                    column "Fecha de Creación", :created_at
                end
                strong {link_to "Ver todas las noticias", admin_notices_path }
            end
        end

        column do
            panel "Opiniones Recientes" do
                table_for Opinion.order("created_at desc").limit(5) do
                    column "Título de la Opinión", :title do |opinion|
                        link_to opinion.title, [:admin, opinion]
                    end
                    column "Fecha de Creación", :created_at
                end
                strong {link_to "Ver todas las opiniones", admin_opinions_path }
            end
        end

        column do
            panel "Ensayos Recientes" do
                table_for Ensayo.order("created_at desc").limit(5) do
                    column "Título del Ensayo", :titlo do |ensayo|
                        link_to ensayo.titlo, [:admin, ensayo]
                    end
                    column "Fecha de Creación", :created_at
                end
                strong {link_to "Ver todas los ensayos", admin_ensayos_path }
            end
        end
    end


    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
