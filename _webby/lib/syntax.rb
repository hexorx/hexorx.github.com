require 'coderay'

Webby::Filters.register :syntax do |input|
  input.gsub(/^<pre><code>(ruby|xml|json|javascript|yaml|sql|html|c|css|diff|python|php|rhtml)\!(.*?)<\/code><\/pre>$/m) do |match|
    code = $2
    language = $1.to_sym
    CodeRay.scan(code, language).div(:css => :class)
  end
end