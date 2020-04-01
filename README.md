# BP Clean Architecture Mobile - Flutter Implementation

[Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html) is a fantastic way to
look at designing and developing scalable and maintainable software. However, Clean Architecture is very broad and 
often confusing to implement due to how broad it is in specific scenarios. At BP we have adapted the Clean Architecture
proposition in order to make it easier to understand for mobile developers.

---

**Packages Version:**

Dart: 2.7.0

Flutter: Flutter v1.12.13+hotfix.5

Plugins:
ScopedModel => 1.0.1 (UI & Control & Infrastructure) for MVVM.

---

## Getting Started
### Installing the Android SDK
You need to install the Android SDK in order to be able to deploy the application to Android devices and simulators.
**Windows**
[Here](https://flutter.dev/docs/get-started/install/windows#android-setup) is a perfect guide on how to install the
android SDK on your windows machine and configure it correctly with flutter.

**Mac OS X**
[Here](https://flutter.dev/docs/get-started/install/macos#android-setup) is a perfect guide on how to install the
android SDK on your mac os x machine and configure it correctly with flutter.

### Installing XCode & iOS SDK (Mac only)
[Here] (https://flutter.dev/docs/get-started/install/macos#android-setup) is a perfect guide to installing and
configuring XCode and the iOS SDK & Simulators.

### Installing Flutter
You need to install the Flutter SDK by following [this](https://flutter.dev/docs/get-started/install) guide.

### Choosing an IDE
Secondly, as a developer you need to choose an IDE (Integrated Developer Environment) that you feel comfortable
developing in. I personally use [IntelliJ](https://www.jetbrains.com/idea/) accompanied with the Flutter plugin for
development. I am more than happy to discuss my reasoning why at any given opportunity. That being said here are some
other favourable environments that are used in Flutter mobile application development.

- [VS Code](https://code.visualstudio.com/)
- [Android Studio](https://developer.android.com/studio)

### Cloning this repository
If you are viewing this document you have successfully managed to access this template via ADO. Simply click the clone
button on the top of this window and follow the instructions to clone this repository to your desktop or another folder.

### Setting up
Once you have successfully cloned the repository it's time to set up your environment.

**Mac OS X**
1. Open your repository in your chosen IDE. (On opening you may see some errors, do not worry.)
2. Open the terminal
3. Navigate inside of the terminal to the cloned directory. It will look like this:
`cd Desktop/Flutter-Template-BP`
4. Once you have successfully navigated there you must run the following command to allow the execution of a script I
wrote to download all of the necessary packages.
`chmod +x get_packages.sh`
5. Then run the following command:
`./get_packages.sh`
6. You should see in the terminal the script is now running and downloading all of the relevant packages to your local disk.

**Windows**
1. Open your repository in your chosen IDE. (On opening you may see some errors, do not worry.)
2. Navigate to the cloned repository in File Explorer.
3. double click get_packages.bat.
4. The window will open and then close shortly. Once closed all the relevant packages will have been retrieved.

### Running the application
Most IDEs will instantly offer the option at the top of the window to run the template application in a simulator.
However, starting a new technology or using a new IDE can often be overwhelming. [Here](https://flutter.dev/docs/get-started/test-drive?tab=androidstudio)
is a guide tailored to IntelliJ, VSCode, Android Studio and simply using a terminal/cmd.

## Documentation
I wanted to thoroughly document the application, principles and clean architecture. Here is a list of accessible relevant
documents.

- [Documentation Overview](./docs/README.md)
- [BP Clean Architecture](./docs/architecture.md)
- [The Problem](./docs/the_problem.md)
- [The Proposed Solution](./docs/the_solution.md)

## References
Clean Architecture - https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html