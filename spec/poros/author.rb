require 'rails_helper'

describe 'Author' do
  it 'reads' do
    first = {
              "title": "A Song of Autumn",
              "author": "Adam Lindsay Gordon",
              "lines": [
              "‘WHERE shall we go for our garlands glad",
              "At the falling of the year,",
              "When the burnt-up banks are yellow and sad,",
              "When the boughs are yellow and sere?",
              "Where are the old ones that once we had,",
              "And when are the new ones near?",
              "What shall we do for our garlands glad",
              "At the falling of the year?’",
              "‘Child! can I tell where the garlands go?",
              "Can I say where the lost leaves veer",
              "On the brown-burnt banks, when the wild winds blow,",
              "When they drift through the dead-wood drear?",
              "Girl! when the garlands of next year glow,",
              "You may gather again, my dear—",
              "But I go where the last year’s lost leaves go",
              "At the falling of the year.’"
              ],
              "linecount": "16"
              }
    content = Author.new(first)

    expect(content.title).to eq "A Song of Autumn"
    expect(content.author).to eq "Adam Lindsay Gordon"
    expect(content.lines[0]).to eq "‘WHERE shall we go for our garlands glad"
    expect(content.linecount).to eq "16"     
  end
end
