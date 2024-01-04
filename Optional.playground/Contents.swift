import UIKit

//Optional = Nullable = Null Safety
//Tanımlama

var mesaj = "Merhaba"

//null, nill
var str: String?   //Bir değişkeni bir değer vermeden optional tanımlamak için türünü belirtip sonuna ? koymamız gerekiyor.

str = "Merhaba"

if str != nil {
    print(str!) //unwrap işlemi : burada str sonuna ! koymazsak çıktıda Optional("Merhaba") olarak görürüz.
} else {
    print("str nil değer içeriyor")
}

//optional binding
if let temp = str {
    print(temp) // otomatik unwrap
} else {
 print("str nil değer içeriyor")
}

if var temp = str {
    print(temp) // otomatik unwrap
    temp = "Nasılsın"
    print(temp)
} else {
 print("str nil değer içeriyor")
}
