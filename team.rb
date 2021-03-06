class Team
    #オブジェクトの変数
    attr_accessor :name, :win, :lose, :draw
    
    #初期化
    def initialize(name,win,lose,draw)
        self.name=name
        self.win=win
        self.lose=lose
        self.draw=draw
    end
    
    #勝率計算
    def calc_win_rate
        self.win.to_f/(self.win.to_f+self.lose.to_f)   # return の省略
    end
    
    #成績表示
    def show_team_result
        puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate}"
    end
    
end

teamgiants = Team.new('Giants',67,45,8)    # 引数による初期化
teamtigers = Team.new('Tigers',60,53,7)    # 引数による初期化
teamdragons  = Team.new('Dragons',60,55,5)    # 引数による初期化
teambayStars = Team.new('BayStars',56,58,6)    # 引数による初期化
teamcarp = Team.new('Carp',52,56,12)    # 引数による初期化
teamswallows = Team.new('Swallows',41,69,10)    # 引数による初期化

teamgiants.show_team_result
teamtigers.show_team_result 
teamdragons.show_team_result
teambayStars.show_team_result
teamcarp.show_team_result 
teamswallows.show_team_result