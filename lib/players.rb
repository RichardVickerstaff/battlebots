require 'proxy'
require 'bots/the_closer'
require 'bots/the_bully'
require 'bots/the_chicken'
require 'bots/the_thinker'
require 'bots/the_whinger'
require 'bots/self_destructo'
require 'bots/spray_and_pray'
require 'bots/death_roomba'
require 'bots/speedy'

module BattleBots
  module Players

    def player_list
      [
        Proxy.new(self, TheCloser),
        Proxy.new(self, TheBully),
        Proxy.new(self, DeathRoomba),
        Proxy.new(self, TheWhinger),
        Proxy.new(self, TheThinker),
        Proxy.new(self, SprayAndPray),
        Proxy.new(self, Speedy),
        Proxy.new(self, TheChicken)
      ].shuffle
    end
  end
end
