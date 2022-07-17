//
//  Comic.swift
//  MyComic
//
//  Created by kagehito on 2022/07/02.
//

import Foundation

struct Comic: Identifiable {
    typealias ISBN = String
    let id: ISBN
    let title: String
    let author: String
    let volume: Int
    let releaseDate: Date
    let summary: String
}
