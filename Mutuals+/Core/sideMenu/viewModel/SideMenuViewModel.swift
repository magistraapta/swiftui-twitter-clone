//
//  SideMenuViewModel.swift
//  Mutuals+
//
//  Created by magistra aptam on 12/07/23.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable{
    case Profile
    case Bookmark
    case List
    case Logout
    
    var title: String{
        switch self {
        case .Profile: return "Profile"
        case .Bookmark: return "Bookmark"
        case .List: return "List"
        case .Logout: return "Logout"
        }
    }
    
    var imagName: String{
        switch self{
        case .Profile: return "person"
        case .Bookmark: return "bookmark"
        case .List: return "list.bullet"
        case .Logout: return "arrow.left.square"
        }
    }
}
