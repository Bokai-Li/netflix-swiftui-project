//
//  Movie.swift
//  buildNetflix
//
//  Created by Bokai Li on 5/2/21.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL

    var categories: [String]
}
