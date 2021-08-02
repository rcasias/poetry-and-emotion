class TonePoros
  attr_reader :tone

  def initialize(attrs)
    @tone = attrs[:document_tone][:tones][0][:tone_name]
  end
end
