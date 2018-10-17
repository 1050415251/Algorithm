import UIKit

var str = "Hello, playground"


//Q: 给定一个非负整数的列表，重新排列它们的顺序把他们组成一个最大的整数。例如，给定[3，30，34，5，9]，最大的组成数是9534330.注意:结果可能非常大，所以您需要返回一个字符串而不是整数。
class Test: NSObject {

    func test(arr: [Int]) -> String {
        var nums:[Int] = []
        arr.forEach {
            nums = nums + cutarr(data: $0)
        }
        debugPrint(nums)
        let newnums = nums.sorted {
             $0 > $1
        }
        debugPrint(newnums)
        return newnums.joinseat("")
    }

    func cutarr(data:Int) -> [Int] {
        var result: [Int] = []
        let count = "\(data)".count
        for index in 0..<count {
            let d = Int(pow(Double(10), Double(count - index)))
            result.append(data%d/Int(pow(Double(10), Double(count - index - 1))))
        }
        return result
    }
}

extension Array where Element == Int {
    func joinseat(_ seat :String) -> String {
        var info:[String] = []
        self.forEach {
            info.append(String($0))
        }
        return info.joined(separator: seat)
    }
}
let t = Test()
let result = t.test(arr: [32,335,46,37,90])
debugPrint(result)

