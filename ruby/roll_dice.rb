def reg_sum_hits(number_of_dice, sides)
  (1..sides).to_a.repeated_permutation(number_of_dice).to_a
    .map{|a| a.reduce(:+)}
    .sort.inject({}) do |collection, hits|
      collection[hits] ? collection[hits] += 1 : collection[hits] = 1
      collection
    end
    .to_a
end

def rolldice_sum_prob(sum, number_of_dice)
  (1..6).to_a.repeated_permutation(number_of_dice).to_a
    .reject { |combination| combination.reduce(:+) != sum }
    .length.to_f / (6 ** number_of_dice)
end
