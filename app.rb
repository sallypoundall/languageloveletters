require 'sinatra'
require 'pony'
require 'mongoid'
require 'json'

## Mongoid setup
## =============

Mongoid.load!("mongoid.yml")

class User
  include Mongoid::Document
end

## Email setup
## ===========

Pony.options = { 
  :via => 'smtp',
  :via_options => {
      :address              => 'smtp.gmail.com',
      :port                 => '587',
      :enable_starttls_auto => true,
      :user_name            => ENV['USER_NAME'],
      :password             => ENV['PASSWORD'],
      :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
      :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
    }
  }

## Sinatra app
## ===========

get '/' do
    @count = User.count
    erb :index

end

get '/options' do
    erb :options
end


# FRENCH FINAL ----------------------------------------------------------

get '/fr1/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :aime
end

get '/fr2/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :baisers
end

get '/fr3/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :rose
end

get '/fr4/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :ciel
end

get '/fr5/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :demain
end


# SPANISH FINAL ----------------------------------------------------------

get '/sp1/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :amo
end

get '/sp2/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :estrellas
end

get '/sp3/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :vida
end

get '/sp4/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :manos
end

get '/sp5/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :manana
end


# ITALIAN FINAL ----------------------------------------------------------

get '/it1/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :passione
end

get '/it2/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :stelle
end

get '/it3/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :sogno
end

get '/it4/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :manos
end

get '/it5/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :manana
end


# GERMAN FINAL ----------------------------------------------------------

get '/g1/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :liebe
end

get '/g2/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :lebens
end

get '/g3/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :immer
end

get '/g4/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :meer
end

get '/g5/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :sin
end


# POLISH FINAL ----------------------------------------------------------

get '/pl1/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :serca
end

get '/pl2/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :gwiazd
end

get '/pl3/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :sercu
end

get '/pl4/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :zawsze
end

get '/pl5/:lovername/:name' do
  @name = params[:name]
  @lovername = params[:lovername]
  erb :wiesz
end


# language options ----------------------------------------------

get '/frenchromance' do
    erb :frenchromance
end

get '/spanishromance' do
    erb :spanishromance
end

get '/italianromance' do
    erb :italianromance
end

get '/germanromance' do
    erb :germanromance
end

get '/polishromance' do
    erb :polishromance
end

get '/russianromance' do
    erb :russianromance
end

# FRENCH PREVIEWS -------------------------------------------------------------

get '/fr1preview' do
  erb :aimepreview
end

get '/fr2preview' do
  erb :baiserspreview
end

get '/fr3preview' do
  erb :rosepreview
end

get '/fr4preview' do
  erb :cielpreview
end

get '/fr5preview' do
  erb :demainpreview
end


# SPANISH PREVIEWS -------------------------------------------------------------

get '/sp1preview' do
  erb :amopreview
end

get '/sp2preview' do
  erb :estrellaspreview
end

get '/sp3preview' do
  erb :vidapreview
end

get '/sp4preview' do
  erb :manospreview
end

get '/sp5preview' do
  erb :mananapreview
end


# ITALIAN PREVIEWS ----------------------------------------------------------------


get '/it1preview' do
  erb :passionepreview
end

get '/it2preview' do
  erb :stellepreview
end

get '/it3preview' do
  erb :sognopreview
end

get '/it4preview' do
  erb :zawszepreview
end

get '/it5preview' do
  erb :wieszpreview
end



# GERMAN PREVIEWS ----------------------------------------------------------------


get '/g1preview' do
  erb :liebepreview
end

get '/g2preview' do
  erb :lebenspreview
end

get '/g3preview' do
  erb :immerpreview
end

get '/g4preview' do
  erb :meerpreview
end

get '/g5preview' do
  erb :sinpreview
end



# POLISH PREVIEWS ----------------------------------------------------------------


get '/pl1preview' do
  erb :sercapreview
end

get '/pl2preview' do
  erb :gwiazdpreview
end

get '/pl3preview' do
  erb :sercupreview
end

get '/pl4preview' do
  erb :zawszepreview
end

get '/pl5preview' do
  erb :wieszpreview
end


# RUSSIAN PREVIEWS ----------------------------------------------------------------


get '/r1preview' do
  erb :r1preview
end

get '/g2preview' do
  erb :lebenspreview
end

get '/g3preview' do
  erb :immerpreview
end

get '/g4preview' do
  erb :meerpreview
end

get '/g5preview' do
  erb :sinpreview
end



# FRENCH NAMES ---------------------------------------------------------------

get '/fr1' do
  erb :names
end

get '/fr2' do
  erb :names
end


get '/fr3' do
  erb :names
end

get '/fr4' do
  erb :names
end

get '/fr5' do
  erb :names
end


# SPANISH NAMES ---------------------------------------------------------------

get '/sp1' do
  erb :names
end

get '/sp2' do
  erb :names
end


get '/sp3' do
  erb :names
end

get '/sp4' do
  erb :names
end

get '/sp5' do
  erb :names
end


# ITALIAN NAMES ---------------------------------------------------------------

get '/it1' do
  erb :names
end

get '/it2' do
  erb :names
end


get '/it3' do
  erb :names
end

get '/sp4' do
  erb :names
end

get '/sp5' do
  erb :names
end


# GERMAN NAMES ---------------------------------------------------------------

get '/g1' do
  erb :names
end

get '/g2' do
  erb :names
end


get '/g3' do
  erb :names
end

get '/g4' do
  erb :names
end

get '/g5' do
  erb :names
end


# POLISH NAMES ---------------------------------------------------------------

get '/pl1' do
  erb :names
end

get '/pl2' do
  erb :names
end


get '/pl3' do
  erb :names
end

get '/pl4' do
  erb :names
end

get '/pl5' do
  erb :names
end


# sent messages -------------------------------------------------


post '/options' do
    language = params[:language]

    if language == 'French'
        redirect '/frenchromance'
    elsif language == 'Spanish'
        redirect '/spanishromance'
    elsif language == 'Italian'
        redirect '/italianromance'
    elsif language == 'German'
      redirect '/germanromance'
    elsif language == 'Polish'
      redirect '/polishromance'
    else 
      redirect '/russianromance'
    end
end


# MESSAGE options -----------------------------------------------

post '/frenchromance' do
    message = params[:message]

    if message =='1'
      redirect '/fr1'
    elsif message =='2'
      redirect '/fr2'
    elsif message == '3'
      redirect '/fr3'
    elsif message == '4'
      redirect '/fr4'
    elsif message == '5'
      redirect '/fr5'
    end
end

post '/spanishromance' do
    message = params[:message]

    if message =='1'
      redirect '/sp1'
    elsif message =='2'
      redirect '/sp2'
    elsif message == '3'
      redirect '/sp3'
    elsif message == '4'
      redirect '/sp4'
    elsif message == '5'
      redirect '/sp5'
    end
end

post '/italianromance' do
    message = params[:message]

    if message =='1'
      redirect '/it1'
    elsif message =='2'
      redirect '/it2'
    elsif message == '3'
      redirect '/it3'
    elsif message == '4'
      redirect '/it4'
    elsif message == '5'
      redirect '/it5'
    end
end

post '/germanromance' do
    message = params[:message]

    if message =='1'
      redirect '/g1'
    elsif message =='2'
      redirect '/g2'
    elsif message == '3'
      redirect '/g3'
    elsif message == '4'
      redirect '/g4'
    elsif message == '5'
      redirect '/g5'
    end
end

post '/polishromance' do
    message = params[:message]

    if message =='1'
      redirect '/pl1'
    elsif message =='2'
      redirect '/pl2'
    elsif message == '3'
      redirect '/pl3'
    elsif message == '4'
      redirect '/pl4'
    elsif message == '5'
      redirect '/pl5'
    end
end

post '/russianromance' do
    message = params[:message]

    if message =='1'
      redirect '/r1'
    elsif message =='2'
      redirect '/r2'
    elsif message == '3'
      redirect '/r3'
    elsif message == '4'
      redirect '/r4'
    elsif message == '5'
      redirect '/r5'
    end
end


# FRENCH POST -----------------------------------------------------------------------------

post '/fr1' do
  @message = 'fr1'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/fr2' do
  @message = 'fr2'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/fr3' do
  @message = 'fr3'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/fr4' do
  @message = 'fr4'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/fr5' do
  @message = 'fr5'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end


# sPANISH POST -----------------------------------------------------------------------------

post '/sp1' do
  @message = 'sp1'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/sp2' do
  @message = 'sp2'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/sp3' do
  @message = 'sp3'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/sp4' do
  @message = 'sp4'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/sp5' do
  @message = 'sp5'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

# ITALIAN POST -----------------------------------------------------------------------------

post '/it1' do
  @message = 'it1'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/it2' do
  @message = 'it2'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/it3' do
  @message = 'it3'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/it4' do
  @message = 'it4'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/it5' do
  @message = 'it5'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end


# GERMAn POST -----------------------------------------------------------------------------

post '/g1' do
  @message = 'g1'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/g2' do
  @message = 'g2'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/g3' do
  @message = 'g3'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/g4' do
  @message = 'g4'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/g5' do
  @message = 'g5'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

# POLISH POST -----------------------------------------------------------------------------

post '/pl1' do
  @message = 'pl1'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/pl2' do
  @message = 'pl2'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/pl3' do
  @message = 'pl3'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/pl4' do
  @message = 'pl4'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/pl5' do
  @message = 'pl5'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end


# RUSSIAN POST -----------------------------------------------------------------------------

post '/fr1' do
  @message = 'fr1'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/fr2' do
  @message = 'fr2'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/fr3' do
  @message = 'fr3'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/fr4' do
  @message = 'fr4'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end

post '/fr5' do
  @message = 'fr5'
  @yourname = params[:your_name]
  @lovername = params[:lover_name]
  loveremail = params[:lover_email]

  Pony.mail( :to => loveremail,
             :subject => "<%= @yourname %> has sent you a love message",
             :body => erb(:email, :layout => false)   )
  u = User.new
  u.save

  erb :sent
end