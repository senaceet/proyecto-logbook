class UsuariosController < ApplicationController
    def new
        @usuario = Usuario.new
    end

    def create
        @usuario = Usuario.new(usuarios_params)
        @usuario.save
    end

    def dash
    end

    private
        def usuarios_params
            params.require(:usuarios).permit(@algo,:secondName,:firstLastName,:secondLastName,:email,:age,:program,:password)
        end
end

=begin
@data = []
        pNombre = @data.push(params[:firstName]) 
        sNombre = @data.push(params[:secondName]) 
        pApellido = @data.push(params[:firstLastName]) 
        sApellido = @data.push(params[:secondLastName]) 
        correo = @data.push(params[:email]) 
        edad = @data.push(params[:age])
        programa = @data.push(params[:program])
        contrasena = @data.push(params[:password])
        render json: @data
        #@nombre = params[:firstName]
        @usuario = Usuario.new
        @usuario = @data
        #@nombre.nombre_usuario = @nombre
        #@nombre.save
        @data.save
=end