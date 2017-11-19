require_relative '../bubble'
require_relative '../roll_dice'

describe 'All Specs' do

  context 'Bubble' do
    it 'sorts an array' do
      expect(sort_algo(["celery", "carrot", "cabbage", "tomato"]))
        .to eql(["cabbage", "carrot", "celery", "tomato"])
    end
  end

  context 'Roll Dice' do
    it 'can give probability of returning a specific sum given a certain amount of cubic dice' do
      expect(rolldice_sum_prob(11, 2).round(5)).to match(0.05556)
      expect(rolldice_sum_prob(8, 2).round(5)).to match(0.13889)
      expect(rolldice_sum_prob(8, 3).round(5)).to match(0.09722)
    end
  end
end
