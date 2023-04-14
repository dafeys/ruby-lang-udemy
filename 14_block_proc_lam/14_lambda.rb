# Proc syntax
s_proc = Proc.new {|num| num**2}

p [1,2,3].map(&s_proc)
p s_proc.call(5)

# lambda syntax
s_lambda = lambda {|num| num**2}

p [1,2,3].map(&s_lambda)
p s_lambda.call(5)
puts

# ----------------  difference between lambda and Proc  -----------------------#
# cares about number of arrgs

some_proc = Proc.new{|name, age| "Your name is #{name} age is #{age}"}

p some_proc.call("Joe", 23)
p some_proc.call(43)  # Proc doesn't care about number of args


some_lambda = lambda{|name, age| "Your name is #{name} age is #{age}"}

p some_lambda.call("Joe", 23)
#p some_lambda.call(43)  # get error here, lambda do care about missing arrgs
puts

# return values
def lambda_diet 
  status = lambda { return "You gave in"}  # lambda return back to method
  status.call
  "You completed the diet!"  # return of the method
end

result = lambda_diet
p result
puts

def proc_diet 
  status = Proc.new { return "You gave in"}  # return for entire method, and no back control to the method
  status.call
  "You completed the diet!"  # never reach this line
end

result = proc_diet
p result
puts


# -----------------   How improve code with lambda?   ---------------------- #
# initial code
def convert_to_eur(dollars)
  dollars * 0.95 if dollars.is_a?(Numeric)
end

def convert_to_uah(dollars)
  dollars * 38 if dollars.is_a?(Numeric)
end

def convert_to_jpy(dollars)
  dollars * 91 if dollars.is_a?(Numeric)
end

p convert_to_eur(1000)
p convert_to_jpy(1000)
p convert_to_uah(1000)
puts

# switch to one method design
def convert(dollars, currency)
  yield(dollars, currency) if dollars.is_a?(Numeric)
end

p convert(1000, "eur"){|dollars| dollars*0.95}  # we need to rewrite to block each time
p convert(1000, "uah"){|dollars| dollars*38}
p convert(1000, "jpy"){|dollars| dollars*91}
puts

# define 3 lambdas
to_eur = lambda{|dollars| dollars*0.95}
to_uah = lambda{|dollars| dollars*38.0}
to_jpy = lambda{|dollars| dollars*91.0}

def convert(dollars, currency_lambda)
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

p convert(1000, to_eur)
p convert(1000, to_uah)
p convert(1000, to_jpy)

p [233, 54354, 654].map(&to_uah)







