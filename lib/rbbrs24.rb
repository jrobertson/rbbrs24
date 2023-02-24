#!/usr/bin/env ruby

# file: rbbrs24.rb

# description: Experiment with submitting Ruby code from the browser to 
#              be executed on the server. Recommended for private use only.

class Rbbrs24

  def initialize(action: 'run')
    @action = action
  end
  
  def render_input()
%Q(
<html>
<head>
<style>
form {background-color: #e34}
textarea {background-color: #eee}
</style>
</head>
<body>
<div>
  <form action="#{@action}" method="get" target="output">
    <textarea autofocus="true" name="input1"></textarea>
    <input type="submit" value="run"/>
  </form>
  <iframe name="output" id="output"/>  
</div>
</body>
</html>
)
  end

  def evalx(s)
    eval s
  end

end
