# Toku App

A Flutter language-learning app for practicing beginner Japanese vocabulary with images and audio pronunciation.

## Features

- Learn numbers, family members, colors, and common phrases.
- Play pronunciation audio for each vocabulary item.
- Track progress across the full set of sounds.
- Switch between light and dark themes.
- Start with a multi-screen visual splash experience.

## Screenshots

| Light | Dark |
| --- | --- |
| ![Home light](<Screenshots/light/home light.svg>) | ![Home dark](<Screenshots/dark/home dark.svg>) |

## Tech Stack

- Flutter
- Dart
- Material UI
- `audioplayers` for sound playback

## Project Structure

```text
lib/
  components/   Reusable UI widgets
  models/       Vocabulary item model
  screens/      App pages and splash screens
  services/     Theme and progress controllers
assets/
  images/       Category, item, and splash images
  sounds/       Vocabulary pronunciation files
```

## Getting Started

Make sure Flutter is installed, then run:

```bash
flutter pub get
flutter run
```

To check the project:

```bash
flutter analyze
flutter test
```

## Assets

The app uses local image and audio assets declared in `pubspec.yaml`, including vocabulary illustrations, home category covers, splash images, and pronunciation files.
