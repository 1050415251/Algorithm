import UIKit

var str = "Hello, playground"


struct User {
    static var money = 100
    static var cap = 0
    static var bottle = 0
    static var bottlecount = 0
}

enum ChangeStyle:Int {
    case CAP = 5
    case BOTTLE = 3
}

func buyBottle() {
    let price = 5
    User.bottlecount = User.money/price
    User.cap = User.money/price
    User.bottle = User.money/price
    User.money = User.money%price
    while User.bottle >= ChangeStyle.BOTTLE.rawValue || User.cap >= ChangeStyle.CAP.rawValue {
        exchange(style: ChangeStyle.BOTTLE, count: User.bottle)
        exchange(style: ChangeStyle.CAP, count: User.cap)
    }
}

func exchange(style: ChangeStyle,count: Int) {
    if style == .BOTTLE {
        User.bottle = count%style.rawValue
    }else {
        User.cap = count%style.rawValue
    }
    User.bottle = User.bottle + count/style.rawValue
    User.cap = User.cap + count/style.rawValue
    User.bottlecount = User.bottlecount + count/style.rawValue
}
buyBottle()
debugPrint("一共购买了\(User.bottlecount)瓶酒")
debugPrint("一共剩下了\(User.bottle)个酒瓶")
debugPrint("一共剩下了\(User.cap)个酒瓶盖")

