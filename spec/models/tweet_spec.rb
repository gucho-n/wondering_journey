require 'rails_helper'
RSpec.describe Tweet, type: :model do
  before do
      @tweet = FactoryBot.build(:tweet)
  end
  describe 'Tweet投稿' do
    context '新規登録がうまくいくとき' do
      it "nickname/password/emailが入っていると登録できる" do
        @user.password = "000000"
        @user.password_confirmation = "000000"
        expect(@user).to be_valid
      end  
    end
    context '新規登録がうまくいかない時' do
      it "nicknameが空だと登録できない" do
      
        @user.nickname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end