import SwiftUI

struct Content: View {
    @State private var index = 0
    var body: some View {
        ZStack {
            Image("c00_\(index < 10 ? "0\(index)" : "\(index)")")
            VStack {
                Spacer()
                HStack {
                    Button {
                        index -= 1
                    } label: {
                        Image(systemName: "chevron.left.circle.fill")
                            .font(.title)
                    }.padding()
                    Spacer()
                    Button {
                        index += 1
                    } label: {
                        Image(systemName: "chevron.right.circle.fill")
                            .font(.title)
                    }.padding()
                }
            }
        }
    }
}
