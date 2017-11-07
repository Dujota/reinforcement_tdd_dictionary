class Dictionary

  def initialize
    @words = {}
  end

  def entries
    @words
  end

  def add(add_word)
    if add_word.class == Hash
      add_word.each { |word, definition| @words[word] = definition }
    else
      @words[add_word] = nil
    end
  end

  def keywords
    @words.keys.sort

  end

  def include?(keyword)
    @words.key?(keyword)
  end

  def find(search)
    @words.select{ |key, value| key.start_with?(search)}
  end

end
