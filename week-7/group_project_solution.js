// Release 3: Pseudocode to Code


var array = []
var operation = {
  function sum(array){
    var sum = 0;
    for(var i = 0; i < array.length; i++){
      sum = sum + array[i];
    }
    return sum;
  }
  function mean(array){

    return (sum(array)/(array.length);
  };

  function median(array){
  array = array.sort();

  if (array.length % 2 === 0)
  {
    var upperBound = array[array.length / 2];
    var lowerBound = array[(array.length / 2) - 1];

    return (upperBound + lowerBound) / 2;
  }
  else
  {
      return array[Math.floor(array.length / 2)];
  }
 }
};