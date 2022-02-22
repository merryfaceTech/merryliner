# frozen_string_literal: false

require_relative "merryliner/version"

module Merryliner
  class Error < StandardError; end

  def self.execute(string, column_length)
    if string.length > column_length
      if string[column_length - 1] == " "
        string[column_length -1] = "\n"
        part1, part2 = string.slice!(0...column_length -1), string
        part1 + part2
      else
        part1, part2 = string.slice!(0...column_length), string
        part1 + "\n" + part2
      end
    else
      string
    end
  end
end
