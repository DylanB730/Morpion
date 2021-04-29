class Application
        puts "████████╗██╗░█████╗░  ████████╗░█████╗░░█████╗░  ████████╗░█████╗░███████╗".blue
        puts "╚══██╔══╝██║██╔══██╗  ╚══██╔══╝██╔══██╗██╔══██╗  ╚══██╔══╝██╔══██╗██╔════╝".blue
        puts "░░░██║░░░██║██║░░╚═╝  ░░░██║░░░███████║██║░░╚═╝  ░░░██║░░░██║░░██║█████╗░░".blue
        puts "░░░██║░░░██║██║░░██╗  ░░░██║░░░██╔══██║██║░░██╗  ░░░██║░░░██║░░██║██╔══╝░░".blue
        puts "░░░██║░░░██║╚█████╔╝  ░░░██║░░░██║░░██║╚█████╔╝  ░░░██║░░░╚█████╔╝███████╗".blue
        puts "░░░╚═╝░░░╚═╝░╚════╝░  ░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░  ░░░╚═╝░░░░╚════╝░╚══════╝".blue
        puts
        puts "█▀█ █░█ █▄▄ █▄█".center(70).red 
        puts "█▀▄ █▄█ █▄█ ░█░".center(70).red
        puts
        puts
        puts "/_\\Pour jouer écrit les coordonnées dans ce format -> a1".red
        puts

    def self.perform
      # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
      game = Game.new
      count = 1
      while(true)
        game.turn(game.player1)
        count += 1
        if (game.board.victory? == true) || count >= 9
          break
        end
        game.turn(game.player2)
        count += 1
        if (game.board.victory? == true) || count >= 9
          break
        end
      end
    end
  end