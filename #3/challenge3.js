// A script to retreive a value from a nested array
var object = { x: { y: { z: "a" } } };
var key = "x/y/z";
var spltKey = key.split("/");

// loops through object using the differnt key layers
function iterateObj() {
  for (let i = 0; i < spltKey.length; i++) {
    object = object[spltKey[i]];
  }
  console.log("Value: ");
  console.log(object);
}

iterateObj();
