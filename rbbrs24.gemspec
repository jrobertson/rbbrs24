Gem::Specification.new do |s|
  s.name = 'rbbrs24'
  s.version = '0.1.1'
  s.summary = 'Experiment with submitting Ruby code from the browser to be executed on the server. Recommended for private use only.'
  s.authors = ['James Robertson']
  s.files = Dir["lib/rbbrs24.rb"]
  s.signing_key = '../privatekeys/rbbrs24.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/rbbrs24'
end
