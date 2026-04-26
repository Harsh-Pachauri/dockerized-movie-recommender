# 🎬 Movie Recommendation Flask App

This project is a **Machine Learning-powered web application** built using **Flask** that recommends movies based on a user’s rating of a previously watched movie. It uses **collaborative filtering (item-to-item similarity)** to generate personalized recommendations.

---

## 🚀 Features

* 🎯 Movie recommendation based on user rating
* ⚡ Collaborative filtering using Pearson correlation
* 🌐 Simple and interactive web interface
* 🐳 Dockerized for easy deployment
* ☁️ Deployable on cloud platforms like Render
* 🔄 CI/CD-ready pipeline using Jenkins

---

## 🧠 How It Works

1. User enters:

   * Movie name
   * Rating (1–5)

2. Backend:

   * Loads dataset (`movies.csv`, `ratings.csv`)
   * Creates a user-item matrix
   * Computes similarity between movies

3. Output:

   * Top recommended movies based on similarity scores

---

## 📁 Project Structure

```
├── app.py
├── movies.csv
├── ratings.csv
├── requirements.txt
├── Dockerfile
├── Jenkinsfile
├── templates/
│   └── index.html
├── static/
│   └── movie_img.jpg
```

---

## 🛠️ Installation & Setup

### 1. Clone the repository

```
git clone <your-repo-link>
cd Movie-Recommendation-Flask-App
```

### 2. Install dependencies

```
pip install -r requirements.txt
```

### 3. Run the application

```
python app.py
```

### 4. Open in browser

```
http://localhost:5000
```

---

## 🐳 Docker Setup

### Build Docker Image

```
docker build -t movie-recommender .
```

### Run Container

```
docker run -p 5000:5000 movie-recommender
```

---

## 🔄 CI/CD Pipeline (Jenkins)

This project includes a **Jenkins pipeline configuration** that automates:

* 📦 Docker image build
* 🚀 Containerized application testing
* ❤️ Health check validation
* 🧹 Container lifecycle management

Pipeline is defined in the `Jenkinsfile` following **Pipeline-as-Code** practices.

---

## ☁️ Deployment (Render)

1. Push project to GitHub
2. Go to Render
3. Create a new **Web Service**
4. Select environment → **Docker**
5. Deploy 🚀

---

## ⚠️ Important Notes

* Use **exact movie names** from dataset (`movies.csv`)
* Ratings should be between **1–5**
* Some movies may not return results due to insufficient data

---

## 🧑‍💻 Tech Stack

* Python
* Flask
* Pandas, NumPy, Scikit-learn
* HTML, CSS
* Docker
* Jenkins

---

## 🎯 Future Improvements

* 🔍 Add search suggestions / autocomplete
* 📊 Improve recommendation algorithm
* ⚡ Add caching for faster responses
* 🌍 Extend CI/CD with automated deployment

---

## 💬 Author

**Harsh Pachauri**

---