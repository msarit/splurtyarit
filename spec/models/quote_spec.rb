require 'rails_helper'

RSpec.describe Quote, type: :model do
  it "will be invalid with an empty saying" do
    quote = FactoryBot.build(:quote, saying: "")

    expect(quote).not_to be_valid
  end

  it "will be invalid with a saying less than 3 characters" do
    quote = FactoryBot.build(:quote, saying: "Bo")

    expect(quote).not_to be_valid
  end

  it "will be invalid with a saying more than 140 characters" do
    quote = FactoryBot.build(:quote, saying: "ajdbakj dakjbdaj djkabdajbdk d jabdjka djadbajk fdalj fabf afb kdkqbdkqj djdbqkj djq dlqjbejq qjlqjbelqbe,qjf qfkjqbkqjbr qljrbqkjbrkjfbakj t")

    expect(quote).not_to be_valid
  end

  it "will be invalid with an empty author" do
    quote = FactoryBot.build(:quote, author: "")

    expect(quote).not_to be_valid
  end

  it "will be invalid with an author less than 3 characters" do
    quote = FactoryBot.build(:quote, author: "Bo")

    expect(quote).not_to be_valid
  end

  it "will be invalid with an author more than 50 characters" do
    quote = FactoryBot.build(:quote, author: "gwendolyngwendolyngwendolyngwendolyngwendolyngwendolyn")

    expect(quote).not_to be_valid
  end
end