json.array!(@vote_lines) do |vote_line|
  json.extract! vote_line, :id, :code, :votes
  json.url vote_line_url(vote_line, format: :json)
end
