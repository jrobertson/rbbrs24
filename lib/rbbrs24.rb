#!/usr/bin/env ruby

# file: rbbrs24.rb

# description: Experiment with submitting Ruby code from the browser to 
#              be executed on the server. Recommended for private use only.

class Rbbrs24
  
  attr_accessor :html_input, :html_output, :css

  def initialize(action: 'run', code: '')
    
    @action, @code = action, code

@css = %q(
form {background-color: #e34}
textarea {background-color: #eee}
)

@pg = %q(
<html>
<head>
<style>
$css
</style>
</head>
<body>
$div
</body>
</html>
  )
  
@html_input = %q(
<div class='code'>
  <form action="$action" method="get" target="output">
    <textarea autofocus="true" name="input1">$code</textarea>
    <input type="submit" value="run"/>
  </form>
  <iframe name="output" id="output"/>  
</div>
)    
  end
  
  
  def render_input()
    @html_input.sub('$action', @action).sub('$code', @code)
  end
  
  def render_input_pg()
    @pg.sub('$css', @css).sub('$div', render_input())
  end
  
  def render_output()
    @html_output.sub('$action', @action).sub('$code', code)
  end  
  
  def render_output_pg()
    @pg.sub('$css', @css).sub('$div', render_input())
  end

  def evalx(s)
    eval s
  end

end
