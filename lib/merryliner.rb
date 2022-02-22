# frozen_string_literal: false

require_relative "merryliner/version"

module Merryliner
  class Error < StandardError; end

  def self.execute(string, column_length)
    words_array = string.split(" ")
    character_count = 0
    current_column = 1
    columns_array = [[]]
    output_text = ""


    words_array.each do |word|
      columns_array[current_column - 1].push(word)
      character_count += word.length + 1

      if character_count >= column_length
        current_column += 1
        character_count = 0
        columns_array.push([])
      end
    end

    columns_array.each do |column|
      column.join(" ")
    end

    columns_array.join("\n")
  end
end
