import SwiftUI
 
class AppState: ObservableObject {
    @Published var counter: Int = 0
}
 
struct StateObjectTestView: View {
    @StateObject private var appState = AppState()
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Observed Object")) {
                    NavigationLink(
                        destination: NestedObservedObjectExample(state: appState),
                        label: {
                            Text("Nested ObservedObject Example")
                        })
                }
            }
        }
    }
}
 
struct NestedObservedObjectExample: View {
    @ObservedObject var state: AppState
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Main counter: \(state.counter)")
                .font(.title)
            Button("Increase main") {
                state.counter += 1
            }
 
            Divider().padding()
 
            NestedCounterView(appState: state)
        }.padding()
    }
}
 
struct NestedCounterView: View {
    @ObservedObject var appState: AppState
 
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Child counter: \(appState.counter)")
                .font(.title)
            HStack(spacing: 20) {
                Button("Increase") {
                    appState.counter += 1
                }
 
                Button("Decrease") {
                    appState.counter = max(0, appState.counter - 1)
                }
                .disabled(appState.counter == 0)
            }
        }
    }
}
 
struct StateObjectTestView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectTestView()
    }
}
