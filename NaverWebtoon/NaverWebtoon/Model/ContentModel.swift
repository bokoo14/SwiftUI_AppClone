//
//  ContentModel.swift
//  NaverWebtoon
//
//  Created by Bokyung on 2023/08/07.
//

import Foundation

struct Webtoon: Identifiable {
    var id: UUID = UUID()
    var imageTitle: String
    var webtoonTitle: String
    var autorName: String
}

var mondayWebToons: [Webtoon] = [
    Webtoon(imageTitle: "ImgContentMon01", webtoonTitle: "그냥 선생님", autorName: "엠케이 ★9.99"),
    Webtoon(imageTitle: "ImgContentMon02", webtoonTitle: "멸망급 ADA의 선생님", autorName: "엠케이 ★9.99"),
    Webtoon(imageTitle: "ImgContentMon03", webtoonTitle: "엠케이가 간다!", autorName: "엠케이 ★9.99"),
    
    Webtoon(imageTitle: "ImgContentMon04", webtoonTitle: "아이들의 엠선생님", autorName: "엠케이 ★9.99"),
    Webtoon(imageTitle: "ImgContentMon05", webtoonTitle: "엠케이의 교실", autorName: "엠케이 ★9.99"),
    Webtoon(imageTitle: "ImgContentMon06", webtoonTitle: "공부의 결과", autorName: "엠케이 ★9.99"),
    
    Webtoon(imageTitle: "ImgContentMon07", webtoonTitle: "공부를 뇌에서 뽑으면", autorName: "엠케이 ★9.99"),
    Webtoon(imageTitle: "ImgContentMon08", webtoonTitle: "공부하기 좋은 날", autorName: "엠케이 ★9.99"),
    Webtoon(imageTitle: "ImgContentMon09", webtoonTitle: "초월자 학원의 수강생이 되었다.", autorName: "엠케이 ★9.99"),
    
    Webtoon(imageTitle: "ImgContentMon10", webtoonTitle: "애플까지 걸어서 1분", autorName: "엠케이 ★9.99"),
    Webtoon(imageTitle: "ImgContentMon11", webtoonTitle: "스터디 그룹", autorName: "엠케이 ★9.99"),
    Webtoon(imageTitle: "ImgContentMon12", webtoonTitle: "지금 우리 학교는", autorName: "엠케이 ★9.99")
]

var tuesdayWebToons: [Webtoon] = [
    Webtoon(imageTitle: "ImgContentTue01", webtoonTitle: "놓았다! 정신줄!", autorName: "김래원 ★9.78"),
    Webtoon(imageTitle: "ImgContentTue02", webtoonTitle: "외모지하주의", autorName: "김래원 ★9.78"),
    Webtoon(imageTitle: "ImgContentTue03", webtoonTitle: "하남자", autorName: "김래원 ★9.78"),
    
    Webtoon(imageTitle: "ImgContentTue04", webtoonTitle: "광마회귀", autorName: "김래원 ★9.78"),
    Webtoon(imageTitle: "ImgContentTue05", webtoonTitle: "절대복종", autorName: "김래원 ★9.78"),
    Webtoon(imageTitle: "ImgContentTue06", webtoonTitle: "나혼자 쪼렙", autorName: "김래원 ★9.78"),
    
    Webtoon(imageTitle: "ImgContentMon07", webtoonTitle: "개(를) 빻았다", autorName: "김래원 ★9.78"),
    Webtoon(imageTitle: "ImgContentTue08", webtoonTitle: "선을 넘은 김래원", autorName: "김래원 ★9.78"),
    Webtoon(imageTitle: "ImgContentTue09", webtoonTitle: "이십팔세기", autorName: "김래원 ★9.78"),
    
    Webtoon(imageTitle: "ImgContentTue10", webtoonTitle: "아카데미 탈출일지", autorName: "김래원 ★9.78"),
    Webtoon(imageTitle: "ImgContentTue11", webtoonTitle: "유쾌한 왕따", autorName: "김래원 ★9.78"),
    Webtoon(imageTitle: "ImgContentTue12", webtoonTitle: "세기말 풋사과 보습학원", autorName: "김래원 ★9.78")
]

var wednesdayWebToons: [Webtoon] = [
    Webtoon(imageTitle: "ImgContentWed01", webtoonTitle: "근육귀환", autorName: "김래원 ★9.78"),
    Webtoon(imageTitle: "ImgContentWed02", webtoonTitle: "성스러운 헬창생활", autorName: "김래원 ★9.78"),
    Webtoon(imageTitle: "ImgContentWed03", webtoonTitle: "전지적 채드기준", autorName: "김래원 ★9.78"),
    
    Webtoon(imageTitle: "ImgContentWed04", webtoonTitle: "근육연애", autorName: "김래원 ★9.78"),
    Webtoon(imageTitle: "ImgContentWed05", webtoonTitle: "내가 키운 근육들", autorName: "김래원 ★9.78"),
    Webtoon(imageTitle: "ImgContentWed06", webtoonTitle: "시한부 만들뻔 했어요!", autorName: "김래원 ★9.78"),
    
    Webtoon(imageTitle: "ImgContentWed07", webtoonTitle: "근육을 훔친 이는 누구인가", autorName: "머슬러닝 ★9.78"),
    Webtoon(imageTitle: "ImgContentWed08", webtoonTitle: "백세트", autorName: "머슬러닝 ★9.78"),
    Webtoon(imageTitle: "ImgContentWed09", webtoonTitle: "내가 운동을 결심한 것은", autorName: "머슬러닝 ★9.78"),
    
    Webtoon(imageTitle: "ImgContentWed10", webtoonTitle: "맞짱깔래?", autorName: "머슬러닝 ★9.78"),
    Webtoon(imageTitle: "ImgContentWed11", webtoonTitle: "66666년 만에 환생한 흑마법사", autorName: "머슬러닝 ★9.78"),
    Webtoon(imageTitle: "ImgContentWed12", webtoonTitle: "헬창2", autorName: "머슬러닝 ★9.78")
]

var thursdayWebToons: [Webtoon] = [
    Webtoon(imageTitle: "ImgContentThu01", webtoonTitle: "시대장", autorName: "김시즈 ★9.83"),
    Webtoon(imageTitle: "ImgContentThu02", webtoonTitle: "마루는 강쥐", autorName: "김시즈 ★9.83"),
    Webtoon(imageTitle: "ImgContentThu03", webtoonTitle: "하루만 시즈가 되고 싶어", autorName: "김시즈 ★9.83"),
    
    Webtoon(imageTitle: "ImgContentThu04", webtoonTitle: "유사연애", autorName: "김시즈 ★9.83"),
    Webtoon(imageTitle: "ImgContentThu05", webtoonTitle: "내가 짜온 개발코드", autorName: "김시즈 ★9.83"),
    Webtoon(imageTitle: "ImgContentThu06", webtoonTitle: "시한부인 줄 알았어요!", autorName: "김시즈 ★9.83"),
    
    Webtoon(imageTitle: "ImgContentThu07", webtoonTitle: "사신소년", autorName: "김시즈 ★9.83"),
    Webtoon(imageTitle: "ImgContentThu08", webtoonTitle: "대학원 탈출일지", autorName: "김시즈 ★9.83"),
    Webtoon(imageTitle: "ImgContentThu09", webtoonTitle: "한림 체육관", autorName: "김시즈 ★9.83"),
    
    Webtoon(imageTitle: "ImgContentThu10", webtoonTitle: "멸망 이후의 세계", autorName: "김시즈 ★9.83"),
    Webtoon(imageTitle: "ImgContentThu11", webtoonTitle: "올가미", autorName: "김시즈 ★9.83"),
    Webtoon(imageTitle: "ImgContentThu12", webtoonTitle: "하복팽가 막내아들", autorName: "김시즈 ★9.83")
]

var fridayWebToons: [Webtoon] = [
    Webtoon(imageTitle: "ImgContentFri01", webtoonTitle: "버림받은 왕녀의 은밀한 침실", autorName: "꽃사슴보이 ★9.99"),
    Webtoon(imageTitle: "ImgContentFri02", webtoonTitle: "제이의 세계", autorName: "꽃사슴보이 ★9.99"),
    Webtoon(imageTitle: "ImgContentFri03", webtoonTitle: "백수세끼", autorName: "꽃사슴보이 ★9.99"),
    
    Webtoon(imageTitle: "ImgContentFri04", webtoonTitle: "뷰티풀 군바리", autorName: "꽃사슴보이 ★9.99"),
    Webtoon(imageTitle: "ImgContentFri05", webtoonTitle: "알고지상주의", autorName: "꽃사슴보이 ★9.99"),
    Webtoon(imageTitle: "ImgContentFri06", webtoonTitle: "물어보는 사이", autorName: "꽃사슴보이 ★9.99"),
    
    Webtoon(imageTitle: "ImgContentFri07", webtoonTitle: "개발신의탑", autorName: "꽃사슴보이 ★9.99"),
    Webtoon(imageTitle: "ImgContentFri08", webtoonTitle: "똑닮은딸", autorName: "꽃사슴보이 ★9.99"),
    Webtoon(imageTitle: "ImgContentFri09", webtoonTitle: "윈드 브레이커", autorName: "꽃사슴보이 ★9.99"),
    
    Webtoon(imageTitle: "ImgContentFri10", webtoonTitle: "장씨세가 호위무사", autorName: "꽃사슴보이 ★9.99"),
    Webtoon(imageTitle: "ImgContentFri11", webtoonTitle: "순정말고 순종", autorName: "꽃사슴보이 ★9.99"),
    Webtoon(imageTitle: "ImgContentFri12", webtoonTitle: "신화급 귀속 아이템을 손에 넣었다", autorName: "꽃사슴보이 ★9.99")
]


var saturdayWebToons: [Webtoon] = [
    Webtoon(imageTitle: "ImgContentSat01", webtoonTitle: "잪집에는 로꼬 살고 있다", autorName: "로꼬 ★9.78"),
    Webtoon(imageTitle: "ImgContentSat02", webtoonTitle: "알고 일기", autorName: "로꼬 ★9.78"),
    Webtoon(imageTitle: "ImgContentSat03", webtoonTitle: "페페를 죽여줘요", autorName: "로꼬 ★9.78"),
    
    Webtoon(imageTitle: "ImgContentSat04", webtoonTitle: "알고머신", autorName: "로꼬 ★9.78"),
    Webtoon(imageTitle: "ImgContentSat05", webtoonTitle: "촉법소년", autorName: "로꼬 ★9.78"),
    Webtoon(imageTitle: "ImgContentSat06", webtoonTitle: "재벌집 막내아들", autorName: "로꼬 ★9.78"),
    
    Webtoon(imageTitle: "ImgContentSat07", webtoonTitle: "수학을 삼킨 너에게", autorName: "로꼬 ★9.78"),
    Webtoon(imageTitle: "ImgContentSat08", webtoonTitle: "뮤즈 온 유명", autorName: "로꼬 ★9.78"),
    Webtoon(imageTitle: "ImgContentSat09", webtoonTitle: "코딩 테스트", autorName: "로꼬 ★9.78"),
    
    Webtoon(imageTitle: "ImgContentSat10", webtoonTitle: "가족같은 XX", autorName: "로꼬 ★9.78"),
    Webtoon(imageTitle: "ImgContentSat11", webtoonTitle: "순수한 동거생활", autorName: "로꼬 ★9.78"),
    Webtoon(imageTitle: "ImgContentSat12", webtoonTitle: "나 혼자 네크로맨서", autorName: "로꼬 ★9.78")
]


var sundayWebToons: [Webtoon] = [
    Webtoon(imageTitle: "ImgContentSun01", webtoonTitle: "김다빈형님", autorName: "김다빈 ★9.88"),
    Webtoon(imageTitle: "ImgContentSun02", webtoonTitle: "숙제 안해오면 몽둥이", autorName: "김다빈 ★9.88"),
    Webtoon(imageTitle: "ImgContentSun03", webtoonTitle: "김다빈, 전설이 되다", autorName: "김다빈 ★9.88"),
    
    Webtoon(imageTitle: "ImgContentSun04", webtoonTitle: "나랑 Xcode 할래?", autorName: "김다빈 ★9.88"),
    Webtoon(imageTitle: "ImgContentSun05", webtoonTitle: "세레나", autorName: "김다빈 ★9.88"),
    Webtoon(imageTitle: "ImgContentSun06", webtoonTitle: "프리드로우", autorName: "김다빈 ★9.88"),
    
    Webtoon(imageTitle: "ImgContentSun07", webtoonTitle: "흑화한 김다빈은 무섭다", autorName: "김다빈 ★9.88"),
    Webtoon(imageTitle: "ImgContentSun08", webtoonTitle: "망나니 소교주로 환생했다", autorName: "김다빈 ★9.88"),
    Webtoon(imageTitle: "ImgContentSun09", webtoonTitle: "작전명 순정", autorName: "김다빈 ★9.88"),
    
    Webtoon(imageTitle: "ImgContentSun10", webtoonTitle: "마도 전생기", autorName: "김다빈 ★9.88"),
    Webtoon(imageTitle: "ImgContentSun11", webtoonTitle: "대충해도 코딩 잘함", autorName: "김다빈 ★9.88"),
    Webtoon(imageTitle: "ImgContentSun12", webtoonTitle: "나를 바꿔줘", autorName: "김다빈 ★9.88")
]


var newWebToons: [Webtoon] = [
    Webtoon(imageTitle: "ImgContentNew01", webtoonTitle: "신혼일기", autorName: "하명관 ★9.78"),
    Webtoon(imageTitle: "ImgContentNew02", webtoonTitle: "싸움못함", autorName: "하명관 ★9.78"),
    Webtoon(imageTitle: "ImgContentNew03", webtoonTitle: "퇴학용병", autorName: "하명관 ★9.78"),
    
    Webtoon(imageTitle: "ImgContentNew04", webtoonTitle: "약한 하명관", autorName: "하명관 ★9.78"),
    Webtoon(imageTitle: "ImgContentNew05", webtoonTitle: "치매전쟁", autorName: "하명관 ★9.78"),
    Webtoon(imageTitle: "ImgContentNew06", webtoonTitle: "투신 잔챙이", autorName: "하명관 ★9.78"),
    
    Webtoon(imageTitle: "ImgContentNew07", webtoonTitle: "사형 하명관", autorName: "하명관 ★9.78"),
    Webtoon(imageTitle: "ImgContentNew08", webtoonTitle: "일타강사 하사부", autorName: "하명관 ★9.78"),
    Webtoon(imageTitle: "ImgContentNew09", webtoonTitle: "소녀재판", autorName: "하명관 ★9.78"),
    
    Webtoon(imageTitle: "ImgContentNew10", webtoonTitle: "무직백수 하 명 관", autorName: "하명관 ★9.78"),
    Webtoon(imageTitle: "ImgContentNew11", webtoonTitle: "사랑받는 시집살이", autorName: "하명관 ★9.78"),
    Webtoon(imageTitle: "ImgContentNew12", webtoonTitle: "고백 받을 수 있긴 하나?", autorName: "하명관 ★9.78")
]
