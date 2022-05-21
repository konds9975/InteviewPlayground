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


