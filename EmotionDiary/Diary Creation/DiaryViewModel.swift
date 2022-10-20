//
//  DiaryViewModel.swift
//  EmotionDiary
//
//  Created by YUJIN KWON on 2022/10/19.
//

import Foundation
import SwiftUI
import Combine

final class DiaryViewModel: ObservableObject {
    
    @Published var date: Date = Date()
    @Published var mood: Mood = .great
    @Published var isPresented: Binding<Bool>
    
    var subscriptions = Set<AnyCancellable>()
    
    init(isPresented: Binding<Bool>) {
        self.isPresented = isPresented
        
        $date.sink { date in
            print("---> selected: \(date)")
        }.store(in: &subscriptions)
    }
}
