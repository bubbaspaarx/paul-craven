ActionMailer::Base.smtp_settings = {
  address: 'mail.privateemail.com.',
  port: 587,
  domain: 'paulcraven.com',
  user_name: ENV['NAMECHEAP_EMAIL'],
  password: ENV['NAMECHEAP_PASSWORD'],
  authentication: :plain,
  enable_starttls_auto: true
}
