class Gadget

  # attr_writer :password
  attr_reader :production_number
  attr_accessor :username

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
  end


  def to_s
    "Gadget: #{@production_number} user: #{@username}
    made form: #{self.class}  ID: #{self.object_id}"
  end

  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end

  private

  def generate_production_number
    start_d = rand(100..3000)
    end_d = rand(400..8999)
    alphabet = ('A'..'Z').to_a
    number = 'UA'
    5.times { number << alphabet.sample }
    "#{start_d}_#{number}-#{end_d}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end

end



phone = Gadget.new('user_1', '123456Seven')
puts phone.password

phone.password = '12345Six'
puts phone.password

# p phone.production_number # private method can't be called

