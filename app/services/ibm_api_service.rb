class IbmApiService

  def self.analyze(text)
    response = base_conn.get('/v3/tone') do |req|
      # req.body = {'text' => text}.to_json
      req.params['version']='2017-09-21'
      req.params['text'] = text
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  # def self.base_conn
  #   Faraday.new(
  #     url: 'https://api.us-south.tone-analyzer.watson.cloud.ibm.com',
  #     headers: {'Content-Type' => 'application/json'},
  #     params: {version: '2017-09-21'}
  #   ) do |conn|
  #     conn.basic_auth('apikey', ENV['IBM_API_KEY'])
  #   end
  # end

  def self.base_conn
    Faraday.new(url: 'https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/f7a8d152-93c5-4c8f-ad5f-5b5a4fe172fe') do |connection|
      connection.basic_auth('apikey', ENV['IBM_API_KEY'] )
    end
  end

end
