class Arr
 attr_accessor:a
 def initialize
  @a=[]
 end
 def avg
  s=@a.sum/a.length.to_f
  puts s
 end
 def disp
  puts "entered elements"
  @a.each do |i|
    print i
    print "->"
  end
puts ""
 end
 def search(a)
  if @a.include? a
    puts "element found"
  else
    puts "element not found"
  end
 end
end
ob=Arr.new
begin
puts "----------------------"
puts "1-add value"
puts "2-minimum"
puts "3-maximum"
puts "4-sum"
puts "5-average"
puts "6-search"
puts "7-display"
puts "8-delete value by index"
puts "9-delete value"
puts "10-exit"
puts"-------------------"
n=gets.chomp.to_i
case n
when 1 then puts "enter a value to add"
b=gets.chomp.to_i
ob.a.push(b)
when 2 then puts ob.a.min
when 3 then puts ob.a.max
when 4 then puts ob.a.sum
when 5 then ob.avg
when 6 then puts "enter a value to search"
s=gets.chomp.to_i
ob.search(s)
when 7 then ob.disp
when 8 then puts "enter the index to be deleted"
d=gets.chomp.to_i
ob.a.delete_at(d)
when 9 then puts "enter the element to be deleted"
m=gets.chomp.to_i
ob.a.delete(m)
when 10 then
else puts "enter a number betwwwn 1 and 10"
end
end while n!=10



