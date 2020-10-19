import SwiftUI

struct Content: View {
    @State private var index = 0
    
    var body: some View {
        ZStack {
            TabView(selection: $index) {
                ForEach(0 ..< 200) {
                    Image("c00_\($0 < 10 ? "0\($0)" : "\($0)")")
                        .tag($0)
                }
            }.tabViewStyle(PageTabViewStyle())
            VStack {
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "line.horizontal.3.circle.fill")
                            .font(.title)
                            .frame(width: 64, height: 64)
                            .contentShape(Rectangle())
                    }
                }
                Spacer()
            }
        }
    }
}
