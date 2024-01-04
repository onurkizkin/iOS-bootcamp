import UIKit

class Ev {
    var pencereSayisi: Int?
    
    init(pencereSayisi: Int) {
        self.pencereSayisi = pencereSayisi
    }
}

class Saray: Ev {
    var kuleSayisi: Int?
    
    init(kuleSayisi: Int, pencereSayisi: Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Villa: Ev {
    var garajVarMi: Bool?
    
    init(garajVarMi: Bool, pencereSayisi: Int) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
}

let topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
let bogazVilla = Villa(garajVarMi: true, pencereSayisi: 30)
print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)

print(bogazVilla.garajVarMi!)
print(bogazVilla.pencereSayisi!)

// Override
class Hayvan {
    func sesCikar() {
        print("Sesim yok")
    }
}

class Memeli: Hayvan {

    }


class Kedi: Memeli {
    override func sesCikar() {
        print("Miyav")
    }
}

class Kopek: Memeli{
    override func sesCikar() {
        print("HavHav")
    }
}

let hayvan = Hayvan()
let memeli = Memeli()
let kopek = Kopek()
let kedi = Kedi()

hayvan.sesCikar()  //Kalıtım yok, kendi fonksiyonunu çalıştırdi.
memeli.sesCikar()  //Kalıtım var, üst sınıfın fonksiyonunu çalıştırdı.
kopek.sesCikar()   //Kalıtım var, kendi metodunu çalıştırdı.
kedi.sesCikar()    //Kalıtım var, kendi metodunu çalıştırdı.


//Tip Dönüşümü

//Upcasting
var ev = Saray(kuleSayisi: 3, pencereSayisi: 10) as Ev

//Downcasting
var saray = Ev(pencereSayisi: 6) as? Saray

//Tip kontrolü
if ev is Ev {
    print("Nesne ev sınfındandır.")
}else {
    print("Nesne ev sınfından değildir.")
}


//Protocol

protocol MyProtocol {
    var degisken: Int {get set}
    
    func metod1()
    func metod2() -> String
}

class ClassA: MyProtocol {
    var degisken: Int = 10
    
    func metod1() {
        print("Metod 1 çalıştı")
    }
    func metod2() -> String {
        return "Metod 2 çalıştı"
    }
}

var a = ClassA()

print(a.degisken)
a.metod1()
print(a.metod2())


//Extension

extension Int {
    func carpma(sayi: Int) -> Int {
        return self * sayi
    }
}

let x = 3.carpma(sayi: 5)
print(x)


//Closure

let ifade = {
    print("Merhaba")
}
ifade()

