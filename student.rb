class Stud
attr_accessor:name,:branch,:state,:rno,:cgpa
def initialize
@name=""
@branch=""
@state=""
@rno=0
@cgpa=0.0
end
def get
puts "enter the name ,branch ,state,roll number,cgpa"
@name=gets.chomp
@branch=gets.chomp
@state=gets.chomp
@rno=gets.chomp.to_i
@cgpa=gets.chomp.to_f
end
def disp
puts "name= #{@name}, branch= #{@branch}, state= #{@state}, rollnumber= #{@rno}, cgpa= #{@cgpa}"
end
def dispbranch(s)
 if s==@branch
   puts @name
 end
end
def dispstate(s)
 if s==@state
   puts @name
  end
 end
def search(s)
if @name.include? s
  puts "student found with #{s} as a part of #{@name}"
end
end

end
a=Array.new
begin
puts"--------------"
puts"1=add" 
puts "2=display" 
puts "3=display student by branch" 
puts "4=display student by state"
puts "5-search student by rollnumber"
puts "6-search by part of the name"
puts "7-delete by roll number"
puts "8-count and display number of students by state"
puts "9-count and display number of students by branch"
puts "10-exit"
puts "------------------"
n=gets.chomp.to_i
case n
when 1 then ob=Stud.new
ob.get
a<< ob
puts "student added"
when 2 then 
for i in a do
i.disp
end
when 3 then 
puts "enter the branch"
s=gets.chomp
for i in a do
i.dispbranch(s)
end
when 4 then
puts "enter the state"
s=gets.chomp
for i in a do
i.dispstate(s)
end
when 5 then puts "enter the roll number to search"
s=gets.chomp.to_i
for i in a do
if i.rno==s
puts "student found"
m=1
end
end
if m!=1
puts "student not found"
end
when 6 then puts "enter the second name of the student"
s=gets.chomp
for i in a do
i.search(s)
end
when 7 then puts "enter the roll num to be deleted"
s=gets.chomp.to_i
for i in a do
if i.rno==s
a.delete_at(i)
end
end
when 8 then puts "enter the state"
s=gets.chomp
cnt=0
for i in a do
if i.state==s
puts i.name
cnt=cnt+1
end
end
puts "the number of students from #{s} are #{cnt}"
when 9 then puts "enter the branch"
s=gets.chomp
cnt=0
for i in a do
if i.branch==s
puts i.name
cnt=cnt+1
end
end
puts "the number of students from #{s} dept are #{cnt}"
when 10 then
else puts "enter a valid number between 1 and 10"
end
end while n!=10
































