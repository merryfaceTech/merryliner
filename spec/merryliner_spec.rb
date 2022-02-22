# frozen_string_literal: false

RSpec.describe Merryliner do
  it "has a version number" do
    expect(Merryliner::VERSION).not_to be nil
  end

  it "Merryliner returns a string of \'something\'" do
    output = Merryliner.execute("something", 10)
    expect(output).to eq("something")
  end

  it "Merryliner returns a string of \'something else\'" do
    output = Merryliner.execute("something else", 10)
    expect(output).to eq("something\nelse")
  end

  it "Merryliner returns a string of \'something else \\n here\' because of a 10 character limit" do
    output = Merryliner.execute("something else here", 10)
    expect(output).to eq("something\nelse here")
  end

  it "Merryliner returns a string of \'something else\\nhere\' because of a 15 character limit" do
    output = Merryliner.execute("something else here", 15)
    expect(output).to eq("something else\nhere")
  end

  it "Merryliner returns a string where line breaks occur at the limit OR at the end of the word surpassing the limit" do
    output = Merryliner.execute("something else here", 12)
    expect(output).to eq("something else\nhere")
  end
end
