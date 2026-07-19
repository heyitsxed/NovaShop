//
//  CartStepper.swift
//  NovaShop
//
//  Created by Cedrick on 6/28/26.
//

import SwiftUI

struct CartStepper: View {
    @Binding var quantity: Int
    
    var minLimit: Int = 1
    var maxLimit: Int = 99
    var delete: () -> Void
    
    var body: some View {
        HStack(spacing: 0) {
            Button(action: decreaseQuantity) {
                Image(systemName: quantity <= minLimit ? "trash" : "minus")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(quantity <= minLimit ? .secondary : .primary)
                    .frame(width: 36, height: 36)
                    .background(Color(.white))
            }
            
            Text("\(quantity)")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.primary)
                .frame(width: 30, height: 36)
                .background(Color(.white))
            
            Button(action: increaseQuantity) {
                Image(systemName: "plus")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(quantity >= maxLimit ? .secondary : .primary)
                    .frame(width: 36, height: 36)
                    .background(Color(.white))
            }
            .disabled(quantity >= maxLimit)
        }
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray3), lineWidth: 1)
        }
    }
    
    // MARK: - Helper Actions
    private func decreaseQuantity() {
        if quantity > minLimit {
            withAnimation(.spring(response: 0.2, dampingFraction: 0.6)) {
                quantity -= 1
            }
        } else {
            delete()
        }
        
        triggerHapticFeedback()
    }
    
    private func increaseQuantity() {
        if quantity < maxLimit {
            withAnimation(.spring(response: 0.2, dampingFraction: 0.6)) {
                quantity += 1
            }
            triggerHapticFeedback()
        }
    }
    
    private func triggerHapticFeedback() {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
    }
}
