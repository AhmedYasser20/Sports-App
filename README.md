# The Sports App

The Sports App is a comprehensive mobile application developed to provide users with information about various sports, leagues, teams, players, and more. This README will guide you through the app's features and functionalities.

## Features

### Splash Screen

- The app starts with a splash screen that lasts for 2 seconds.
- After 2 seconds, it automatically navigates to the Onboarding screen.

### Onboarding Screen

- The Onboarding screen consists of 3 scrollable pages within a PageView.
- Users can slide between the three pages manually or use the smooth indicator.
- Each page remains visible for 3 seconds before automatically transitioning to the next.
- The pages provide general information about the app and its main features.
- A "Skip" button allows users to skip the Onboarding screen and proceed to the Home screen.
- Once skipped, the Onboarding screen will not appear again unless the app is uninstalled or its cache is cleared.

### Home Screen

- The Home Screen displays 4 sports widgets: Football, Basketball, Cricket, and Tennis.
- Each widget features the sport's image and name, arranged in a grid view with two rows and two columns.

### Sports Selection

- When a user selects any sport other than football, a "Coming soon" dialog box is displayed.
- Selecting football navigates the user to the "Countries Screen."

### Countries Screen

- The "Countries Screen" presents a grid view of available countries.
- Data is fetched from a specified API.

### Leagues Screen

- Upon selecting a specific country, the user is directed to the "Leagues Screen."
- This screen lists the leagues for the chosen country in a scrollable column.
- Data is obtained from a specified API.

### Teams Screen

- When a user selects a league, the app navigates to the "Teams Screen."
- The "Teams Screen" features a search field at the top for finding specific teams.
- The teams for the selected league are listed below in a grid view.
- Data is fetched from a specified API, utilizing league ID and team name parameters for searching.

### Top Scorers Screen

- This screen is accessible from the league details page.
- It displays the top scorers of the selected league in a list view.
- Data is obtained from a specified API.

### Player's Screen

- Upon selecting a specific team, the user is directed to the "Player's Screen."
- The screen presents a list of players for the chosen team.
- Each player widget includes the player's image, name, and position.
- A search field at the top allows users to search for players by name.
- Data is fetched from a specified API, with a consistent state management approach.

### Player Details Dialog

- Tapping on any player displays a dialog box with detailed player information, including:
  - Player name
  - Player number
  - Player country
  - Player image
  - Player position
  - Player age
  - Player yellow cards
  - Player red cards
  - Player goals
  - Player assists

## Usage

1. To use this app, sign up for an API key from [allsportsapi.com](https://allsportsapi.com/).

2. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/AhmedYasser20/Sports-App
   ```

3. Set up the API key in the app code as instructed.

4. Install the necessary dependencies and run the app:

   ```bash
   flutter pub get
   flutter run
   ```

## Additional Features (Bonus Points)

1. Notifications: You can implement push notifications to enhance user engagement.

2. Localization: Add support for both Arabic and English languages.

3. Animations: Incorporate animations into lists and grids to improve the app's visual appeal.

## Notes

1. Ensure that the UI style is consistent and uniform throughout the entire app. You may consider referencing the "365 scores APP" for visual inspiration.

2. Maintain clean architecture and minimize the use of `setState`.

3. Handle cases where API data may contain "null" by replacing it with an empty string ("").

## Demo Video
https://github.com/AhmedYasser20/Sports-App/assets/93765400/eca2695e-afab-464e-8b0f-fc4c72ac19bb

---
https://github.com/AhmedYasser20/Sports-App/assets/93765400/1b1cc873-6b6e-440e-bd82-1e5229378b91





https://github.com/AhmedYasser20/Sports-App/assets/93765400/d99e7b20-1a9c-4def-a5d7-868b79dbedf1


