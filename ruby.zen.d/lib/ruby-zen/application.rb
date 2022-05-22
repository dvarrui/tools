
require 'yaml'
require_relative 'params'

class Application
  include Params

  attr_reader :lang
  attr_reader :data

  def initialize(language = :es)
    @lang = language
    @data = load_data
  end

  def rules
    @data[@lang] || :unknown
  end

  private

  def load_data
    basedir = File.dirname(__FILE__)
    filepath = File.join(basedir, 'files', ZEN_FILENAME)
    YAML.load(File.read(filepath))
  end
end
