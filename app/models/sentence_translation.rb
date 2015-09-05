class SentenceTranslation < ActiveRecord::Base

	belongs_to :sentence

	# accepts_nested_attributes_for :sentence, :reject_if => lambda { |a| a[:content].blank? }

end
