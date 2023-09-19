# flutter_starter
this project is the starting point for a flutter project. It contains the basic setup for a flutter project. It also contains the setup for localization and internationalization. It also contains the setup for firebase.

## Features
- [x] Localization and Internationalization
- [x] Firebase authentication
- [x] services
- [x] freezed
- [x] bloc state management

## Screenshots

## Getting Started
run the following command to get the dependencies
```
flutter pub get
```
run the following command to generate the freezed files
```
flutter pub run build_runner build --delete-conflicting-outputs
```
runt the project
```
flutter run
```


## Folder Structure
Here is the folder structure I have been using in this project

```
lib/
|- src/
    |- constants/
    |- features/
    |- l10n/
    |- services/
    |- utilites/
|- firebase_options.dart    
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- constants - All the application level constants are defined in this directory with-in their respective files. This directory contains the constants for `theme`, `dimentions`, `api endpoints`, `preferences` and `strings`.

2- features - Contains the main business logic for the application. Each feature has it's own directory. All the ui, blocs, models and repositories are self contained in their respective feature directories.

3- l10n - Contains the files for localization and internationalization.

4- services - Contains the files for services like api, storage, etc.

5- utilities - Contains the utilities/common functions for the application.

6- firebase_options.dart - Contains the firebase options for the application.

7- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```

## Conributing
If you find any bug or want to add a new feature, feel free to contribute.


