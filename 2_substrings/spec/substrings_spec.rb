require_relative '../app/substrings'

describe 'Substrings project' do
  it 'when the string is formed by only 1 (one) word' do
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    string = 'BELOW'

    output = SubStrings.execute(string, dictionary)
    result = {
      'below' => 1,
      'low' => 1
    }

    expect(output).to eq(result)
  end

  it 'when the string is formed by multiple words' do
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    string = "Howdy partner, sit down! How's it going?"

    output = SubStrings.execute(string, dictionary)
    result = {
      "down" => 1,
      "go" => 1,
      "going" => 1,
      "how" => 2,
      "howdy" => 1,
      "it" => 2,
      "i" => 3,
      "own" => 1,
      "part" => 1,
      "partner" => 1,
      "sit" => 1
    }

    expect(output).to eq(result)
  end
end