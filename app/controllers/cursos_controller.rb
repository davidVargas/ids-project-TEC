class CursosController < ApplicationController
  
  def index
  	@cursos = Curso.all
  end

  def new
  	@curso = Curso.new
  	@cursos = Curso.all
  end

  def show
  	@curso = Curso.find(params[:id])
  end

  def edit
  	@cursos = Curso.all
  end

  # Para poder crear un curso
  def create
  	@curso = Curso.new(permit_curso)
  	if @curso.save
  		flash[:success] = "Exitoso!"
  		redirect_to curso_path(@curso)
  		#redirect_to new_curso_path
  	else
  		flash[:error] = @curso.errors.full_messages
  		redirect_to new_curso_path
  	end
  end
  # Metodo para proteger que se metan otros datos
  private
  	def permit_curso
  		params.require(:curso).permit(:codigo, :nombre, :creditos)
  	end

  # Podemos crear estos

  def delete
  	
  end

end
