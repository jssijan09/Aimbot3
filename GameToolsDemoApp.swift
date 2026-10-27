import SwiftUI

@main
struct GameToolsDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(red: 0.04, green: 0.06, blue: 0.12), Color(red: 0.10, green: 0.12, blue: 0.22)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(spacing: 22) {
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("GAME TOOLS")
                            .font(.system(size: 13, weight: .bold, design: .rounded))
                            .tracking(3)
                            .foregroundStyle(.cyan)
                        Text("Demo Panel")
                            .font(.system(size: 32, weight: .heavy, design: .rounded))
                            .foregroundStyle(.white)
                    }
                    Spacer()
                    Image(systemName: "gamecontroller.fill")
                        .font(.system(size: 28, weight: .semibold))
                        .foregroundStyle(.cyan)
                        .padding(16)
                        .background(.white.opacity(0.08), in: RoundedRectangle(cornerRadius: 18))
                }
                VStack(alignment: .leading, spacing: 12) {
                    Label("Safe demo interface", systemImage: "checkmark.shield.fill")
                        .font(.headline)
                        .foregroundStyle(.white)
                    Text("This is a standalone UI demo. It does not connect to games, read game memory, or modify gameplay.")
                        .font(.subheadline)
                        .foregroundStyle(.white.opacity(0.72))
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(18)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.white.opacity(0.07), in: RoundedRectangle(cornerRadius: 20))

                VStack(spacing: 12) {
                    demoRow(icon: "slider.horizontal.3", title: "Interface Settings", detail: "Preview panel controls")
                    demoRow(icon: "scope", title: "Practice Tools", detail: "Offline training checklist")
                    demoRow(icon: "info.circle.fill", title: "About", detail: "Build generated with GitHub Actions")
                }
                Spacer(minLength: 8)
                Picker("Section", selection: $selectedTab) {
                    Text("Home").tag(0)
                    Text("Settings").tag(1)
                    Text("About").tag(2)
                }
                .pickerStyle(.segmented)
                .tint(.cyan)
                Text(selectedTab == 0 ? "Welcome to the demo panel." : selectedTab == 1 ? "Settings preview only." : "Version 1.0 • Demo build")
                    .font(.footnote.weight(.medium))
                    .foregroundStyle(.white.opacity(0.55))
            }
            .padding(24)
        }
        .preferredColorScheme(.dark)
    }

    private func demoRow(icon: String, title: String, detail: String) -> some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.cyan)
                .frame(width: 42, height: 42)
                .background(.cyan.opacity(0.12), in: RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 4) {
                Text(title).font(.system(size: 16, weight: .semibold)).foregroundStyle(.white)
                Text(detail).font(.system(size: 12)).foregroundStyle(.white.opacity(0.55))
            }
            Spacer()
            Image(systemName: "chevron.right").font(.caption.weight(.bold)).foregroundStyle(.white.opacity(0.35))
        }
        .padding(14)
        .background(.white.opacity(0.055), in: RoundedRectangle(cornerRadius: 16))
    }
}
