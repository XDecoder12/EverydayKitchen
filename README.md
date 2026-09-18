# Everyday Kitchen

> A personalized kitchen companion for tracking food, managing expiry dates and discovering what to cook.

Everyday Kitchen is an iOS application designed to help people keep track of the food they have at home, reduce unnecessary food waste and make better use of their ingredients.

The project starts with a simple inventory and expiry-tracking system and will gradually evolve into a personalized recommendation and decision-support system that learns from the user's cooking habits and preferences.

## Vision

The long-term goal of Everyday Kitchen is to become a personal kitchen assistant that understands:

* What food you currently have
* Where it is stored
* How much is available
* When it is likely to expire
* What you usually like to cook
* How you use your ingredients
* What you are likely to enjoy cooking next

The system will use this information to recommend meals while trying to make efficient use of ingredients and reduce food waste.

## Planned Features

### Kitchen Inventory

* Add and manage food items
* Track quantities and units
* Track purchase and expiry dates
* Organize items by storage location
* Track individual inventory lots or batches
* Record consumption and remaining quantities

### Expiry Management

* Identify items approaching expiry
* Provide expiry reminders
* Highlight items that need attention
* Prioritize ingredients based on urgency

### Recipe Discovery

* Maintain a structured recipe database
* Match recipes with available ingredients
* Identify recipes that use ingredients approaching expiry
* Show missing ingredients when required
* Explain why a recipe is suggested

### Personalization

Over time, Everyday Kitchen will learn from user interactions such as:

* Recipes viewed
* Recipes saved
* Recipes cooked
* Recipes skipped
* Ratings and feedback
* Ingredient usage
* Cooking preferences
* Preferred cuisines
* Typical cooking times

### Recommendation Engine

The recommendation system will progressively evolve from rule-based scoring to machine learning models.

Recommendations may consider:

* Ingredient availability
* Expiry urgency
* User preferences
* Cooking time
* Recipe characteristics
* Previous interactions
* Expected food waste
* Current context

### Decision Support

Instead of simply showing recipes, the system will explain relevant trade-offs and help users understand why a particular option may be useful.

### AI Assistant

A language model may eventually be used for natural-language interaction, explanations and tasks such as interpreting user input and helping modify recipes.

The language model will not be the core recommendation engine. It will work alongside the structured inventory, recommendation and decision-support systems.

## Planned Architecture

```text
                   ┌─────────────────────┐
                   │       iOS App       │
                   │      SwiftUI        │
                   └──────────┬──────────┘
                              │
                              ▼
                   ┌─────────────────────┐
                   │     Backend API     │
                   │      FastAPI        │
                   └──────────┬──────────┘
                              │
             ┌────────────────┼────────────────┐
             ▼                ▼                ▼
       ┌───────────┐   ┌────────────┐   ┌──────────────┐
       │ Inventory │   │  Recipes   │   │  User Data   │
       └─────┬─────┘   └─────┬──────┘   └──────┬───────┘
             └────────────────┼─────────────────┘
                              ▼
                   ┌─────────────────────┐
                   │ Recommendation      │
                   │ Engine              │
                   └──────────┬──────────┘
                              ▼
                   ┌─────────────────────┐
                   │ Decision Support    │
                   │ Engine              │
                   └──────────┬──────────┘
                              ▼
                   ┌─────────────────────┐
                   │ AI / Language Layer │
                   └──────────┬──────────┘
                              ▼
                         User Response
                              │
                              ▼
                         User Feedback
                              │
                              ▼
                       Learning System
                              │
                              ▼
                         Model Updates
```

## Technology

### iOS

* Swift
* SwiftUI
* SwiftData
* UserNotifications

### Backend

* Python
* FastAPI
* PostgreSQL

### Machine Learning

* Python
* NumPy
* Pandas
* scikit-learn
* PyTorch

Additional AI and infrastructure technologies will be introduced as the project evolves.

## Repository Structure

```text
EverydayKitchen/
│
├── ai/
│   └── Machine learning and recommendation systems
│
├── backend/
│   └── Backend API and application services
│
├── docs/
│   └── Project documentation and architecture decisions
│
├── ios/
│   └── iOS application
│
├── .gitignore
├── LICENSE
└── README.md
```

## Development Approach

Everyday Kitchen is being developed incrementally.

The initial focus is on building a reliable foundation before introducing complex machine learning.

```text
Product Definition
        ↓
Data Model
        ↓
Backend Foundation
        ↓
Inventory System
        ↓
Recipe System
        ↓
Rule-Based Recommendations
        ↓
User Feedback
        ↓
Personalization
        ↓
Machine Learning
        ↓
Decision Optimization
        ↓
AI Assistant
```

Complexity will be added only when there is enough data and a clear reason for it.

## Project Documentation

The complete product and technical plan is maintained in:

`docs/Everyday_Kitchen_Plan.pdf`

This document serves as the current project blueprint and will be updated as major architectural and product decisions are made.

## Project Status

**Current stage:** Project foundation

The repository and documentation structure have been created. The next major step is designing the application's data model and database schema.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.