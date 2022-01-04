//
//  PostData.swift
//  Hacker-News
//
//  Created by Sarosh Tahir on 04/01/2022.
//

import Foundation
import SwiftUI
struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
