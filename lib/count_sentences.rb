require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    arr = self.split(/\?|\.|!/)
    arr = arr.delete_if{ |element | element.length ==0}
    number_of_sentences = arr.count
  end
end