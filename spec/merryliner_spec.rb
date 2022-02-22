# frozen_string_literal: true

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
    expect(output).to eq("something else")
  end
end
