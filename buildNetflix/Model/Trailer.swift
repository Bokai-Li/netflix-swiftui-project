//
//  Trailer.swift
//  buildNetflix
//
//  Created by Bokai Li on 5/5/21.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
