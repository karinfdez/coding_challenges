function songDecoder(song){
  
  while (song.indexOf('WUB') >= 0){
  	song=song.replace("WUB"," ");
  }
  // Remove 2 spaces to leave only 1 space. trim removes spaces from beginning and end of word.
   return (song.replace(/\s{2,}/g, ' ')).trim();
}

console.log(songDecoder("WUBHELLOWUB"));
console.log(songDecoder("AWUBWUBWUBBWUBWUBWUBC"));
console.log(songDecoder("AWUBBWUBC"));