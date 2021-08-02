require 'rails_helper'

describe 'ToneFacade' do
  it 'it should call facade and retrieve results' do
    text = "Defrauded I a Butterfly -- The lawful Heir -- for Thee --"
    result = ToneFacade.tone(text)

    expect(result.tone).to be_a String
    expect(result.tone).to eq("Joy")
  end
end
