//
//  MonthlyIDGeneratorTests.swift
//  EmotionDiaryTests
//
//  Created by YUJIN KWON on 2023/01/30.
//

import XCTest
@testable import EmotionDiary

class MonthlyIDGeneratorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_MIDGenerator_whenMIDrequested_withMoodDiary() {
        let sut = MonthlyIDGenerator()
        let diary1 =  MoodDiary(date: "2022-04-01 00:01:01", text: "My Diary", mood: .good)
        let diary2 =  MoodDiary(date: "2022-05-01 00:01:01", text: "My Diary", mood: .good)
        let diary3 =  MoodDiary(date: "2022-06-01 00:01:01", text: "My Diary", mood: .good)
        
        let id1 = sut.monthlyID(with: diary1)
        let id2 = sut.monthlyID(with: diary2)
        let id3 = sut.monthlyID(with: diary3)
        
        let expected1 = "2022-4"
        XCTAssertEqual(id1, expected1)
        
        let expected2 = "2022-5"
        XCTAssertEqual(id2, expected2)
        
        let expected3 = "2022-6"
        XCTAssertEqual(id3, expected3)
        
    }
    
}
