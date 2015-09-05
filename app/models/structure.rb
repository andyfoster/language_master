class Structure < ActiveRecord::Base

	has_many :sentences

	# accepts_nested_attributes_for :sentence_translations

	# investigating how to display the sentences in order of their scores	  
	# scope :highest_score_first, lambda { order("sentences.score DESC") }

end
