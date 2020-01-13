class MAIL

	attr_accessor :mailid,:n,:z,:arr, :c,:t
	def initialize
	 self.mailid = []
	 self.arr = []
	 @c = 0
	 @t =0
	end
	def get
	 puts "enter n:"
	 @n = gets.chomp.to_i
	 for i in 0...@n
	  puts "enter email"
	  a = gets.chomp.to_s
	  mailid.push a
	 end
	end
	def func
	 begin
	  puts "1. add mail id"
	  puts "2. display all"
	  puts "3. display only edu mail ids"
	  puts "4. search"
	  puts "5. delete mail id by value"
	  puts "6. display unique domains of all mail ids"
	  puts "7. count mail ids in given domain"
	  puts "8. exit"
	  puts ""
	  puts ""
	  puts "enter an option"
	  @z = gets.chomp
	  case @z
	   when '1'
	    puts "enter email: "
	    x = gets.chomp
	    if x.include? '@' and  x.include? '.'
	     if x.start_with? '@' or x.start_with? '.' or x.end_with? '@' or x.end_with? '.'
	      puts "mailid does not start with or end with letters or numbers!"
	     else
	      mailid.push x
	      puts "mailid is inserted"
	     end
	    else
	     puts "mailid does not include '@' or '.'"
	    end
	   when '2'
	    for i in mailid do
	     puts i
	    end
	   when '3'
	    for i in mailid do
	     if i.end_with? 'edu'
	      puts i
	     end
	    end
	   when '4'
	    puts "enter search"
	    y = gets.chomp
	    for i in mailid do
	     if i==y
	      puts "#{i} found"
	     end
	    end
	   when '5'
	    puts "enter mailid value"
	    y = gets.chomp
	    for i in mailid do
	     if i.start_with? y
	      mailid.delete i
	      puts "#{i} deleted"
	     else 
	      puts "not found"
	     end
	    end
	   when '6'
	    for i in 0...@n 
	     for j in i...@n
	      if mailid[i]==mailid[j]
	      @t = 1
	      break
	      end
	     end
	     if t==0
	      puts mailid[i]
	     end
	    end
=begin
	   when '7'
	    puts "enter domain"
	    u = gets.chomp
	    c =0
	    for i in mailid do
	     if i.include? u
	      c++
	     end
	    end
	    puts "#{c} number of mailids in #{u} domain"
	   when '8'
	    puts "exited"
	    @c = 1
=end
	  end
	 puts ""
	 puts ""
	 end while @c!=1
	end
end

obj = MAIL.new
obj.get
obj.func
