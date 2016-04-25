class FotosController < InheritedResources::Base

  private

    def foto_params
      params.require(:foto).permit(:title, :subtitle, :imagen)
    end
end
