class ToneFacade
  def self.tone(text)
    data = IbmApiService.analyze(text)
    TonePoros.new(data)
  end
end
