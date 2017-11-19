def rolldice_sum_prob(sum, number_of_dice)
  (1..6).to_a.repeated_permutation(number_of_dice).to_a
    .reject { |combination| combination.reduce(:+) != sum }
    .length.to_f / (6 ** number_of_dice)
end
