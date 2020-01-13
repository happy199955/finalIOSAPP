//
//  BikeRow.swift
//  finalapp
//
//  Created by User15 on 2020/1/13.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct BikeRow: View {
    var bike: BikeInfo
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(bike.StationName.Zh_tw)
                    .bold()
                    .font(.system(size: 40))
                Text(bike.StationAddress.Zh_tw)
            }
        }
    }
}

struct BikeRow_Previews: PreviewProvider {
    static var previews: some View {
        BikeRow(bike: BikeInfo(StationUID: "TAO2001",StationName:NameType(Zh_tw: "中央大學圖書館", En: "National Central University Library"), BikesCapacity: 60, StationAddress: NameType(Zh_tw: "中大路300號(中央大學校內圖書館前)", En: "No.300, Zhongda Rd.")))
    }
}
