class Sentence < ActiveRecord::Base

	belongs_to :structure
	has_one :sentence_translation

	accepts_nested_attributes_for :sentence_translation,
    :allow_destroy => true,
    :reject_if     => :all_blank

    validates_presence_of :sentence
    validates_presence_of :meaning # I think??


	scope :highest_score_first, lambda { order("sentences.score DESC") }


end
