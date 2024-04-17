import SwiftUI
import Foundation

let wordsGroups = [
    "Lorem ipsum dolor sit amet",
    "consectetur adipiscing elit",
    "sed do eiusmod tempor incididunt",
    "Turpis nunc eget lorem dolor sed viverra ipsum",
    "Leo",
    "Non pulvinar neque laoreet suspendisse",
    "Viverra suspendisse potenti nullam ac tortor vitae purus. Pharetra magna ac placerat vestibulum lectus mauris",
    "Ligula ullamcorper",
    "Sit amet venenatis urna cursus",
]

let MIN_PARAGRAPH_LENGTH = 1
let MAX_PARAGRAPH_LENGTH = 15

@main
struct sprint1App: App {
    let mainViewModel = MainViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(mainViewModel)
        }
    }
}

class MainViewModel: ObservableObject {
    func randomText() -> String {
        return wordsGroups.randomElement() ?? "Texto por defecto"
    }
    
    func getRandomNumber() -> Int{
        return Int.random(in: MIN_PARAGRAPH_LENGTH...MAX_PARAGRAPH_LENGTH)
    }
    
    func buildParagraph() -> String {
        let randomNumber = getRandomNumber()
        var paragraph: String = ""
        for _ in 0...randomNumber{
            paragraph += randomText()
        }
        return paragraph
    }
}
