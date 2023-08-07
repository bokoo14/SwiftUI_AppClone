//
//  TabModel.swift
//  NaverWebtoon
//
//  Created by Bokyung on 2023/08/07.
//

import Foundation

struct TabModel: Identifiable {
    let id: UUID = UUID()
    var tabTitle: String
    var tabView: [Webtoon]
}

var tabs: [TabModel] = [
    TabModel(tabTitle: "월", tabView: mondayWebToons),
    TabModel(tabTitle: "화", tabView: tuesdayWebToons),
    TabModel(tabTitle: "수", tabView: wednesdayWebToons),
    TabModel(tabTitle: "목", tabView: thursdayWebToons),
    TabModel(tabTitle: "금", tabView: fridayWebToons),
    TabModel(tabTitle: "토", tabView: saturdayWebToons),
    TabModel(tabTitle: "일", tabView: sundayWebToons),
    TabModel(tabTitle: "신작", tabView: newWebToons)
]

