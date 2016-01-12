tumblr = "#{Rails.root}/config/tublr.yml"
if File.exists? tumblr
  config = YAML.load_file(tumblr)
  config.each {|key, value| ENV[key] || ENV[key] = value.to_s}
end