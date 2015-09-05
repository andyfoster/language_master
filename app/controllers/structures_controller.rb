class StructuresController < ApplicationController
  def index
    @structures = Structure.all #highest_score_first
  end

  def show
    @structure = Structure.find(params[:id])
  end

  def new
    @structure = Structure.new
  end

  def create
    structure = Structure.new(structures_params)
    if structure.save
      redirect_to(:action => 'new', :controller => 'sentences', :id => structure.id)
    else
      render('new')
    end
  end

  def edit
  end

  def delete
  end

  private

  def structures_params
    params.require(:structure).permit(:name, :user_id, :english_meaning, :romaji, :formation, :related, :jlpt_level, :notes, :example)
  end


end
