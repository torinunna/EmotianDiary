//
//  DiaryDateInputView.swift
//  EmotionDiary
//
//  Created by YUJIN KWON on 2022/10/12.
//

import SwiftUI

struct DiaryDateInputView: View {

    @StateObject var vm: DiaryViewModel
    
    var body: some View {
        
        VStack {
            DatePicker("Starting Date",
                       selection: $vm.date,
                       displayedComponents: [.date])
        }
        .datePickerStyle(.graphical)
    }
}

struct DiaryDateInputView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = DiaryViewModel(isPresented: .constant(false))
        DiaryDateInputView(vm: vm)
    }
}
