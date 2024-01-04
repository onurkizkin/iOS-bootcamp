//
//  KisiKayitViewModel.swift
//  KisilerUygulaması
//
//  Created by Onur Kızkın on 31.12.2023.
//

import Foundation


class KisiKayitViewModel {
    var krepo = KisilerDaoRepository()
    
    func kaydet(kisi_ad: String, kisi_tel: String) {
        krepo.kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
