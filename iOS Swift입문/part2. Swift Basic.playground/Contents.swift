//: Playground - noun: a place where people can play
/*
 1. Swift에 대해 알아보자.
    2014년 6월 WWDC를 통해 공개
    - 세련된 문법. 스크립트처럼 보여서 쉽게 접근
    - 막상 해 보니 어렵더라. 이건 몇 가지 이유가 있겠지만,
      Swift가 안전을 위한 장치를 가지고 있고 엄격한 타이핑을 하기 때문.
    - 추가로 말씀드리고 싶은 건, 함수형 언어. 생각의 방식이 바뀌어야 한다.
 */

/*
 2. let & var
 3. String & Number
 */
import UIKit
let url = "www.atlaas.co.kr"
let hasProtocol = url.hasPrefix("http://")

print("\(url)")

let maxSpeed:Int = 240
var currentSpeed:Int = 120

currentSpeed += 20
currentSpeed += Int(20.4)

let intMax = Int.max
let intUMax = UInt.max

let intMin = Int.min
let intUMin = UInt.min

let pi = 3.14
let divider = 2
let halfPi = pi / Double(divider)

/*
 4. Tuple & typealias
     코마로 구분된 값의 리스트.
     간단하게 만들어 쓰고 읽을 수 있다.
     element 번호로 접근하거나 만들 때 지정한 이름으로 접근 가능
 */
let time1 = (9, 0, 48)
let time2:(h:Int, m:Int, s:Int) = (11, 51, 5)

let duration = (time1, time2)
let (start, end) = duration
start
end

typealias Time = (h:Int, m:Int, s:Int)
typealias Duration = (start:Time, end:Time)
let today:Duration = ((9, 10, 23), (17, 8, 21))
print("We studied until \(today.end.h) today")

/*
 5. Array
     Array 정의 방법
     Array<Type>() 또는 [Type]
     Array의 let과 var
     Array도 let으로 만들면 수정 불가
     Array의 Type
     Array 안에는 동일한 타입의 인스턴스가 들어가야 함
 */
var meetingRooms:Array<String> = ["Bansky", "Rivera", "Kahlo", "Picasso", "Cezanne", "Matisse"]
var groups:[Int] = [10, 8, 14, 9]

meetingRooms += ["Renoir"]

let maxSpeed1:Int = 200
var currentSpeed1:Int = 110
currentSpeed1 += 10

var speedHistory:[Int] = []
speedHistory += [currentSpeed1]
let gpsSpeed0901 = 114.1

speedHistory.append(Int(gpsSpeed0901))

speedHistory.last
print("\(speedHistory)")

let historyBackup = speedHistory
speedHistory += [150]
print("\(historyBackup)")

/*
 6. dictionay
     키와 값의 쌍으로 이루어진 컬렉션
     문자열 키에 정수 값을 가지는 Dictionary의 타입 선언은 [String:Int]
     Dictionary에 값 추가하기
     Dictionary에서 값 추출하기
     keys와 values로 키, 값 배열 추출하기
 */
var roomCapacity:[String:Int] = ["Banksy":4, "Rivera":8, "Kahlo":8, "Picasso":10]
//roomCapacity += ["Renoir":40] // X
roomCapacity["Renoir"] = 40
roomCapacity["Kahlo"]

//let roomNames = roomCapacity.keys // X
//let capacotys = roomCapacity.values // X

let roomNames = [String](roomCapacity.keys)
let capacities = [Int](roomCapacity.values)

//let total = capacities.reduce(0, combine: +)

/*
 7. Set
     순서를 가지지 않은 컬렉션
     주로 집합 연산이 필요한 경우 사용한다
     Intersect, Subtract, Union, ExclusiveOR
 */
let subway2:Set = ["시청", "을지로입구", "을지로3가", "을지로4가", "동대문역사문화공원", "신당", "상왕십리", "왕십리", "뚝섬", "한양대", "성수", "건대입구", "구의", "강변", "잠실나루", "잠실", "신천", "종합운동장", "삼성", "선릉", "역삼", "강남", "교대", "서초", "방배", "사당", "낙성대", "서울대입구", "봉천", "신림", "신대방", "구로디지털단지", "대림", "신도립", "문래", "영등포구청", "당산", "합정", "홍대입구", "신촌", "이대", "아현", "충정로"]
let subway3:Set = ["지축", "구파발", "연신내", "불광", "녹번", "홍제", "무악재", "독립문", "경복궁", "안국", "종로3가", "을지로3가", "충무로", "동대입구", "약수", "금호", "옥수", "압구정", "신사", "잠원", "고속터미널", "교대", "남부터미널", "양재", "매봉", "도곡", "대치", "학여울", "대청", "일원", "수서", "가락시장", "경찰병원", "오금"]

let transfer = subway2.intersection(subway3)
let notTransfer = subway2.subtracting(subway3)

let union = subway2.union(subway3)
//let exOR = subway2.exclusiverOr(subway3)








































