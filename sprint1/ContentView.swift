import SwiftUI

struct ContentView: View {
    @EnvironmentObject var mainViewModel: MainViewModel
    @State private var paragraph1 = "Texto 1"
    @State private var paragraph2 = "Texto 2"
    
    var body: some View {
        VStack() {
            HStack(alignment: .top) {
                Text(paragraph1)
                Text(paragraph2)
            } .frame(maxWidth: .infinity)
            Button(action: {
                paragraph1 = "\(mainViewModel.buildParagraph())"
                paragraph2 = "\(mainViewModel.buildParagraph())"
            }) {
                Image("SwiftUILogo")
                    .frame(width: 200, height: 150)
                    .foregroundColor(.orange)
            }
            .buttonStyle(PlainButtonStyle())
            Spacer()
        }
        .padding().background(
            LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .red]), startPoint: .top, endPoint: .bottom)
        )
        
    }
}
