require "thor"

module Trombone
  class Cli < Thor
    desc "play SOUND", "Play the sound with given SOUND"
    def play(sound)
      file = File.join(Dir.pwd, "lib/trombone/sounds/#{sound}.mp3")
      if File.file?(file)
        pid = spawn("afplay #{file}")
        Process.detach(pid)
      else
        puts "Sound does not exist, use `list` command to see available sounds."
      end
    end

    desc "list", "List all the sounds available"
    def list
      Dir["lib/trombone/sounds/*"].each { |sound| puts File.basename(sound, ".*") }
    end
  end
end
