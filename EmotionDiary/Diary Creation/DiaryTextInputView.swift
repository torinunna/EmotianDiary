//
//  DiaryTextInputView.swift
//  EmotionDiary
//
//  Created by YUJIN KWON on 2022/10/12.
//

import SwiftUI

struct DiaryTextInputView: View {
    
    @ObservedObject var vm: DiaryViewModel
    
    var body: some View {
        VStack {
            TextEditor(text: $vm.text)
                .border(.gray.opacity(0.2), width: 2)
        }
        .padding()
    }
}

struct DiaryTextInputView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryTextInputView(vm: DiaryViewModel(isPresented: .constant(false)))
    }
}
