
//Order the string by the numbers inside each word.

function order(words){
 var arrayOfWords=words.split(' ');
 var orderArray=[];
 var num=1;
 
 while(num<=arrayOfWords.length){
 	
   arrayOfWords.forEach(function(element){
 	if(element.indexOf(num)!=-1){
 		orderArray.push(element);
 	}
   })
    num++;
 }
 return orderArray.join(' ');
}


console.log(order("is2 Thi1s T4est 3a"));  //Should print: Thi1s is2 3a T4est
console.log(order("4of Fo1r pe6ople g3ood th5e the2"));
console.log(order(""));
