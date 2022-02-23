#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative '../lib/ruby-zen/application'

class ApplicationTest < Minitest::Test
  def setup
    @app = Application.new
  end

  def test_default_lang
    assert_equal :es, @app.lang
  end

  def test_config_filepath
    filepath = File.join('lib',
                         Application::GEMNAME,
                         'files',
                         Application::ZEN_FILENAME)

    assert @app.config_filepath.include? filepath
  end

  def test_langs_defined
    langs = @app.data.keys
    assert_equal 2, langs.size
  end

  def test_rules_number
    rules = @app.rules
    assert_equal 3, rules.size
  end
end
