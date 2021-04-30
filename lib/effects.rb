module Effects
  def self.reverse(words)
    words.split(' ').map(&:reverse).join(' ')
  end

  def self.echo(words, rate)
    words.chars.map { |c| c == ' ' ? c : c * rate }.join
  end

  def self.loud(words, level)
    words.split(' ').map { |word| word.upcase + '!' * level }.join(' ')
  end
end
