# quadb_tech

A new Flutter project.

# Movie App - Flutter

Welcome to the **Movie App** built with **Flutter**! This app fetches movie data from the TVMaze API and allows users to explore movies, search for their favorites, and view detailed information about each movie. The design follows a Netflix-style UI with easy navigation and an engaging user experience.

## Features

- **Splash Screen:** Displays a beautiful image when the app loads.
- **Home Screen:** Lists all available movies retrieved from the TVMaze API, showing the movie thumbnail, title, and a brief summary.
- **Search Screen:** Allows users to search for movies using a search bar. The app calls the TVMaze API and returns matching results.
- **Details Screen:** Displays all the detailed information about a selected movie, including its image, title, summary, and other metadata.
- **Bottom Navigation Bar:** Allows users to switch between the Home Screen and Search Screen.

## Screens Overview

### Splash Screen
The splash screen is shown upon app launch. It features an image related to the theme of movies, serving as a beautiful entry point into the app.

### Home Screen
- Fetches a list of movies from the API: [TVMaze Search API](https://api.tvmaze.com/search/shows?q=all).
- Displays each movie with its **thumbnail**, **title**, and **summary**.
- Tapping on any movie redirects the user to the **Details Screen**.
- Includes a **search bar** at the top of the screen for quick access to the **Search Screen**.

### Search Screen
- Contains a **search bar** for users to type the name of any movie.
- Calls the API: [TVMaze Search API](https://api.tvmaze.com/search/shows?q=${search_term}) and displays the results on the screen, just like the Home Screen.

### Details Screen
- When a movie is tapped, users are taken to the **Details Screen**, where they can view:
  - The movie's **image**.
  - A detailed **summary**.
  - **Genres** and **language**.
  - **Release date** and more.

## App Design
The UI of this app is inspired by **Netflix**:
- **Dark theme** with images as thumbnails.
- Clean and modern design with easy navigation and responsive layouts.
- Smooth transition between screens.

## Technologies Used
- **Flutter** (Cross-platform mobile development framework)
- **TVMaze API** (To fetch movie data)
- **Provider** (For state management)
- **Http package** (For making API requests)

<img src="https://github.com/user-attachments/assets/22ab88da-f80b-4837-b728-9309cd068137" width="500" height="300" />
<img src="https://github.com/user-attachments/assets/aabf255b-8e0d-4eae-9367-9421260df387" width="500" height="300" />
<img src="https://github.com/user-attachments/assets/087709a2-4b41-437a-9e2a-c75ede145a34" width="500" height="300" />
<img src="https://github.com/user-attachments/assets/0e16d516-f5ae-4ab8-af1e-3d8fc808cef8" width="500" height="300" />
<img src="https://github.com/user-attachments/assets/cdcbd28d-8c59-4be6-9e86-580390bfeb93" width="500" height="300" />
<img src="https://github.com/user-attachments/assets/c11403d2-6ef7-4e9a-93f9-3c115b6e26a0" width="500" height="300" />


## Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/movie-app-flutter.git
cd movie-app-flutter


lib/
├── main.dart                # Entry point of the app
├── models/                  # Movie data models
│   └── movie.dart           # Movie class definition
├── providers/               # State management using Provider
│   └── movie_provider.dart  # Handles movie API calls and data state
├── screens/                 # UI Screens
│   ├── splash_screen.dart   # Splash Screen
│   ├── home_screen.dart    # Home Screen
│   ├── search_screen.dart  # Search Screen
│   └── details_screen.dart # Movie Details Screen
└── widgets/                 # Custom widgets (if any)
    └── movie_card.dart      # Movie card widget
