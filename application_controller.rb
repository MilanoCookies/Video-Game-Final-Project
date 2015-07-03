require 'bundler'
Bundler.require

require './models/Video_Games.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/results' do
    choice = params["choice"]
    
       @sports= [VideoGame.new("NBA 2K15", "http://gm-cdn.gamezebo.netdna-cdn.com/wp-content/uploads/2014/10/nba-2k15-header.jpg", "9/10", "http://www.gamestop.com/browse?nav=16k-3-nba+2k15,28zu0", "https://www.youtube.com/watch?v=BTCFKaq30QM"), VideoGame.new("NBA 2K14", "http://s2b20blog.mukyou.com/wp-content/uploads/2015/04/NBA-2K14-Wallpapers-10.jpg", "4/5", "http://www.gamestop.com/browse?nav=16k-3-nba+2k14,28zu0", "https://www.youtube.com/watch?v=b0KRfU8tFtU"), VideoGame.new("Fifa 14", "http://steamhacks.info/wp-content/uploads/2013/10/fifa-14-crack-download.jpg", "9/10", "http://www.gamestop.com/browse?nav=16k-3-fifa+14,28zu0", "https://www.youtube.com/watch?v=APMrtUd4WW8"), VideoGame.new("Fifa 15", "http://i.ytimg.com/vi/aSxUW9UF4uw/maxresdefault.jpg", "4/5", "http://www.gamestop.com/browse?nav=16k-3-fifa+15,28zu0", "https://www.youtube.com/watch?v=TnTYVT6lwBc"), VideoGame.new("Madden NFL 15", "http://cbssports.com/images/blogs/Richard_Sherman_Madden_Curse_Madden_15_Cover.jpg", "4/5", "http://www.gamestop.com/browse?nav=16k-3-madden+15,28zu0", "https://www.youtube.com/watch?v=nUiBJy150rg"), VideoGame.new("Madden NFL 25", "http://gamerspeek.com/wp-content/uploads/2013/09/Madden-25.jpg", "7/10", "http://www.gamestop.com/browse?nav=16k-3-madden+25,28zu0", "https://www.youtube.com/watch?v=vCsMR13TJ9M"), VideoGame.new("NBA Live 15", "http://www.get-cracked.com/wp-content/uploads/2015/02/NBA-Live-15-free-cd-key.jpg", "5/10", "http://www.gamestop.com/browse?nav=16k-3-nba+live+15,28zu0", "https://www.youtube.com/watch?v=w-8vL1r4pU8")]
    @action_and_adventure= [VideoGame.new("Assassin's Creed Unity", "http://www.hacksbook.com/wp-content/uploads/2014/09/assassins_creed_unity.png", "7/10", "http://www.gamestop.com/browse?nav=16k-3-assassin+s+creed+unity,28zu0", "https://www.youtube.com/watch?v=ixp1RDIf4O8"), VideoGame.new("Batman Arkham Knight", "http://38.media.tumblr.com/1e3ca1ffb5029e8bae95451814bb1f54/tumblr_n1y39wWVCw1r4ppnko1_1280.jpg", "9/10", "http://www.gamestop.com/browse?nav=16k-3-batman+arkham+knight,28zu0", "https://www.youtube.com/watch?v=VpXUIh7rlWI"), VideoGame.new("Grand Theft Auto V", "http://i.ytimg.com/vi/jl2xNWeujZs/maxresdefault.jpg", "5/5", "http://www.gamestop.com/browse?nav=16k-Grand+Theft+Auto+V", "https://www.youtube.com/watch?v=QkkoHAzjnUs"), VideoGame.new("Grand Theft Auto San Andreas", "http://s.emuparadise.org/fup/up/150569-Grand_Theft_Auto_-_San_Andreas_(USA)_(v1.03)-1.jpg", "4/5", "http://www.gamestop.com/browse?nav=16k-Grand+Theft+Auto+San+Andreas", "https://www.youtube.com/watch?v=u_CbHrBbHNQ"), VideoGame.new("Super Mario Bros", "http://i.kinja-img.com/gawker-media/image/upload/kfqicliuawygmhlfpbdy.jpg", "8/10", "http://www.gamestop.com/browse?nav=16k-3-super+mario+bros,28zu0", "https://www.youtube.com/watch?v=IQHa4qindfE")]
    @car_and_racing= [VideoGame.new("Mario Cart", "http://mariokart8.nintendo.com/img/fbook.jpg", "9/10", "http://www.gamestop.com/browse?nav=16k-3-mario+kart,28zu0", "https://www.youtube.com/watch?v=ibVJr7tpvQ4"), VideoGame.new("Forza Motorsport 5", "http://static4.gamespot.com/uploads/scale_medium/1197/11970954/2309099-forza5.jpg", "9/10", "http://www.gamestop.com/browse?nav=16k-3-forza+motorsport+5,28zu0", "https://www.youtube.com/watch?v=__6lyUbBdWM"), VideoGame.new("Grand Theft Auto V", "http://i.ytimg.com/vi/jl2xNWeujZs/maxresdefault.jpg", "5/5", "http://www.gamestop.com/browse?nav=16k-Grand+Theft+Auto+V", "https://www.youtube.com/watch?v=QkkoHAzjnUs"), VideoGame.new("Driver San Fransisco", "http://images.gameskinny.com/gameskinny/07a9f2c39621aef1c95439b53e3d3eaf.jpg", "4/5", "http://www.gamestop.com/browse?nav=16k-Driver+San+Francisco", "https://www.youtube.com/watch?v=htXCOlSzeAQ")]
    @first_person_shooter= [VideoGame.new("Call of Duty Black Ops", "http://cdn.akamai.steamstatic.com/steam/apps/42700/header.jpg?t=1379361422", "5/5", "http://www.gamestop.com/browse?nav=16k-3-call+of+duty+black+ops,28zu0", "https://www.youtube.com/watch?v=OPTOVQFRggI"), VideoGame.new("Call of Duty Black Ops II", "http://gearnuke.com/wp-content/uploads/2014/05/Call-Of-Duty-Black-Ops-II-logo1.jpeg", "4/5", "http://www.gamestop.com/browse?nav=16k-Call+of+Duty+Black+Ops+II", "https://www.youtube.com/watch?v=x3tedlWs1XY"), VideoGame.new("Call of Duty Modern Warfare 3", "http://donotargue.com/wp-content/uploads/2014/03/call-of-duty-modern-warfare-3-hd-wallpapers-1080p-widescreen-games-photo-call-of-duty-hd-wallpaper.jpg", "5/5", "http://www.gamestop.com/browse?nav=16k-Call+of+Duty+Modern+Warfare+3", "https://www.youtube.com/watch?v=1xjCdN_rWCE"), VideoGame.new("Call of Duty Advanced Warfare", "http://86bb71d19d3bcb79effc-d9e6924a0395cb1b5b9f03b7640d26eb.r91.cf1.rackcdn.com/wp-content/uploads/2014/11/call-of-duty-advanced-warfare-walkthrough.jpg", "4/5", "http://www.gamestop.com/browse?nav=16k-Call+of+Duty+Advanced+Warfare", "https://www.youtube.com/watch?v=sFu5qXMuaJU"), VideoGame.new("Call of Duty Ghosts", "http://gearnuke.com/wp-content/uploads/2014/08/135.jpg", "4/5", "http://www.gamestop.com/browse?nav=16k-Call+of+Duty+Ghosts", "https://www.youtube.com/watch?v=Zxnx3W-HA18"), VideoGame.new("Halo Reach", "http://theaudiospotlight.com/wp-content/uploads/2012/06/halo-reach.jpg", "5/5", "http://www.gamestop.com/browse?nav=16k-Halo+Reach", "https://www.youtube.com/watch?v=k9ez7iNjoVg"), VideoGame.new("Destiny", "http://cdn2.bigcommerce.com/server100/y7xbit5/product_images/uploaded_images/destiny-gh-website-banner.jpg?t=1409897361", "3/5", "http://www.gamestop.com/browse?nav=16k-3-destiny,28zu0", "https://www.youtube.com/watch?v=9ZyQK6kUdWQ")]
    @fighting_and_Combat= [VideoGame.new("WWE 2K15", "http://www.savecontinue.com/wp-content/uploads/2014/07/NEW2K15H.jpg", "2/5", "http://www.gamestop.com/browse?nav=16k-3-wwe+2k15,28zu0", "https://www.youtube.com/watch?v=BBYZ1OJYmtw"), VideoGame.new("EA Sports UFC 2", "http://media.idownloadblog.com/wp-content/uploads/2015/04/ea-sports-ufc-1.jpg", "7/10", "http://www.gamestop.com/browse?nav=16k-3-ea+sports+ufc+2,28zu0", "https://www.youtube.com/watch?v=dCTk7pCCfG4"), VideoGame.new("Mortal Combat X", "http://thisgengaming.com/wp-content/uploads/2015/04/maxresdefault-5.jpg", "4/5", "http://www.gamestop.com/browse?nav=16k-Mortal+Kombat", "https://www.youtube.com/watch?v=jSi2LDkyKmI")]
  @stealth= [VideoGame.new("Assassin's Creed Unity", "http://www.hacksbook.com/wp-content/uploads/2014/09/assassins_creed_unity.png", "7/10", "http://www.gamestop.com/browse?nav=16k-3-assassin+s+creed+unity,28zu0", "https://www.youtube.com/watch?v=ixp1RDIf4O8"), VideoGame.new("Assassin's Creed Rogue", "http://geekparty.com/wp-content/uploads/2014/08/Assassins-Creed-Rogue1.jpg", "3/5", "http://www.gamestop.com/browse?nav=16k-Assassin+s+Creed+Rogue", "https://www.youtube.com/watch?v=RDeyI31pG8A"), VideoGame.new("Assassin's Creed Black Flag", "http://solvetube.com/wp-content/uploads/2014/11/How-To-Install-Assassins-Creed-4-Black-Flag-Game-Without-Errors.jpg", "5/5", "http://www.gamestop.com/browse?nav=16k-Assassin+s+Creed+IV+Black+Flag")]
  @open_world_and_survival= ["Minecraft"]
  
    
    if choice == "sports"
      @game = @sports.sample
    elsif choice == "action_and_adventure"
      @game = @action_and_adventure.sample
    elsif choice == "car_and_racing"
      @game = @car_and_racing.sample
    elsif choice == "first_person_shooter"
      @game = @first_person_shooter.sample
    elsif choice == "fighting_and_combat"
      @game = @fighting_and_combat.sample
    elsif choice == "stealth"
      @game = @stealth.sample
    elsif choice == "open_world_and_survival"
      @game = @open_world_and_survival.sample
      
      @name = @game.name
      @picture = @game.picture
      @rating = @game.rating
      @website = @game.website
      @trailer = @game.website
    
    erb :results
end 
    
    
    
    
    erb :results
end

end
