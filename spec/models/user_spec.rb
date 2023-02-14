require 'rails_helper'

RSpec.describe User, type: :model do
  it '有 email' do
    user= User.new email:'zzq@163.com'
    expect(user.email).to eq 'zzq@163.com'
  end
end
