# Rev-Connect Monorepo

This monorepo contains the full codebase for the Rev-Connect application, including both the backend (API) and frontend (UI) components.

## Repository Structure

```text
rev-connect/
├── backend/         # Contains the Java-based backend API
├── frontend/        # Contains the React-based frontend UI
├── README.md        # Project overview and instructions
└── .gitignore       # Global gitignore file for the monorepo
```

### Backend (backend/)

- Framework: Spring Boot
- Build Tool: Maven
- Primary Language: Java
- Description: This directory contains the backend API of the Rev-Connect application. It handles business logic, data persistence, and serves as the server-side component of the application.

### Frontend (frontend/)

- Framework: React.js
- Build Tool: Vite (or your preferred tool)
- Primary Language: JavaScript/TypeScript
- Description: This directory contains the frontend UI of the Rev-Connect application. It handles the client-side interface and interacts with the backend API.

## Getting Started

#### Prerequisites

- Java 17+
- Node.js 18+
- Maven
- npm

### Setup

#### Cloning the repository

```bash
git clone https://github.com/2055Java-Nick/rev-connect.git
cd rev-connect
```

#### Backend Setup

1. Navigate to the `backend` directory:
   ```bash
   cd backend
   ```
2. Build the project:
   ```bash
   ./mvnw clean install  # or ./gradlew build
   ```
3. Run the application:
   ```bash
   ./mvnw spring-boot:run  # or ./gradlew bootRun
   ```

#### Frontend Setup

1. Navigate to the `frontend` directory:
   ```bash
   cd frontend
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Start the development server:
   ```bash
   npm run dev
   ```

## Contribution Guidelines

- **Branching Strategy:** Please follow the feature-branch workflow. Create a new branch for each feature or bug fix.
  - **`main` branch:** Contains production-ready code.
  - **`dev` branch:** Integrates feature branches for testing before merging into `main`.
  - **`feature/xyz` branches:** Used for developing new features.

## Docker

(Docker setup instructions will be added once the application is dockerized.)
