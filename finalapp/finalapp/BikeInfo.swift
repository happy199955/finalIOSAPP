//
//  BikeInfo.swift
//  finalapp
//
//  Created by User15 on 2020/1/13.
//  Copyright © 2020 test. All rights reserved.
//

import Foundation

struct BikeInfo: Codable{
    var StationUID:String
    var StationName:NameType
    var BikesCapacity:Int
    var StationAddress:NameType
}
struct NameType: Codable {
    var Zh_tw:String
    var En:String
}
