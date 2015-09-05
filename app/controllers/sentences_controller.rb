class SentencesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @structure = Structure.find(params[:id])
    @sentence = Sentence.new({:structure_id => params[:id]})
  end

  def create
    sentence = Sentence.new(sentences_params)
    if sentence.save
      redirect_to(:controller => 'structures', :action => 'show', :id => sentence.structure.id)
    else
      render('new')
    end
  end

  def edit
    @sentence = Sentence.find(params[:id])
  end

  def update
    @sentence = Sentence.find(params[:id])
    if @sentence.update_attributes(sentences_params)
        redirect_to(:controller => 'sentences', :action => 'show', :id => @sentence.id)
        flash[:notice] = "'#{@sentence.id}' updated successfully"
    else
      flash[:notice] = "Problem with the update :-("
      render('edit')      
    end
  end

  def delete
  end

  private

  def sentences_params
    params.require(:sentence).permit(:structure_id, :sentence, :phonetic_version, sentence_translation_attributes: [:sentence_id, :translation, :language_id])
  end  
end
