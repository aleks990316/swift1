import Foundation
let MKAD_LEN = 109, countOfVariables = 2
var arguments = CommandLine.arguments
let length = arguments.count
var i = 1
var V, T, S: Int
//считываем данные
//считываем данные
//пока не будет считано необходимое количество аргументов
while i <= countOfVariables{
  //если аргументы из командной строки закончились
	if i >= length{
    print("You didn't enter enough arguments\nPlease add an argument")
    arguments.append("")
    arguments[i] = readLine()!;
  }
  //если тип аргумента не удовлетворяет условию задачи
  while Int(arguments[i]) == nil{
    print("Invalid argument. Please, enter a new value of argument")
    arguments[i] = readLine()!;
  }
  print("OK")
  //переход к следующему аргументу
  i = i + 1
}
V = Int(arguments[1])!
T = Int(arguments[2])!
//условия корректности входных данных
if V < -1000 || V > 1000 || T < 0 || T > 1000{
  print("Incorrect data")
  exit(0)
}
/*определяем, как далеко байкер уехал от 
0 километра, и в какую сторону*/
S = V * T % MKAD_LEN
/*если он ехал в положетельном направлении, 
то выражение в выводе примет S, иначе отнимет
от длины МКАДА величину S
*/
print((S + MKAD_LEN) % MKAD_LEN)

