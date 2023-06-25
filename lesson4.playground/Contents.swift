import UIKit
import Foundation


//DispatchQueue.main.async {
//    sleep(1)
//    print("H")
//}
//
//DispatchQueue.main.async {
//    print("E")
//}
//
//DispatchQueue.main.async {
//    print("L")
//}
//
//DispatchQueue.main.async {
//    print("L")
//}
//
//DispatchQueue.main.async {
//    sleep(1)
//    print("O")
//}

//2

//DispatchQueue.global().async {
//    sleep(1)
//    print("H")
//}
//
//DispatchQueue.global().async {
//    print("E")
//}
//
//DispatchQueue.global().async {
//    print("L")
//}
//
//DispatchQueue.global().async {
//    print("L")
//}
//
//DispatchQueue.global().async {
//    sleep(1)
//    print("O")
//}

//3

DispatchQueue.global().sync {
    sleep(1)
    print("H")
}

print("E")
print("L")
print("L")
print("O")
