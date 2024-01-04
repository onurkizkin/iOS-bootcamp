import UIKit

//Set
var meyveler = Set<String>()

//Veri Ekleme
meyveler.insert("Elma")
meyveler.insert("Portakal")
meyveler.insert("Muz")
print(meyveler)

meyveler.insert("Amasya Elması")
print(meyveler)

for (indeks, meyve) in meyveler.enumerated() {
    print("\(indeks). -> \(meyve)")
}

print("Boyut  : \(meyveler.count)")
print("Boş mu : \(meyveler.isEmpty)")

meyveler.remove("Elma")
print(meyveler)

meyveler.removeAll()
print(meyveler)

// Dictionary -Hashmap - Map
var iller = [Int:String]()

//Veri ekleme

iller [16] = "Bursa"
iller [34] = "İstanbul"
print(iller)

//Veri Okuma
print(iller[16]!)

//Veri güncelleme
iller[16] = "YENİ BURSA"
print(iller)

for (anahtar, deger) in iller {
    print("\(anahtar) -> \(deger)")
}

iller.removeValue(forKey: 16)
print(iller)

iller.removeAll()
print(iller)
