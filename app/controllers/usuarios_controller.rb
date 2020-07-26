class UsuariosController < ApplicationController
    def new
    end


    def create
        #render plain: params[:usuarios].inspect
        @usuario = Usuario.new usuarios_params
        @usuario.save
    end

    private

    def usuarios_params
        params.require(:usuarios).permit(:value)
    end
end
