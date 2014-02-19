require 'rubygems'
require 'sinatra'
require_relative 'lib/pig_latin_translator.rb'


set :bind, '0.0.0.0'

get '/translate' do
  erb :translate
end

post '/translate' do
  translator = PigLatinTranslator.new
  @translated = translator.translate(params[:word])
  erb :result
end
