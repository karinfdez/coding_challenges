function removeSmallest(numbers) {
  
  var minNumber=Math.min.apply( Math, numbers );
  var index=numbers.indexOf(minNumber);
  
  if (index > -1) {
    numbers.splice(index, 1)
  }
  return numbers;
 }


 console.log(removeSmallest([1,2,3,4,5]));
 console.log(removeSmallest([5,3,2,1,4]));
 console.log(removeSmallest([2,2,1,2,1]));
 console.log(removeSmallest([]));
 console.log(removeSmallest([1]));