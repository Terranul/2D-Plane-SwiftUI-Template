import SwiftUI

struct PlaneContentView: View {
    
    var body: some View {
        VStack {
            Text("Information Box 1")
                        .padding(20)
                        .border(Color.gray, width: 1)
            Text("Hello, this is a simple text box.")
                        .padding(20)
                        .border(Color.gray, width: 1)
            // set values outside the screen with offset
            HStack {
                Text("Hello, this is a simple text box.")
                            .padding(20)
                            .border(Color.gray, width: 1)
                            // force test to go out of screen bounds with fixed size
                            // use offset for other objects to represent out of screen views
                            .fixedSize()
                Text("Hello, this is a simple text box.")
                            .padding(20)
                            .border(Color.gray, width: 1)
                            .fixedSize()

            }
            HStack {
                Text("Hello, this is a simple text box.")
                            .padding(20)
                            .border(Color.gray, width: 1)
                            .fixedSize()
                Text("Hello, this is a simple text box.")
                            .padding(20)
                            .border(Color.gray, width: 1)
                            .fixedSize()
                Text("Hello, this is a simple text box.")
                            .padding(20)
                            .border(Color.gray, width: 1)
                            .fixedSize()
            }
        }
    }
}
