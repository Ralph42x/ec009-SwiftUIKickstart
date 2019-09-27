//
//  MoodInputView.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/15/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct MoodInputView: View {
    @State private var value = 2.0
    @ObservedObject var presenter: MoodInputPresenter
    
    var body: some View {
        VStack {
            Group {
                ContextInputField(context: $presenter.context)
                presenter.showWarningViewIfNecessary
            }
            .animation(.easeIn)
            .padding(.top)
            FaceView(value: value)
            ValueSlider(value: $value,
                        rating: $presenter.rating)
            MoodInputButton(contextIsNotValid: presenter.contextIsNotValid,
                            save: (presenter.saveMood))
                .padding(.bottom)
        }
    }
}

struct MoodInputView_Previews: PreviewProvider {
    static var previews: some View {
        MoodInputView(presenter: MoodInputPresenter(History()))
    }
}
