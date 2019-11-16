//
//  MoodInputButton.swift
//  MyMood
//
//  Created by Daniel Steinberg on 9/19/19.
//  Copyright © 2019 Dim Sum Thinking. All rights reserved.
//

import SwiftUI

struct MoodInputButton {
    let contextIsNotValid: Bool
    let save: () -> Void
}

extension MoodInputButton: View {
    var body: some View {
        Button("Record Mood",
               action: save)
            .disabled(contextIsNotValid)
    }
}

struct MoodEntryButton_Previews: PreviewProvider {
    static var previews: some View {
        MoodInputButton(contextIsNotValid: true,
                        save: {})
    }
}
