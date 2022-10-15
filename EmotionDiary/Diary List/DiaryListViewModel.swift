//
//  DiaryListViewModel.swift
//  EmotionDiary
//
//  Created by YUJIN KWON on 2022/10/14.
//

import Foundation

final class DiaryListViewModel: ObservableObject {
    
    @Published var list: [MoodDiary] = MoodDiary.list
    @Published var dic: [String: [MoodDiary]] = [:]
    
    init() {
        self.dic = Dictionary(grouping: self.list, by: { $0.monthlyIdentifier })
    }
    
    var keys: [String] {
//        given: "2022-5", "2022-4", "2022-6"
//        sorted: "2022-6", "2022-5", "2022-4"
        return dic.keys.sorted { $0 < $1 }
    }
}
