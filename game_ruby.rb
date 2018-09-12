class Game
  attr_accessor :point
  
  def initialize()
    @point = 0
  end 

  def welcome
    welcome = <<-STR
    # ------------------------------------------------------ #
    # Welcome to the Game Acak Kata #
    # ------------------------------------------------- ---- #
    STR
    puts welcome
  end

  def show_point
    @point += 1
  end
  
  def self.play
    game = Game.new()
    words = ["buku", "pencil", "penggaris", "meja", "botol", "komputer", "laptop", "mouse", "kursi"].shuffle
    game.welcome
    i = 0
    while i < 1
      words.each do |word|
        puts "  Tebak Kata : '#{word.split('').shuffle.join()}'"
        print "Jawaban Anda : "
        jawaban = gets.chomp.to_str
        if jawaban.eql?(word)
          puts "Benar!! point anda "+  game.show_point.to_s
        else
          puts "Upps Anda salah, harap dicoba lagi!!"
        end
      end
      puts "total skor anda : " + game.show_point.to_s
      print "  Mau main lagi ? ketik ya/tidak \n "
      main_lagi = gets.chomp.to_str
      main_lagi.eql?("ya") ? i = 0 : i = 2
    end
  end
end
Game.play
