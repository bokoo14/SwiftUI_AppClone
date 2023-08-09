//
//  HeaderModel.swift
//  NaverWebtoon
//
//  Created by Bokyung on 2023/08/07.
//

import Foundation

struct HeaderBanner: Identifiable {
    let id: UUID = UUID()
    var lineBannerTitle: String
    var backBannerTitle: String
    var index: Int
}

var Banners: [HeaderBanner] = [
    HeaderBanner(lineBannerTitle: "ImgLineBanner01", backBannerTitle: "ImgBanner01", index: 1),
    HeaderBanner(lineBannerTitle: "ImgLineBanner02", backBannerTitle: "ImgBanner02", index: 2),
    HeaderBanner(lineBannerTitle: "ImgLineBanner03", backBannerTitle: "ImgBanner03", index: 3),
    HeaderBanner(lineBannerTitle: "ImgLineBanner04", backBannerTitle: "ImgBanner04", index: 4),
    HeaderBanner(lineBannerTitle: "ImgLineBanner05", backBannerTitle: "ImgBanner05", index: 5),
    HeaderBanner(lineBannerTitle: "ImgLineBanner06", backBannerTitle: "ImgBanner06", index: 6),
    HeaderBanner(lineBannerTitle: "ImgLineBanner07", backBannerTitle: "ImgBanner07", index: 7),
    HeaderBanner(lineBannerTitle: "ImgLineBanner08", backBannerTitle: "ImgBanner08", index: 8)
]
