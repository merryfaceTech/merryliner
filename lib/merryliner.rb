# frozen_string_literal: true

require_relative "merryliner/version"

module Merryliner
  class Error < StandardError; end

  def self.execute(string)
    input = string
    if input.length
      part1, part2 = input.slice!(0...10)
      part1 + "\n" + part2
    else
      string
    end
  end
end
