module FormHelper
  def setup_sentence(sentence)
    sentence.sentence_translation ||= SentenceTranslation.new
    sentence
  end
end