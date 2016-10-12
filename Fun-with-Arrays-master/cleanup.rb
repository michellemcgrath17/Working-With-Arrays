system 'clear'
# Sort, capitalize, and get rid of dupes
# Methods to use:
#   each
#   split
#   join
#   capitalize
#   uniq
#   sort

beatles = "John, paul, Ringo, Paul, John, George, ringo, george"

#list the current members

beatles

#turn string into array
barray = beatles.split(',')

beatles_array=beatles.split(',')

#tell us how many items are in this array

puts beatles_array.size
puts beatles_array

#for each member remove whitespace and capitalize

beatles_array.each do |b|
  b.capitalize
  b.strip
end

puts beatles_array

beatles_array.each do |b|
  b.strip!
  b.capitalize!
end

puts beatles_array

# get rid of duplicate names

beatles_array.uniq!

#tell us how many names there are

beatles_array.size

#sort them alphabetically

beatles_array.sort!

puts beatles_array

#turn array back into a string separated by commas

updated_names=beatles_array.join(', ')

# write out members names

puts updated_names
