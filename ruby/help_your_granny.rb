def tour(friends, fTowns, distTable)
  friends = friends.map{|f| f.gsub(/\D/, '')}
  distances = {}
  distTable.each {|key, value| distances[key.gsub(/\D/, '')] = value if friends.include?(key.gsub(/\D/, '')) }
  distance = distances.values.first + distances.values.last

  friends.each_with_index do |key, index|
    if friends[index + 1] && key != distances.keys.sort.last
      distance += calculate_extra_distance(distances[friends[index + 1]], distances[key])
    end
  end

  distance.to_i
end

def calculate_extra_distance(hypothenus, first_side)
  Math.sqrt((hypothenus * hypothenus) - (first_side * first_side))
end

friends1 = ["A1", "A2", "A3", "A4", "A5"]
fTowns1 = [["A1", "X1"], ["A2", "X2"], ["A3", "X3"], ["A4", "X4"]]
distTable1 = Hash["X1", 100.0, "X2", 200.0, "X3", 250.0, "X4", 300.0]

friends2 = ["B1", "B2"]
fTowns2 = [["B1", "Y1"], ["B2", "Y2"], ["B3", "Y3"], ["B4", "Y4"], ["B5", "Y5"]]
distTable2 = {"Y1"=>50.0, "Y2"=>70.0, "Y3"=>90.0, "Y4"=>110.0, "Y5"=>150.0}

friends3 = ["B1", "B2", "B4", "B5", "B6"]
fTowns3 = [["B1", "Y1"], ["B2", "Y2"], ["B3", "Y3"], ["B4", "Y4"], ["B5", "Y5"]]
distTable3 = {"Y1"=>60.0, "Y2"=>80.0, "Y3"=>100.0, "Y4"=>110.0, "Y5"=>150.0}


p tour(friends3, fTowns3, distTable3) == 440
p tour(friends2, fTowns2, distTable2) == 168
p tour(friends1, fTowns1, distTable1) == 889

# Your granny, who lives in town X0, has friends. These friends are given in an array, for example: array of friends is
#
# [ "A1", "A2", "A3", "A4", "A5" ].
# The order of friends is this array must not be changed since this order gives the order in which they will be visited.
#
# These friends inhabit towns and you have an array with friends and towns, for example:
#
# [ ["A1", "X1"], ["A2", "X2"], ["A3", "X3"], ["A4", "X4"] ]
# or
# (C)
# {"A1", "X1", "A2", "X2", "A3", "X3", "A4", "X4"}
# which means A1 is in town X1, A2 in town X2... It can happen that we don't know the town of one of the friends.
#
# Your granny wants to visit her friends and to know how many miles she will have to travel.
#
# You will make the circuit that permits her to visit her friends. For example here the circuit will contain:
#
# X0, X1, X2, X3, X4, X0
# and you must compute the total distance
#
# X0X1 + X1X2 + .. + X4X0.
# For the distance, fortunately, you have a map (and a hashmap) that gives each distance X0X1, X0X2 and so on. For example:
#
# [ ["X1", 100.0], ["X2", 200.0], ["X3", 250.0], ["X4", 300.0] ]
# or (Coffeescript, Javascript)
# ['X1',100.0, 'X2',200.0, 'X3',250.0, 'X4',300.0 ]
# or
# (C)
# {"X1", "100.0", "X2", "200.0", "X3", "250.0", "X4", "300.0"}
# which means that X1 is at 100.0 miles from X0, X2 at 200.0 miles from X0, etc...
#
# More fortunately (it's not real life, it's a story...), the towns X0, X1, ..Xn are placed in the following manner:
#
# X0X1X2 is a right triangle with the right angle in X1, X0X2X3 is a right triangle with the right angle in X2, etc...
#
# If a town Xi is not visited you will suppose that the triangle
#
# X0Xi-1Xi+1 is still a right triangle.
#
# (Ref: https://en.wikipedia.org/wiki/Pythagoras#Pythagorean_theorem)
#
