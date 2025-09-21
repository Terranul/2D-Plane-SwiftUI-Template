import SwiftUI

struct PlaneView: View {
    
    // set Content in the middle of the screen
    @State var initialPosition: CGPoint = CGPoint(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)
    @State var offsetValue: CGSize = .zero
    
    var body: some View {
        ZStack {
            // create transparent shape so entire screen is draggable
            Color.clear.contentShape(Rectangle())
            PlaneContentView()
                .position(initialPosition)
                .offset(x: offsetValue.width, y: offsetValue.height)
            
        }
        .ignoresSafeArea()
        .gesture(
            DragGesture()
                .onChanged {value in
                    offsetValue = value.translation
                }
                .onEnded {value in
                    // update position
                    initialPosition = CGPoint(x: initialPosition.x + value.translation.width, y: initialPosition.y + value.translation.height)
                    offsetValue = .zero
                }
        )
    }
}
