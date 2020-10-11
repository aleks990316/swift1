import Foundation
var arguments = CommandLine.arguments
var length = arguments.count
let N, M: Int
var set1 = Set<Int>()
var set2 = Set<Int>()
var i = 1
//считываем данные
if length == 1{
  arguments.append("")
  print("Please, add an agrument")
  arguments[i] = readLine()!
  while Int(arguments[i]) == nil{
    print("Incorrect agrument. Please, try again")
    arguments[i] = readLine()!
  }
}
N = Int(arguments[i])!
i = i + 1
//проверка на условие задачи
if N < 0{
  print("N cannot be negative")
  exit(0)
}else if N > 100000{
  print("N cannot be more than 100000")
  exit(0)
}
while i <= N + 1{
  if length <= i{
    arguments.append("")
    print("Please, add an agrument")
    arguments[i] = readLine()!
  }
  while Int(arguments[i]) == nil{
    print("Incorrect argument. Please, try again")
    arguments[i] = readLine()!
  }
  set1.insert(Int(arguments[i])!)
  i = i + 1
}
if length <= i{
  arguments.append("")
  print("Please, add an agrument")
  arguments[i] = readLine()!
  while Int(arguments[i]) == nil{
    print("Incorrect agrument. Please, try again")
    arguments[i] = readLine()!
  }
}
M = Int(arguments[i])!
i = i + 1
if M < 0{
  print("N cannot be negative")
  exit(0)
}else if M > 100000{
  print("N cannot be more than 100000")
  exit(0)
}
while i <= N + M + 2{
  if length <= i{
    arguments.append("")
    print("Please, add an agrument")
    arguments[i] = readLine()!
  }
  while Int(arguments[i]) == nil{
    print("Incorrect argument. Please, try again")
    arguments[i] = readLine()!
  }
  set2.insert(Int(arguments[i])!)
  i = i + 1
}
//вычисляем пересечение множеств, сортируем, проходим в цикле
for j in set1.intersection(set2).sorted(){
  print(j, terminator: " ")
}

