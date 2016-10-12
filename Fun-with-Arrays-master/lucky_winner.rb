system 'clear'
# transform array into "first last"
# use sample to get finalists
# use shuffle to randomize finalists
# user first to get winner
#
# Methods to use:
#   each
#   split
#   join
#   shuffle
#   sample
#   first
#   reverse



students = [
  "Badart, Will",
  "Cervantes, Esmeralda",
  "Devey, Catherine",
  "Dillon, Katherine",
  "Donovan, Maeve",
  "Maher, Jamie",
  "McGrath, Michelle",
  "McNamara, Nancy",
  "Reilly, James",
  "Sirdeshpande, Gaurav",
  "Turley, Erin"
  ]

#create a new array to hold formated names for selection

news_students=array.new

on
new_students=[]


#loop through students and populate new array with formated names

students.each do |student|
  student_name=student.split(',')
  student_name.reverse!

  new_students<<student_name.join(' ').strip
end

puts new_students

#get the finalists

finalists = new_students.shuffle.first(3)
finalists=new_students.sample(3)

#use puts to write out the top three

puts "\n\n\nThe finalsists are..."
puts finalists

#cheat and add me to the list

finalists<< "Jonathan Arp"

#choose a winner

winner = finalists.shuffle.first

#let us know

puts "\n\n And the winner is\n\n"
puts winner
