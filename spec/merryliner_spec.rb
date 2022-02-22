# frozen_string_literal: false

RSpec.describe Merryliner do
  it "has a version number" do
    expect(Merryliner::VERSION).not_to be nil
  end

  it "Merryliner returns a string of \'something\'" do
    output = Merryliner.execute("something")
    expect(output).to eq("something")
  end

  it "Merryliner returns a string of \'something else\'" do
    output = Merryliner.execute("something else")
    expect(output).to eq("something\nelse")
  end

  it "Merryliner returns a string of \'something else \\n here\' because of a 10 character limit" do
    output = Merryliner.execute("something else here")
    expect(output).to eq("something\nelse here")
  end

  it "Merryliner returns a string of \'something else \\n here\' because of a 15 character limit" do
    output = Merryliner.execute("something else here")
    expect(output).to eq("somethingelse\n here")
  end
end
