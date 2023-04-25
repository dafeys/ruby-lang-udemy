module AppStore

  App = Struct.new(:name, :developer, :version)

  APPS = [
    App.new(:Chat, :facebook, 2.0),
    App.new(:Twitter, :twitter, 5.9),
    App.new(:Weather, :yahoo, 10.1)
  ]

  def self.find_app(name)
    APPS.find { |app| app.name == name}
  end
end