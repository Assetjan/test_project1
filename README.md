# Prompt Generator (Flutter test task)

Small two–screen Flutter app that simulates image generation from a text prompt.

- Screen 1: Prompt input  
- Screen 2: Result with loading, success and error states  
- State management: `flutter_bloc`  
- Navigation: `go_router`  
- DI: `get_it`  

All UI and texts are in English as required.

---

## Features

### Prompt screen

- Centered layout with title and short description.
- Multiline text field with hint: `Describe what you want to see…`
- Primary “Generate” button:
  - Disabled while the prompt is empty.
  - On tap:
    - Navigates to Result screen.
    - Dispatches generation event in BLoC.

The last entered prompt is stored in BLoC, so when you return from Result, the text is preserved.

### Result screen

- Starts generation when opened (event already sent from Prompt screen).
- Shows three main states:

1. **Loading**
   - Card with soft gradient and centered loader.

2. **Success**
   - Large gradient “image card” with:
     - Image icon in the center.
     - Semi–transparent bottom overlay with the prompt text.

3. **Failure**
   - White card with warning icon.
   - Human-readable error title and description.
   - No technical stack traces in UI.

- Bottom action bar:
  - `New prompt`  
    - Pops back to Prompt screen, preserving text.
  - `Try another`  
    - Triggers another generation with the same prompt.

---

## Mock API

The app does not call any real backend or use network images, so it works offline and avoids TLS errors.

```dart
Future<String> generate(String prompt)
