class Gadget

  attr_accessor :username
  # def username
  #   @username
  # end

  # def username=(new_name)
  #   @username = new_name
  # end

  attr_writer :password
  # def password=(new_password)
  #   @password = new_password
  # end

  attr_reader :production_number
  # def production_number
  #   @production_number
  # end

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{('A'..'Z').to_a.sample}-#{rand(1..1000)}"
  end

  # def initialize
  #   @username = "User_#{rand(1..100)}"
  #   @password ='secret'
  #   @production_number = "#{('A'..'Z').to_a.sample}-#{rand(1..1000)}"
  # end

  def to_s
    "Gadget: #{@production_number}\n  user: #{@username}\n  made form: #{self.class}\n  ID: #{self.object_id}"
  end
end


g1 = Gadget.new('ThinkPad', 'super_pass')
g2 = Gadget.new('Casio wr-50', 'casio')
g3 = Gadget.new('Logi', 'm-590')

p g1.username
g2.username = 'Casio W-59'
p g2.username

g3.password = 'dfdfd'
p g3.production_number

# phone = Gadget.new

# p phone
# p phone.instance_variables

# puts phone.to_s

# p phone.username
# p phone.production_number
# puts

# puts phone.username
# phone.username = 'Ruby'
# p phone.username
# puts

# phone.password ='super_secret'

# puts phone.production_number






# iphone = phone # link to object


# puts Gadget.superclass

# p phone.object_id

# puts phone.is_a?(Gadget)
# puts phone.respond_to?(:class)

# puts phone.methods.sort