

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n^2) depending on amount of strings, and length of strings for sorting 
# Space Complexity: O(n) lengths of arrays

def grouped_anagrams(strings)
  strings = {}

  strings.each do |string|
    # https://stackoverflow.com/questions/9464065/how-to-sort-a-strings-characters-alphabetically
    alphabetized_string = string.chars.sort.join
    if strings[alphabetized_string]
      strings[alphabetized_string] << [string]
    else
      strings[alphabetized_string] = [string]
    end
  end

  return strings.values
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: ?
# Space Complexity: ?
def top_k_frequent_elements(list, k)
  # list = [1,1,1,2,2,3]
  # k = 2
  return [] if list == []

  counter = {}

  list.each do |value|
    if counter[value]
      counter[value] += 1
    else
      counter[value] = 1
    end
  end

  puts counter

  ordered = counter.sort_by{ |key, value| value } 

  k_most = []

  k.times do |i|
    k_most << ordered[-i]
  end

  return k_most
end


# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same 
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?
def valid_sudoku(table)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end