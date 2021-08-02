require 'rails_helper'


RSpec.describe IbmApiService do
  it "searches our API Service" do
    results = IbmApiService.analyze('im so happy')
    tone = results[:document_tone][:tones][0][:tone_name]

    expect(tone).to eq("Joy")
  end
end
