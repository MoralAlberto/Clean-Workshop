import Foundation

struct ProgrammerDisplayData {
    let name: String
    let interviewDate: NSDate
    let favorite: Bool
    
    init(programmer: Programmer) {
        self.name = programmer.name
        self.interviewDate = programmer.interviewDate
        self.favorite = programmer.favorite
    }
}