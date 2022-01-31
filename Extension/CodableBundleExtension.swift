//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by jhunderdog on 2022/01/31.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from budle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return decodedData
        
        // 2. Create a property for the data
        // 3. Create a decoder
        // 4. Create a property for the decoded data
        // 5. Return the ready-to-use data
    }
}
