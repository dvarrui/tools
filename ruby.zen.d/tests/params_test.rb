#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative '../lib/ruby-zen/params'

class ParamsTest < Minitest::Test

  def test_params
    langs = [ :es ]
    assert_equal String        , Params::VERSION.class
    assert_equal 'rubyzen'     , Params::NAME
    assert_equal 'ruby-zen'    , Params::GEMNAME
    assert_equal langs         , Params::LANGS
    assert_equal 'zenfile.yaml', Params::ZEN_FILENAME
  end
end
