
// Function that calculates total of numbers and strings in an array
var array=[1,2,3,4,4,3,2,3,4,5,6,2,2,4,5,6,7,2,2,9,9,5,4,3,3,5,6,7,8,8,6,5,4,3,2,2,4,"4",5,6,7,9,0,8,7,5,4,6,0,0,0,8,7,4,3]


function countItems(array,number,typeOf){
	var count=0;
	var newArray=[];
	
	array.forEach(function(element){
		if (parseInt(element)=== number){
			count++;
		}
		if (typeof element===typeOf){
			newArray.push(element);
		}
    });
   	return `Amount of ${number} in array: ${count}. \nTotal of ${typeOf} in array:${newArray.length}.\n Total of other elements in an array: ${array.length-newArray.length}`
}



// Calculate amount of specific number:
console.log(countItems(array,1,'number'));
console.log(countItems(array,2,'number'));
console.log(countItems(array,3,'number'));
console.log(countItems(array,4,'number'));
console.log(countItems(array,5,'number'));
console.log(countItems(array,6,'number'));
console.log(countItems(array,7,'number'));
console.log(countItems(array,8,'number'));
console.log(countItems(array,9,'number'));
console.log(countItems(array,0,'number'));

