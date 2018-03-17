require 'redcarpet'

def htmlize(text)
  Redcarpet::Markdown.new(Redcarpet::Render::HTML, {}).render(text)
end

input = File.open(ARGV.first);
output = File.open("output.html", "w");

output.puts(htmlize(input.read()))
