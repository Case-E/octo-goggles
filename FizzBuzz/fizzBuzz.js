//initializing the array with the number 1
var nums = [1];

//Adding numbers until 100
while (nums.length < 101) {
    nums.push(nums[nums.length-1] + 1);
}

//Am I a developer? Can I be one? Do I pass the fizzBuzz test?
nums.forEach(num => {
    if (num % 3 === 0 && num % 5 === 0) {
        console.log("fizzBuzz");
    }
    else if (num % 3 === 0) {
        console.log("Fizz");
    }
    else if (num % 5 === 0) {
        console.log("Buzz");
    }
    else {
        console.log(num);
    }
});

//Fin.
