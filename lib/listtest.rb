require '../lib/linkedlist'

list = LinkedList.new
#Testing append
5.times { |i| list.append(i) }
#Testing prepend
('a'..'e').each { |c| list.prepend(c) }



puts "The value at index 4: '#{list.at(4)}'"
puts "The value at index 20: '#{list.at(20)}'"

puts "There are #{list.size} nodes in the linked list."
puts "The first node in the list is '#{list.head.value}'."
puts "The last node in the list is '#{list.tail}'."
list.pop
puts "Removing the last node in the list. The new last node is '#{list.tail}'."
puts "Does the list contain 'a'?: #{list.contains?('a')}."
puts "Does the list contain '2z'?: #{list.contains?('2z')}."
puts "'2' is at the index of #{list.find('2'.to_i)}."
puts list.to_s
list.insert_at('z', 1)
list.insert_at('20', 10)
list.insert_at('x', 6)
puts list.to_s