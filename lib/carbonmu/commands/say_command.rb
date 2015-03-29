module CarbonMU
  class SayCommand < Command
    syntax /^say (?<text>.*)/
    syntax /^do (?<text>.*)/

    def execute
      CarbonMU.server.notify_all_players("emits.say", {name: @context.enactor.name, message: @params[:text].light_white})
    end
  end
end