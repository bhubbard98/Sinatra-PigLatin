require 'rubygems'
require 'rspec'
require 'pry'

require_relative '../lib/pig_latin_translator.rb'

describe PigLatinTranslator do

  let(:translator) {PigLatinTranslator.new}

  describe 'translate' do
    context "the word begins with consonants" do
      it "removes leading consonants before first vowel, appending consonants + 'ay' to the end of the word"

      expect("glove").to eq("oveglay")
    end

    context "the word begins with vowels" do
      it "adds 'way' to the end of the word"
      expect("egg").to eq("eggway")
    end

    context "'y' is encountered before a vowel" do
      context "'y' is the first letter in the word" do
        it "removes 'y' and appends it to the end of the string followed by 'ay'"
        expect("egg").to eq("ellowyay")
      end

      context "'y' is not the first letter in the word" do
        it "removes the preceding consonants and appends them to the end of the word followed by 'ay'"
        expect("rhythm").to eq("ythmrhay")
      end
    end
  end



end

