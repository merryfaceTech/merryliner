# frozen_string_literal: true

require_relative "merryliner/version"

module Merryliner
  class Error < StandardError; end

  def self.execute(string)
    string
  end
end
