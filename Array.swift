import Foundation
var arguments = CommandLine.arguments
let length = arguments.count
var i = 1
var arr = [Int]()
let n: Int
//считываем данные
if length < 2{
  arguments.append("")
}
while Int(arguments[i]) == nil{
    print("Invalid argument. Please, enter a new value of argument")
    arguments[i] = readLine()!
}
n = Int(arguments[i])!
i = i + 1
//количество элементов в массиве не может быть отрицательным
if n < 0{
  print("Size of array cannot be negative")
  exit(0)
}
while i <= n + 1{
  if i >= length{
    print("You didn't enter enough arguments\nPlease add an argument")
    arguments[i].append("")
    arguments[i] = readLine()!
  }
  while Int(arguments[i]) == nil{
    print("Invalid argument. Please, enter a new value of argument")
    arguments[i] = readLine()!
  }
  arr.append(Int(arguments[i])!)
  print("OK")
  i = i + 1
}
/*перебираем весь массив, сравнивая каждый элемент с 
элементами массива, в том числе и с самим собой, поэтому если элемент
встречается менее 2 раз, то выводим его*/
for j in 0..<n{
  var count = 0
  i = 0
  while i < n && count < 2{
    if arr[j] == arr[i]{
      count = count + 1
    }
    i = i + 1
  }
  if count < 2{
    print(arr[j], terminator:" ")
  }
}
//перенос строки
print()

