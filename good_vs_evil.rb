GOOD_SIDE = [["Hobbits", 1], ["Men", 2], ["Elves", 3], 
             ["Dwarves", 3], ["Eagles", 4], ["Wizards", 10]] 

EVIL_SIDE = [["Orcs", 1], ["Men", 2], ["Wargs", 2], ["Goblins", 2], 
             ["Uruk Hai", 3], ["Trolls", 5], ["Wizards", 10]]

def goodVsEvil(good, evil)
  score_good = 0
  score_evil = 0
  
  good.split.each_with_index do |quantity, index|
    score_good += GOOD_SIDE[index][1] * quantity.to_i
  end
  
  evil.split.each_with_index do |quantity, index|
    score_evil += EVIL_SIDE[index][1] * quantity.to_i
  end
  
  if score_good > score_evil
    puts "Battle Result: Good triumphs over Evil"
  elsif score_evil > score_good
    puts "Battle Result: Evil eradicates all trace of Good"
  else
    puts "Battle Result: No victor on this battle field"
  end
end

goodVsEvil('1 0 0 0 0 0', '1 0 0 0 0 0 0')
goodVsEvil('0 0 0 0 0 10', '0 1 1 1 1 0 0')
goodVsEvil('0 0 0 0 0 10', '0 1 1 1 1 0 0')

# remove puts in codewars because it returns nil