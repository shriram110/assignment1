class Calci
def add(a,b)
 puts" ans= #{a+b}"
end
def sub(a,b)
 puts" ans= #{a-b}"
end
def mul(a,b)
 puts" ans= #{a*b}"
end
def div(a,b)
 puts" ans= #{a/b}"
end
def exp(a,b)
puts" ans= #{a**b}"
end
end
ob=Calci.new
begin
puts "1-addition"
puts "2-subtraction"
puts "3-multiplication"
puts "4-division"
puts "5-exponentiation"
puts "6-exit"
puts"-------------------"
n=gets.chomp.to_i
puts "enter any two numbers"
a=gets.chomp.to_i
b=gets.chomp.to_i
case n
when 1 then ob.add(a,b)
when 2 then ob.sub(a,b)
when 3 then ob.mul(a,b)
when 4 then ob.div(a,b)
when 5 then ob.exp(a,b)
when 6 then 
else puts "enter a number between 1 and 6"
end 
end while(n!=6)
