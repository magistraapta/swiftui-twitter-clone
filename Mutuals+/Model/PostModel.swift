//
//  PostModel.swift
//  Mutuals+
//
//  Created by magistra aptam on 08/07/23.
//

import Foundation

struct PostModel: Identifiable{
    var id = UUID()
    var username: String
    var date: Date
    var content: String
}

