import Foundation
let countOfVariables = 4
var arguments = CommandLine.arguments
let length = arguments.count
var i = 1
var N, M, X, Y: Double
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
  while Double(arguments[i]) == nil{
    print("Invalid argument. Please, enter a new value of argument")
    arguments[i] = readLine()!;
  }
  print("OK")
  //переход к следующему аргументу
  i = i + 1
}
//записываем условия
N = Double(arguments[1])!
M = Double(arguments[2])!
X = Double(arguments[3])!
Y = Double(arguments[4])!
//определяем, какой из бортиков является длинным
if M > N{
  let temp = M
  M = N
  N = temp
}
/*бортики не могут быть нулевой или отрицательной
длины, расстояния до бортиков не могут быть
отрицательными, а также больше размеров бассейна
*/
if N <= 0 || M <= 0 || X < 0 || Y < 0 || X > M || Y > N{
  print("Incorrect data")
  exit(0)
}
//определяем, до какого из длинных бортиков ближе
if M - X < X{ 
  X = M - X
}
//определяем, до какого из коротких бортиков ближе
if N - Y < Y{
  Y = N - Y
}
/*определяем, до длинного или короткого
бортика ближе*/
if X < Y{
  print(X)
}
else{
  print(Y)
}


