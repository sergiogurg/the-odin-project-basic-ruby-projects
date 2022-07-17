class SubStrings
  # An initializer wasn't needed because #execute is a class method (self.execute), not an instance method
  
  def self.execute(string, dictionary)
    string_array = string.downcase.split
    result = Hash.new(0)
    string_array.each do |word|
      dictionary.reduce(result) do |result, value|
        if word.include?(value)
          result[value] += 1
        end
        result
      end
    end
    result
  end

end
