//
//  ModelData.swift
//  Landmarks
//
//  Created by Abby Carr on 11/13/21.
//

import Foundation

var sitePages: [SitePage] = load("sites.json")
var yogas: [SitePage] = load("yoga.json")
var meditations: [SitePage] = load("meditation.json")
var exercises: [SitePage] = load("exercise.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
