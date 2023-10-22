//
//  FlyingNumber.swift
//  MemorizeGame
//
//  Created by Abdulsamed Arslan on 22.10.2023.
//

import SwiftUI

struct FlyingNumber: View {
    let number: Int

    var body: some View {
        if number != 0 {
            Text(number, format: .number)
        }
    }
}

#Preview {
    FlyingNumber(number: 5)
}
