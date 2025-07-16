## Meditation-App. 
### **Mindfulness Companion App** – An offline meditation application designed to teach users proper breathing techniques during practice.  

*Demo Video*: https://disk.yandex.ru/d/mZ8gyeWpchYDLA

### **Key Features of the App:**  

#### **1. Meditation Practice**  
The app guides users through a two-stage breathing technique:  
- **Breath Hold** – The user holds their breath for a set duration.  
- **Recovery** – A calming breathing phase to restore normal rhythm.  

Users can end a session at any time.  

#### **2. Session Tracking & Progress**  
- Option to save meditation session data.  
- A **"Graph"** button in the top-left corner lets users track their progress over time.  

#### **3. Customizable Settings**  
- **Adjustable Breathing Cycle** – Customize inhale, hold, and exhale durations.  
- **Tutorial** – A built-in guide helps users:  
  - Set up their breathing cycle.  
  - Learn correct exercise techniques.  
- **Language Selection** – Supports multiple languages.  

### **App Benefits:**  
✅ **Works Offline** – Meditate anytime, anywhere.  
✅ Simple, intuitive interface.  
✅ Progress tracking for motivation.  
✅ Personalized settings for individual needs.  

**Mindfulness Companion App** is the perfect tool for mastering mindful breathing and enhancing meditation practice. 🧘‍♂️💨  

##
## Roles Distribution: 
- Rushan Shafeev - Frontend Developer + Deploy. (r.shafeev@innopolis.university)
- Evgenii Khovalyg - Frontend Developer + Deploy. (e.khovalyg@innopolis.university)
- Rudov Artem - Assignment Report + Documentation. (a.rudov@innopolis.university)
- Ilya Mukhin - Assignment Report + Documentation. (i.muhin@innopolis.university)
- Kamil Khusnutdinov - Presentation + Other routine stuff. (k.khusnutdinov@innopolis.university)

##
## Goals of the project. 

The **primary goal** of the project is to create the **Mindfulness Companion App** which will **help users develop a healthy, mindful breathing habit** for meditation, stress relief, and mental clarity.  

### **Key Objectives:**  
1. **Teach Proper Breathing Techniques**  
   - Guide users through structured breath-hold and recovery phases to improve focus and relaxation.  

2. **Make Meditation Accessible**  
   - Offer an **offline**, easy-to-use tool for practicing anywhere, anytime—no subscriptions or internet required.  

3. **Encourage Consistency & Progress**  
   - Track sessions with graphs to motivate users and show improvements over time.  

4. **Personalize the Experience**  
   - Let users adjust breathing cycles (inhale/hold/exhale) and language preferences for a tailored practice.  

5. **Educate Users**  
   - Provide tutorials to ensure correct technique and maximize benefits.  

### **Ultimate Purpose:**  
To **reduce stress, enhance mindfulness, and promote mental well-being** through scientifically supported breathing exercises—all in a simple, user-friendly app.  

##
## *Architecture Diagram*:


## 
## **Implementation of Checklist for Mindfulness Companion App**  

#### **Technical Requirements**  
**Backend Development**  
- [ ] **Not required** – The app is fully **offline** and stores data locally (no server-side processing needed).  
  - *Reason*: All features (breathing exercises, progress tracking, settings) work without internet or backend services.  

**Frontend Development**  
- [x] **Flutter-based cross-platform app** (mobile + web)
  - *Implementation*: Single codebase for Android, iOS, and web.  
- [x] **Responsive UI with custom widgets**
  - *Implementation*: Clean design for meditation timer, progress graphs, and settings.  
- [x] **State management** 
  - *Implementation*: Provider or Riverpod for session data and settings.  
- [x] **Offline data persistence**
  - *Implementation*: Hive or SQLite for saving session history.  
- [x] **Unit and widget tests**
  - [x] User acceptance tests. 
- [] **Light/dark mode support** 

**DevOps & Deployment**  
- [x] **Docker compose** 
- [ ] CI/CD pipeline 
- [x] **Environment configs** 
  - *Implementation*: Config files for language/breathing presets.  
- [x] **GitHub Pages** 

---

#### **Non-Technical Requirements**  
**Project Management**  
- [x] **GitHub organization/repo**
- [x] **Regular commits/PRs** 
- [x] **Project board** 
- [x] **Roles documentation** 

**Documentation**  
- [x] **Project overview/setup** *(README.md)*  
- [x] **Screenshots/GIFs** *Demo Video* 
- [ ] API docs *(N/A – no backend)*  
- [x] **Architecture diagrams** *(Frontend-only flowcharts)*  

**Code Quality**  
- [x] **Code style/formatting**  
- [x] **Code reviews**  

---

#### **Bonus Features**  
- [x] **Localization (RU/ENG)**  
- [x] **Good UI/UX**  *(Intuitive meditation timer, progress visuals)*  
- [ ] External API integration *(Not planned)*  
- [x] **Error handling/user feedback** *(Session alerts, tutorial prompts)*  
- [ ] Advanced animations *(Basic transitions only)*  
- [ ] Native widgets *(Standard Flutter components)*  

---

**Notes:**  
- **Backend intentionally omitted** – The app’s offline nature and local data storage make backend services unnecessary.  
- **Web support optional** – Current focus is mobile; CI/CD/GitHub Pages would apply only if expanded to web.  
- **Testing pending** – Unit/widget tests to be added later.  


