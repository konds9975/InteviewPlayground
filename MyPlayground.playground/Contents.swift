//Varible types
//1) Camel case eg. var firstName = "Sachin"
//2) Kabab case eg. var first-name = "Sachin"
//3) Snek case eg. var first_name = "Sachin"

//Mark:- Swipe two number first programe

var numberOne = 8
var numberTwo = 6
print("Before swipe")
print("This is the value of numberOne = \(numberOne)")
print("This is the value of numberTwo = \(numberTwo)")

var numberThree = numberOne // numnerThree = 8
numberOne = numberTwo // numberOne = 6
numberTwo = numberThree // numberTwo = 8

print("After swipe")
print("This is the value of numberOne = \(numberOne)")
print("This is the value of numberTwo = \(numberTwo)")


//Mark:- Swipe two numbers second programe using tuples

var number1 = 10
var number2 = 20
print("Before swipe")
print("This is the value of number1 = \(number1)")
print("This is the value of number2 = \(number2)")

(number1,number2) = (number2,number1)

print("After swipe")
print("This is the value of number1 = \(number1)")
print("This is the value of number2 = \(number2)")


//Marrk:- Arrays
var numbers = [45, 73, 195, 53]

//Create a new array called computedNumbers
var computedNumbers = [
  numbers[0] * numbers[1],
  numbers[1] * numbers[2],
  numbers[2] * numbers[3],
  numbers[3] * numbers[0]
]
print(computedNumbers)

let randomElement : Int? = numbers.randomElement()
print("Random Element in array \(String(describing: randomElement))")

print("Before Shuffled Elements \(numbers)")
numbers = numbers.shuffled()
print("After Shuffled Elements \(numbers)")


//Mark:- Randrom no genartor.
let randomInt = Int.random(in: 1 ... 10)
print("Random Int \(randomInt)")

let randomFloat = Float.random(in: 1 ... 10)
print("Random Floaat \(randomFloat)")

let randomBool = Bool.random()
print("Random Bool \(randomBool)")


/*
Single Number

Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

You must implement a solution with a linear runtime complexity and use only constant extra space.

 

Example 1:

Input: nums = [2,2,1]
Output: 1
Example 2:

Input: nums = [4,1,2,1,2]
Output: 4
Example 3:

Input: nums = [1]
Output: 1
*/
                                                                                    
                                                                                    
func singleNumber(_ nums: [Int]) -> Int {
    var dict = [Int:Bool]()
    for num in nums {
        if (dict[num] != nil) {
            dict[num] = false
        } else {
            dict[num] = true
        }
    }
    for key in dict.keys {
        if (dict[key] != false) {
            return key
        }
    }
    return -1
}
let numbersArray = [4, 1, 2, 1, 2]
var numSingle = singleNumber(numbersArray)
print("Single Number \(numSingle)")


/*
 Happy Number
 
 Write an algorithm to determine if a number n is happy.

 A happy number is a number defined by the following process:

 Starting with any positive integer, replace the number by the sum of the squares of its digits.
 Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
 Those numbers for which this process ends in 1 are happy.
 Return true if n is a happy number, and false if not.

  

 Example 1:

 Input: n = 19
 Output: true
 Explanation:
 12 + 92 = 82
 82 + 22 = 68
 62 + 82 = 100
 12 + 02 + 02 = 1
 Example 2:

 Input: n = 2
 Output: false
 
 */
func pow (_ base:Int, _ power:UInt) -> Int {
  var answer : Int = 1
  for _ in 0..<power { answer *= base }
  return answer
}
func isHappy(_ n: Int) -> Bool {
    var num = n
    var next = 0
    while num>=1{
        next += Int(Double(pow(num % 10, 2)))
        num /= 10
    }
    if next == 1 { return true }
    return next == 4 ? false : isHappy(next)
}

let numHappy = isHappy(19)
print("Happy Number \(numHappy)")


//Move Zeroes

func moveZeros(array:[Int]) -> [Int] {
    let arrayZero = array.filter { $0 == 0} + array.filter{$0 != 0}
    return arrayZero
}

let zeroArray = [0,1,0,4,3,0,5]
print("Moves Array \(moveZeros(array: zeroArray))")

