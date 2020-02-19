//
//  NewsFeed.swift
//  readNewsProject
//
//  Created by Diana Duan on 18/2/20.
//  Copyright © 2020 diana. All rights reserved.
//

import Foundation

struct NewsFeed {

    let name: String?
    let description: String?

    init(name: String? = nil, description: String? = nil) {
        self.name = name
        self.description = description
    }
}

