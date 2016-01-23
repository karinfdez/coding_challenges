#Make a program that filters a list of strings and returns a list with only your 
#friends name in it. All your friends only have four letter in their name.
#(There are random inputs like ("Mila","Mike"))
#Ex: Input = ["Ryan", "Kieran", "Jason", "Yous"], Output = ["Ryan", "Yous"]

def friend(friends)
 
 return [] if friends.empty? 
 friends=friends.split(",") if (friends.is_a? String)
 friends.select{|friend| friend.length==4 && (friend.is_a? String)}
end

p friend("Lola,Mike")==["Lola","Mike"]
p friend(["Ryan", "Kieran", "Mark"])==["Ryan", "Mark"]
p friend(["Ryan", "Jimmy", "123", "4", "Cool Man"])==["Ryan"]
p friend(["Jimm", "Cari", "aret", "truehdnviegkwgvke", "sixtyiscooooool"])==["Jimm", "Cari", "aret"]
p friend(["Love", "Your", "Face", "1"])==["Love", "Your", "Face"]