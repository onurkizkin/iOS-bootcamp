import UIKit

class Odev2 {
    func soru1(KM: Double) -> Double{                                                     //Km mile dönüştürme
        let mile = KM * 0.621
        return (mile)
    }
    
    func soru2(taban: Int, yukseklik: Int) {                                              //Dikdörtgenin alanı
        print("Dikdörtgenin alanı: \(taban * yukseklik)")
    }

    func soru3(sayi: Int) -> Int {
        var toplam = 1
        for sayi in stride(from: sayi, through: 2, by: -1) {
            toplam = sayi * toplam
        }
        return toplam
    }
    
    func soru4(kelime: String) {
        var sayac = 0
        for i in 0...(kelime.count-1) {
            let index = kelime.index(kelime.startIndex, offsetBy: i)
            let charAtIndex = kelime[index]
            if charAtIndex == "e" || charAtIndex == "E" {
                sayac = sayac + 1
            }
        }
            print(sayac)
    }
    
    func soru5(kenarSayisi: Int) -> Int {
        let icAci = ((kenarSayisi - 2) * 180) / kenarSayisi
        return icAci
    }
    
    func soru6(gunSayisi: Int) -> Int {
        let calismaSaati = gunSayisi * 8
        var maas = 0
        if calismaSaati > 150 {
            let mesai = (calismaSaati - 150) * 80
            maas = 6000 + mesai
        }else{
            maas = calismaSaati * 40
        }
        return maas
    }
    
    func soru7(parkSaati: Int) -> Int {
        var otoparkUcreti = 0
        
        if parkSaati > 1 {
            otoparkUcreti = ((parkSaati-1) * 10) + 50
        }else {
            otoparkUcreti = 50
        }
        return otoparkUcreti
    }
}

let o2 = Odev2()

let sonuc1 = o2.soru1(KM: 10)

print("Girdiğiniz KM = \(sonuc1) mile")

o2.soru2(taban: 10, yukseklik: 5)

let faktoriyel = o2.soru3(sayi: 5)
print(faktoriyel)

o2.soru4(kelime: "fenerbahçe")

let icAci = o2.soru5(kenarSayisi: 3)
print(icAci)

let maas = o2.soru6(gunSayisi: 20)
print(maas)

let otoparkUcreti = o2.soru7(parkSaati: 6)
print(otoparkUcreti)
