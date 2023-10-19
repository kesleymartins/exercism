class Acronym
  def self.abbreviate(string)
    string.gsub(/[-,]/, ' ').split(' ').map { |word| word[0] }.join.upcase
  end
end
