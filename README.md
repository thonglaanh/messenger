# README

## Installation

You will need to have [Flutter](https://flutter.dev/) installed on your machine.

1. Install Flutter by following the instructions on
   the [Flutter website](https://flutter.dev/docs/get-started/install).

# Makefile commands

- This project uses `make` for running common commands. Current version of make is `4.4`. You can
  install it from [here](https://ftp.gnu.org/gnu/make/).

# Prerequisites

1. Add the environment variables using `env_model.example.dart` file as a reference. The environment
   file should be named `env_model.[custom].dart` with custom being the name you want (staging, dev,
   production). Follow the instruction and DO NOT commit the environment file to the repository.
   Remember to import the environment file in the `env_model.dart`.

# Code conventions

- Run `dart fix --aplly` and `dart format .` before pushing code to make sure that the code is
  formatted correctly.
- Run `dart fix` before pushing code to make sure that there are no errors or warnings.
- Ensure that the total line per file is small (less than **250 lines**). If the file is too big,
  split it into multiple files to make it more readable.
- `camelCase` for variables and functions. `PascalCase` for classes.
- Prefer naming variables as close to the purpose of the variable as possible. For
  example, `isDarkTheme` is better than `isDark`.
- BehaviorSubject must describe that is it a subject. For example, `isDarkThemeSubject` is a
  BehaviorSubject.
- Comment explain the functions and classes intention or purpose only if it is not clear from the
  name.
- Widgets or functions that used by multiple files should be placed in the `shared` folder.
  Otherwise, it could be placed in the same feature folder if it is not used by other features.
- Only one widget per file. If the widget is too big, split it into multiple widgets to different
  files for that feature.
- Widgets should only care about building the UI. The bloc is responsible for the business logic.
  Widgets listen to the bloc (using stream) and update the UI accordingly.
- If navigate to a route required more than 2 parameters, create a record. If more than 3 then
  create a class that contains all the parameters and pass it to the route (
  e.g: `ClassRouteArgument`).
- Split the widget UI into multiple widgets if it is too big. Create a new file for each widget or
  create a private widget inside the same file.

# Git conventions

- New features should be developed in a separate branch and then create a pull request to merge it
  into the `main` branch.
- The pull request should be reviewed by at least one other person before merging it into the `main`
  branch.
- The feature naming convention is `feature/<feature-name>` or shorthand `feat/<feature-name>`. For
  bug fixes, use `fix/<bug-name>` or `hotfix/<bug-name>`.
- The commit message should describe the changes in the commit. Do not write commit that don't
  describe the changes. For example, `fix bug` is not a good commit message. Instead,
  write `fix: <bug-name>`.
- Keep the commit message short and concise. If you need to write a long commit message, write it in
  the pull request description instead.

# Code structure

- This use bloc pattern for state management with `rx_dart` for reactive programming and `riverpod`
  for dependency injection.
- The code is split into features. Each feature has its own folder. For example, `login` feature has
  its own folder.