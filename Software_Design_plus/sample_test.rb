require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    # 通常のテスト
    assert_equal 'RUBY', 'ruby'.upcase
    # 失敗るする場合のテスト
    assert_equal 'RUBY', 'ruby'.capitalize
    # 実行中にエラーが発生する場合のテスト
    assert_equal 'RUBY', nil.upcase
  end
end