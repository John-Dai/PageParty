json.array!(@code_lines) do |code_line|
  json.extract! code_line, :id, :code
  json.url code_line_url(code_line, format: :json)
end
