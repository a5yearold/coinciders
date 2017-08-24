json.extract! chatroom, :id, :username, :created_at, :updated_at
json.url chatroom_url(chatroom, format: :json)
