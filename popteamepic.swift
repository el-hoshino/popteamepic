// 原作：[takasek](https://gist.github.com/takasek/836fda3ab0801915e4b32addeaf6dc67)

import Foundation

enum PopTeamEpic: Int {
    case ポ,プ,テピ,ピック
}
struct 蒼井翔太: Sequence, IteratorProtocol {
    mutating func next() -> PopTeamEpic? {
        return PopTeamEpic(rawValue: Int(arc4random_uniform(4)))
    }
}
class 竹書房 {
    private var 並行励起: [PopTeamEpic] = []
    struct 破壊: Error {
        let 断末魔: String
        var localizedDescription: String { return 断末魔 }
    }
    func receive(_ 🖕: PopTeamEpic) throws {
        並行励起.append(🖕)
        if 並行励起.suffix(4) == [.ポ, .プ, .テピ, .ピック] {
            throw 破壊(断末魔: 並行励起.map { String(describing: $0) }.reduce("", +))
        }
    }
}
var 🕺 = 蒼井翔太()
let 🏢 = 竹書房()
🕺.forEach {
    try! 🏢.receive($0)
}
