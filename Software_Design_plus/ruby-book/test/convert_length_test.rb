require 'minitest/autorun'
require './lib/convert_length'

class ConvertLengthTest < Minitest::Test
  def test_covert_length
    #文字列バージョン
    # assert_equal 39.37, convert_length(1, 'm', 'in')
    # assert_equal 0.38, convert_length(15, 'in', 'm')
    #シンボルバージョン
    # assert_equal 39.37, convert_length(1, :m, :in)
    # assert_equal 0.38, convert_length(15, :in, :m)
    # assert_equal 10670.73, convert_length(35000, :ft, :m)
    #シンボル詳細版
    assert_equal 39.37, convert_length(1, form: :m, to: :in)
    assert_equal 0.38, convert_length(15, form: :in,to: :m)
    assert_equal 10670.73, convert_length(35000, form: :ft, to: :m)
    
  end
end