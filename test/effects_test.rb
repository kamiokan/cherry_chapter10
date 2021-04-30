require 'minitest/autorun'
require_relative '../lib/effects'

class EffectTest < Minitest::Test
  def test_reverse
    assert_equal 'ybuR si !nuf', Effects.reverse('Ruby is fun!')
  end

  def test_echo
    assert_equal 'RRuubbyy iiss ffuunn!!', Effects.echo('Ruby is fun!', 2)
  end

  def test_loud
    assert_equal 'RUBY!! IS!! FUN!!!', Effects.loud('Ruby is fun!', 2)

    assert_equal 'RUBY!!! IS!!! FUN!!!!', Effects.loud('Ruby is fun!', 3)
  end

  def test__many_effects
    result = Effects.echo('Ruby is fun!', 2)
    result = Effects.loud(result, 3)
    result = Effects.reverse(result)
    assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF', result
  end
end
