// You are asked to write a myParseInt method with the following rules:

// It should make the conversion if the given string only contains a single integer value (and eventually spaces - including tabs, line feeds... - at both ends)
// For all other strings (including the ones representing float values), it should return NaN
// It should assume that all numbers are not signed and written in base 10



function myParseInt(str) {

 var newString= str.replace(/ /g, '');
 var isFloat=newString.indexOf('.') != -1
 var isValidNumber=!isNaN(newString);
 var hasLetters=(newString.match(/[a-z]/i));
 var specialCharacters=!(/[~`!#$%\^&*+=\-\[\]\\';,/{}|\\":<>\?]/g.test(newString));
 
    if (isValidNumber && !isFloat && !hasLetters && specialCharacters){
      // Convert to number the string
      return Number(newString);
    }else{
      return "NaN";
    }
}

console.log(myParseInt("2"));
console.log(myParseInt("1"));
console.log(myParseInt("  1 "));
console.log(myParseInt("08"));
console.log(myParseInt("5 friends"));
console.log(myParseInt("16.5"));





function booleanToString(b){
  
  if(typeof(b) ==='boolean'){
    
    if b===true
      return b.toString();
    else
      return b.toString();
  }
   
}

console.log(booleanToString(true));


