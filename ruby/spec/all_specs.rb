require_relative '../bubble'
require_relative '../roll_dice'
require_relative '../min_factor_distance'
require_relative '../least_common_multiple'
describe 'All Specs' do

  context 'Bubble' do
    it 'sorts an array' do
      expect(sort_algo(["celery", "carrot", "cabbage", "tomato"]))
        .to eql(["cabbage", "carrot", "celery", "tomato"])
    end
  end

  context 'Min Factor Distance' do
    it 'can find min distance between factors' do
      expect(min_distance(8)).to eql(1)
      expect(min_distance(13013)).to eql(2)
    end
  end

  context 'Least Common Multiple' do
    it 'can return least common multiple' do
      expect(lcm(2,5)).to eql(10)
      expect(lcm(2,3,4)).to eql(12)
      expect(lcm(9)).to eql(9)
      expect(lcm(0)).to eql(0)
      expect(lcm(0,1)).to eql(0)
      expect(lcm(17, 20, 4, 15, 4, 18, 12, 14, 20, 19, 2, 14, 13, 7)).to eql(5290740)
    end
  end

  context 'Roll Dice' do
    it 'can give probability of returning a specific sum given a certain amount of cubic dice' do
      expect(rolldice_sum_prob(11, 2).round(5)).to match(0.05556)
      expect(rolldice_sum_prob(8, 2).round(5)).to match(0.13889)
      expect(rolldice_sum_prob(8, 3).round(5)).to match(0.09722)
    end

    it "3 tetrahedral dice" do
      expect(reg_sum_hits(3, 4)).to eql([[3, 1], [4, 3], [5, 6], [6, 10],
      [7, 12], [8, 12], [9, 10], [10, 6], [11, 3], [12, 1]])
    end

    it "4 tetrahedral dice" do
      expect(reg_sum_hits(4, 4)).to eql([[4, 1], [5, 4], [6, 10],
      [7, 20], [8, 31], [9, 40], [10, 44], [11, 40], [12, 31], [13, 20],
      [14, 10], [15, 4], [16, 1]])
    end

    it "3 cubic dice" do
      expect(reg_sum_hits(3, 6)).to eql([[3, 1], [4, 3], [5, 6],
      [6, 10], [7, 15], [8, 21], [9, 25], [10, 27], [11, 27], [12, 25],
      [13, 21], [14, 15], [15, 10], [16, 6], [17, 3], [18, 1]])
    end

    it "4 cubic dice" do
      expect(reg_sum_hits(4, 6)).to eql([[4, 1], [5, 4], [6, 10],
      [7, 20], [8, 35], [9, 56], [10, 80], [11, 104], [12, 125],
      [13, 140], [14, 146], [15, 140], [16, 125], [17, 104], [18, 80],
      [19, 56], [20, 35], [21, 20], [22, 10], [23, 4], [24, 1]])
    end
  end
end
