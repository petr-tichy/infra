require 'rubygems'
require "infra/app"
# require "infra/gui"
require 'pry'
require "infra/version"

include Infra

app = App.new({
  :logger => Logger.new(STDOUT)
})

app.instance_eval(File.read('app.rb'))
app.run

# pp app.steps.map {|step| step.name}

# pp app.restartable_steps.map {|step| step.name}
gui = AppGUI.new(app)
app.awake
# binding.pry

app.run

# gui.pry
# gui.steps
# gui.ran_steps

# $should_fail = false
# app.restart_from_last_checkpoint
# gui.pry

# binding.pry