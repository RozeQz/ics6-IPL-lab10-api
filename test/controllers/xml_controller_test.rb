# frozen_string_literal: true

require 'test_helper'

class XmlControllerTest < ActionDispatch::IntegrationTest
  test 'should check rss format' do
    get "#{xml_view_url}.rss", params: { input_number: 30 }
    assert_response :success
    assert_includes @response.headers['Content-Type'], 'application/rss'
  end
end
