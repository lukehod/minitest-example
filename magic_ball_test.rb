#magic_ball_test.rb

require "minitest/autorun"
require_relative "magic_ball"

class MagicBallTest < Minitest::Test
  def test_ask_returns_an_answer
    magic_ball = MagicBall.new
    assert_includes MagicBall::ANSWERS, magic_ball.ask("Whatever")
  end

  def test_predefined_answers_is_array
    assert_kind_of Array, MagicBall::ANSWERS
  end

  def test_predifined_answers_in_not_empty
    refute_empty MagicBall::ANSWERS
  end
end
