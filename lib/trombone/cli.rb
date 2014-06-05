require "thor"

module Trombone
  class Cli < Thor
    desc "play SOUND", "Play the sound with given SOUND"
    def play(sound)
      file = File.expand_path("../sounds/#{sound}.mp3", __FILE__)
      if File.file?(file)
        pid = spawn("afplay #{file}")
        Process.detach(pid)
      else
        puts "Sound does not exist, use `list` command to see available sounds."
      end
    end

    desc "list", "List all the sounds available"
    def list
      Dir[File.expand_path("../sounds/*", __FILE__)].each { |sound| puts File.basename(sound, ".*") }
    end
  end
end
