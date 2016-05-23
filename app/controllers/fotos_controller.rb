class FotosController < InheritedResources::Base
  def index
    @fotos = Foto.all.order("created_at DESC")
  end
  private

    def foto_params
      params.require(:foto).permit(:title, :subtitle, :imagen)
    end
end
