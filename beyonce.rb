beyonce = {
    hits: [
      { title: 'bootylicious', group: true, groupName: 'destinysChild', hair: ['straight', 'blonde', 'pink tips'], signatureLook: 'fedora with yellow feather', videoTheme: 'dressing room dance', bestLine: 'Move your body up and down, make your booty touch the ground', fierceness: 7, formation: false, dancers: 20
      },
      { title: 'singleLadies', group: false, groupName: 'none', hair: ['honey brown', 'half up, half down'], signatureLook: 'black bodysuit and legs for days', videoTheme: 'single ladies dance', bestLine: 'if you like it then you should\'ve put a ring on it', fierceness: 10, formation: true, dancers: 2 
      },
      { title: 'letMeUpgradeYou', group: false, groupName: 'none', hair: ['beaded bun', 'wet hair', 'honey brown', 'waves'], signatureLook: 'flapper dress and bodysuit', videoTheme: 'decadence, water, gold beads and pearls', bestLine: 'I could do for you what Martin did for the people', fierceness: 10, formation: true, dancers: 5 
      },
      { title: 'sorry', group: false, groupName: 'none', hair: ['braids', 'bun', 'blonde', 'waves', 'bob'], signatureLook: 'braided crown with gold bikini top', videoTheme: 'party bus and Serena Williams in bodysuit', bestLine: 'Boi bye', fierceness: 10, formation: false, dancers: 1 
      },
      { title: 'sayMyName', group: true, groupName: 'destinysChild', hair: ['blonde', 'curly', 'braid', 'pony tail'], signatureLook: 'none', videoTheme: 'color blocked scenes with group', bestLine: 'say my name, say my name', fierceness: 7, formation: true, dancers: 6 
      },
      { title: 'feelingMyself', group: true, groupName: 'Nicki Minaj featuring Beyonce', hair: ['blonde', 'waves'], signatureLook: 'sporty bodysuit', videoTheme: 'Coachella music festival', bestLine: 'Im felling myself', fierceness: 9, formation: false, dancers: 0 
      }
    ],
    movies: [
      { title: 'Austin Power\'s Goldmember', year: 2002, rating: 5},
      { title: 'Dreamgirls', year: 2006, rating: 7},
      { title: 'Obsessed', year: 2009, rating: 6},
      { title: 'Cadillac Records', year: 2008, rating: 8},
      { title: 'Life is But a Dream', year: 2013, rating: 6},
      { title: 'The Pink Panther', year: 2006, rating: 4},
      { title: 'Epic', year: 2013, rating: 7},
      { title: 'The Fighting Temptations', year: 2003, rating: 5}
    ]
  };
  
  # def unique_hair (hash)
  #   styles = hash[:hits].map { |key, value| key[:hair] }
  #   styles.flatten.uniq
  # end

#    puts all the songs

def all_songs(hash)
  hash[:hits].each { | hit | puts hit[:title] }
end

###### all_songs(beyonce)

#    puts all the movies

def all_movies(hash)
  hash[:movies].each { | movie | puts movie[:title] }
end

###### all_movies(beyonce)

#    create an array with a list of all of Beyonce's hit songs

def song_array(hash)
   hash[:hits].map { | hit | hit[:title] }
end

#p hit_songs = song_array(beyonce)
  
#    create an array with a list of all of Beyonce's fierceness ratings

def fierce_array(hash)
  hash[:hits].map { | hit | hit[:fierceness] }
end

#p fierce_array(beyonce)

#    give me all the songs where Beyonce is wearing a bodysuit or a bodysuit is part of the video theme

def bodysuit_hits(hash)
  bodysuits = hash[:hits].filter { |hit| hit[:signatureLook].include? "bodysuit" or hit[:videoTheme].include? "bodysuit" }
end

# p bodysuit_hits(beyonce)
  
#    create an array with all of the songs where Beyonce's fierceness is greater than or equal to 8

def extrafierce(hash)
  hash[:hits].filter { | hit | hit[:fierceness] > 8 }
end

# p extrafierce(beyonce)
  
#    create an array with all of the movies Beyonce made in 2006 and after
  
#    find all of the group hit songs
  
#    find a hit song where Beyonce's hair is blonde
  
#    find the hit song sorry
  
#    find all hit songs where Beyonce's fierceness rating is 10
  
#    sum up Beyonces fierceness value for all of her hit songs

def sum_fierce(hash)
  hash[:hits].sum { | hit| hit[:fierceness] }
end

# p sum_fierce(beyonce)
  
#    get the average fierceness value for all of her hit songs

def average_fierceness(hash)
  total_fierceness = hash[:hits].sum { | hit| hit[:fierceness] }
  num_songs = hash[:hits].length
  average_fierce = ( total_fierceness.to_f / num_songs.to_f ).round()
end

p average_fierceness(beyonce)
  
#    sum up Beyonces rating value for all of her movies
  
#    get the average rating value for all of her movies
  
#    create an object where the properties are song names and the value is an object which contains that fierceness and average fierceness
  
#    create an object where the properties are movie names and the value is an object which contains that rating and average rating
  
#    sum up the total number of dancers in all of the hit song videos
  
#    create an array of beyonces hairstyles without repeats

def unique_hair (hash)
  styles = hash[:hits].map { |key, value| key[:hair] }
  styles.flatten.uniq
end

# p unique_hair(beyonce)
  
#    create an object list with beyonces hairstyles with a tally of each hairstyle ie { 'blonde': 3, ect.}