require 'rails_helper'
RSpec.describe Tweet, type: :model do
  before do
      @tweet = FactoryBot.build(:tweet)
  end
  describe 'Tweet投稿' do
    context '新規投稿がうまくいくとき' do
      it "name,address,recommend,costが入っていると投稿できる" do
        expect(@tweet).to be_valid
      end  
    end
    context '新規投稿がうまくいくとき' do
      it "nameが空だと登録できない" do
        @tweet.name = ""
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Name can't be blank")
      end
      it "addressが空だと登録できない" do
        @tweet.address = ""
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Address can't be blank")
      end
      it "recommendが空だと登録できない" do
        @tweet.recommend = ""
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Recommend can't be blank")
      end
      it "costが空だと登録できない" do
        @tweet.cost = ""
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Cost can't be blank")
      end 
    end
  end
end