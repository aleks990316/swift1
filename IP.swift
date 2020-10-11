import Foundation
var arguments = CommandLine.arguments
var length = arguments.count
var IP: String
//считываем данные
if length == 1{
  print("Please, enter an anrgument")
  IP = readLine()!
} else{
  IP = arguments[1]
}
let substrings = IP.components(separatedBy:".")
length = substrings.count
if length == 4{
  for i in substrings{
    length = i.count
    if length <= 3{
      if Int(i) == nil{
        print("NO")
        exit(0)
      }
      else{
        var divider = 1
        for _ in 1..<length{
          divider*=10
        }
        if (Int(i)! < 0 && Int(i)! > 255)||(Int(i)!/divider == 0 && Int(i)! != 0)||(Int(i)! == 0 && length > 1){
          print("NO")
          exit(0)
        }

      }
    }else{
      print("NO")
      exit(0)
    }
  }
}else{
  print("NO")
  exit(0)
}
print("YES")