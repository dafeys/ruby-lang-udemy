require_relative 'app_store'

# a class that emulates a gadget
class Gadget

  # attr_writer :password
  attr_reader :production_number, :apps
  attr_accessor :username

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
    @apps = []
  end

  def to_s
    "Gadget: #{production_number} user: #{username}
    made form: #{self.class}  ID: #{object_id}"
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find { |installed_app| installed_app.name == name}
    apps.delete(app) unless app.nil?
  end

  def reser(username, password)
    self.username = username
    self.password = password
    self.apps = []
  end

  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end

  private

  attr_writer :apps

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
p phone.apps

phone.install_app(:Chat)
phone.install_app(:Twitter)

p phone.apps

phone.delete_app(:Chat)

p phone.apps

# phone = Gadget.new('user_1', '123456Seven')
# #puts phone.password

# phone.password = '12345Six'
# #puts phone.password

# # p phone.production_number # private method can't be called
