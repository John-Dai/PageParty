json.array!(@applied_lines) do |applied_line|
  json.extract! applied_line, :id, :code
  json.url applied_line_url(applied_line, format: :json)
end
