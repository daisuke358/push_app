class CreateNotification
  include HTTParty

  API_URI = 'https://onesignal.com/api/v1/notifications'.freeze

  def self.call(*args)
    new(*args).call
  end

  def initialize(contents:, type:)
    @contents = contents
    @type     = type
  end

  def call
    HTTParty.post(API_URI, headers: headers, body: body)
  end

  private

  attr_reader :contents, :type

  def headers
    {
      'Authorization' => 'Basic MjcyM2I4ZjAtZDkxMi00MDM1LTk5MTQtNmYzODBkMDE0OGFj',
      'Content-Type'  => 'application/json'
    }
  end

  def body
    {
      'app_id' => '7dd000b2-5e80-4c0c-a800-ba27d929dcc2',
      'url'    => 'localhost:3000',
      'data'   => { 'type': type },
      'included_segments' => ['All'],
      'contents' => contents
    }.to_json
  end
end