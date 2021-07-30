class IBMService
  def self.search(term)
    conn = Faraday.new(url: 'https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/f7a8d152-93c5-4c8f-ad5f-5b5a4fe172fe/v3/tone')
    response = conn.get('/fdc/v1/foods/search') do |req|
      req.params[:api_key] = ENV['IBM_API_KEY']
    end

    JSON.parse(response.body, symbolize_names: true)
  end
end
