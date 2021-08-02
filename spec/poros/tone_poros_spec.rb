require 'rails_helper'

describe 'Tone' do
  it 'reads' do
    first =  {:document_tone=>{:tones=>[{:score=>0.993693, :tone_id=>"joy", :tone_name=>"Joy"}]}}

    content = TonePoros.new(first)
  
    expect(content.tone).to eq "Joy"
  end
end
