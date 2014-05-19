

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'],
  {
      :scope => 'email,profile'


=begin
      :name => "google",
      ,
      :prompt => "select_account",
      :image_aspect_ratio => "square",
      :image_size => 50
=end
  }
end