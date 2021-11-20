require_relative 'linked_list'

list = LinkedList.new(Node.new('This is the initial head element'))
puts list.to_s

list.append('This node was appended!')
list.prepend('This node was prepended!')
puts list.to_s

puts "\nThis is the tail value: #{list.tail.value}"
puts "This is the head value: #{list.head.value}"
puts "The list has #{list.size} elements"
puts "The second element's value is: #{list.at(1).value}"

puts "\nPopped this element: #{list.pop.value}"
puts list.to_s

puts "\nIs there a value of '5' in the list? #{list.contains?(5)}"
puts "What is the index of 'This is the initial head element' at? #{list.find('This is the initial head element')}"
puts list.to_s
