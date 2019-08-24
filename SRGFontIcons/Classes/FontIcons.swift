//
//  FontIcons.swift
//  SRGNCryptoCoin
//
//  Created by Sergio Utama on 24/08/2019.
//  Copyright © 2019 Sergio Utama. All rights reserved.
//

import Foundation
enum FontTypes {
    case FontAwesome(name: String)
}

func FontIcons(_ font: FontTypes) -> String? {
    switch font {
    case .FontAwesome(let name):
        guard
            let glyphsMap = loadGlyphsMap(file: "FontAwesome"),
            let glyphsCode = glyphsMap[name] else {
            return nil
        }
        return loadUnicode(glyphsCode)
    }
}

func loadGlyphsMap(file: String, ext: String = "json") -> Dictionary<String,Int>?{
    guard let fontFileURL = Bundle.main.url(forResource: file, withExtension: ext) else {
        return nil
    }
    do {
        let jsonData = try Data(contentsOf: fontFileURL, options: .mappedIfSafe)
        let jsonResult = try JSONSerialization.jsonObject(with: jsonData, options: .allowFragments)
        let glyphsMap = jsonResult as? Dictionary<String,Int>
        return glyphsMap
    } catch {
        return nil
    }
}

func loadUnicode(_ unicode: Int) -> String? {
    let unicode = Unicode.Scalar(unicode)
    return String(unicode!)
}



