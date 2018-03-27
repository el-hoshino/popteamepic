// 原作：[takasek](https://gist.github.com/takasek/836fda3ab0801915e4b32addeaf6dc67)

import Foundation

enum PopTeamEpic: String {
    case po = "ポ"
    case p = "プ"
    case teame = "テピ"
    case pic = "ピック"
}
struct 蒼井翔太: Sequence, IteratorProtocol {
    mutating func next() -> PopTeamEpic? {
        switch arc4random_uniform(4) {
        case 0: return .po
        case 1: return .p
        case 2: return .teame
        case 3: return .pic
        case _: fatalError()
        }
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
        if 並行励起.suffix(4) == [.po, .p, .teame, .pic] {
            throw 破壊(断末魔: 並行励起.map { $0.rawValue }.reduce("", +))
        }
    }
}

var 🕺 = 蒼井翔太()
let 🏢 = 竹書房()
for 🖕 in 🕺 {
    try! 🏢.receive(🖕)
}
