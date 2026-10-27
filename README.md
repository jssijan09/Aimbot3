# Game Tools Demo — GitHub Actions iOS build

This repository builds a harmless SwiftUI demo interface and packages an **unsigned** `.ipa` artifact.

## Build it on GitHub
1. Create a new GitHub repository and upload the contents of this folder (upload the files inside this folder, not the folder wrapper).
2. Make sure the default branch is named `main`.
3. Open **Actions** → **Build iOS IPA** → **Run workflow** → **Run workflow**. A push to `main` also triggers a build.
4. Open the successful run and download `GameToolsDemo-unsigned-IPA` under **Artifacts**.
5. Extract the downloaded ZIP to find `GameToolsDemo-unsigned.ipa`.

## Important
The IPA is unsigned. It is a build artifact and normally cannot be installed directly on an iPhone until it is signed with a valid Apple development/distribution certificate and provisioning profile. This demo has no game-memory access, injection, aimbot, or gameplay modification features.
