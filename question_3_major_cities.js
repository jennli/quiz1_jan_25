// 3. Given a JavaScript object that looks like this:
 var majorCities = {
   BC: ["Vancouver", "Victoria", "Prince George"],
   AB: ["Edmonton", "Calgary"]
 };


// Write a piece of code that loops through the object and prints the following to the console: BC has 3 main cities AB has 2 main cities

for (province in majorCities){
  console.log(province + " has " + majorCities[province].length + " major cities");
}
