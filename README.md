# CareerPilot AI

An Android-first AI career assistant that helps people turn a job opportunity into a truthful, well-prepared application.

## Status

Milestone 1 complete — Flutter foundation, theme, navigation, home screen, URL validator.

## Stack

- Flutter 3.47 stable / Dart 3.13.7
- go_router (routing)
- flutter_riverpod (state)
- Supabase (auth, Postgres, storage) — not wired yet
- Inter font via google_fonts
- Material Icons (Lucide/Feather are incompatible with current Flutter)

## Build

```bash
flutter pub get
flutter test
flutter run