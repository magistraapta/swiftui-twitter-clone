//
//  FilterViewModel.swift
//  Mutuals+
//
//  Created by magistra aptam on 11/07/23.
//

import Foundation

enum FilterViewModel: Int, CaseIterable{
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self{
        case .tweets:return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}

