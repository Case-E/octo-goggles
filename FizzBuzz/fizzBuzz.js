var nums = [1];

while (nums.length < 101) {
    nums.push(nums[nums.length-1] + 1);
}
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