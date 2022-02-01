//
//  CategoryModel.swift
//  Touchdown
//
//  Created by jhunderdog on 2022/02/01.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
