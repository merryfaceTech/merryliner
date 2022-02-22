# frozen_string_literal: false

require_relative "merryliner/version"

module Merryliner
  class Error < StandardError; end

  def self.execute(string)
    if string.length > 10
      if string[10] == " "
        string[10] = "\n"
        part1, part2 = string.slice!(0...9), string
        part1 + part2
      else
        part1, part2 = string.slice!(0...10), string
        part1 + "\n" + part2
      end


    else
      string
    end
  end
end
