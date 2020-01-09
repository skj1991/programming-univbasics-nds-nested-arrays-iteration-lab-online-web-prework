def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  array_1 = [['pepperoni', 'sausage'], ['green olives', 'green peppers'], ['onions', 'pineapple']]

  joined_array = []
  row_index = 0
  while row_index < array_1.count do
    element_index = 0
    while element_index < array_1[row_index].count do
      joined_array << "I love #{array_1[row_index][0]} and #{array_1[row_index][1]} on my pizza"
      element_index += 1
  end
    row_index += 1
end
  joined_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  array_2 = [[-1, -900], [10, 30], [0, 0], [14, 16 * -2.5], [Math.sin(1), 19]]

  outer_results = []
  row_index = 0
  while row_index < array_2.count do
    element_index = 0
    inner_results = []
    while element_index < array_2[row_index].count do
      if array_2[row_index][0] >= array_2[row_index][1]
        inner_results << array_2[row_index][0]
      else
        inner_results << array_2[row_index][1]
      end
      element_index += 1
    end
    outer_results << inner_results
    row_index += 1
  end
  outer_results
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  array_3 = [[86262, 58115], [22558, 97709], [66236, 28056], [25992, 81375], [11248, 56789], [42783, 27353], [70796, 63432], [53234, 63058], [72316, 8675309]]

  total = 0
  row_index = 0
  while row_index < array_3.count do
    element_index = 0
    while element_index < array_3[row_index].count do
      if array_3[row_index][0] && array_3[row_index][1] % 2 == 0
        total += array_3[row_index][0] + array_3[row_index][1]
      end
      element_index += 1
    end
    row_index += 1
  end
  total
end
