# Repository Guidelines

## Project Structure & Module Organization
This repository is a small Angular 16 application. Main source files live in `src/`, with app code under `src/app/`. The current app uses standalone Angular APIs: `app.component.ts` is the root component, `app.config.ts` registers providers, and `app.routes.ts` holds route definitions. Global styles live in `src/styles.scss`; static assets go in `src/assets/`; the built output is generated into `dist/angular-material-playground/`.

Keep tests next to the code they cover using the `*.spec.ts` pattern, for example `src/app/app.component.spec.ts`.

## Build, Test, and Development Commands
Use Node `18.19.0` from `.nvmrc`.

- `npm install`: install dependencies from `package-lock.json`.
- `npm start`: run the dev server at `http://localhost:4200/`.
- `npm run build`: create a production build in `dist/`.
- `npm run watch`: rebuild on file changes with the development configuration.
- `npm test`: run unit tests with Karma and Jasmine.
- `ng generate component feature-name`: scaffold a standalone SCSS component.

## Coding Style & Naming Conventions
Follow `.editorconfig`: UTF-8, 2-space indentation, final newline, and trimmed trailing whitespace. TypeScript files use single quotes. Prefer Angular standalone components and keep feature files grouped together as `feature-name.component.ts|html|scss|spec.ts`.

Use Angular naming defaults:
- classes in `PascalCase`
- selectors prefixed with `app-`
- files in kebab-case, such as `material-table.component.ts`

No ESLint or Prettier config is committed yet, so keep changes small, readable, and consistent with the existing Angular CLI style.

## Testing Guidelines
Unit tests use Jasmine with the Angular TestBed through Karma. Add or update a colocated `*.spec.ts` file for each behavior change. Cover component creation, relevant inputs/outputs, and rendered DOM for UI changes. Run `npm test` before opening a PR; use `ng test --code-coverage` when you need a local coverage check.

## Commit & Pull Request Guidelines
Git history is minimal and currently only shows `initial commit`, so there is no established convention to copy. Use short, imperative commit subjects such as `Add material sidenav demo` or `Fix app component test`.

PRs should include a clear summary, testing notes, and linked issues when applicable. Include screenshots or short recordings for Angular Material UI changes, and note any follow-up work or known limitations.
