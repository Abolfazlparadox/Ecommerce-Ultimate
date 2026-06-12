# 🛒 Ecommerce-Ultimate: Full-Stack Retail Platform

![Python](https://img.shields.io/badge/Python-3.11+-blue.svg?logo=python&logoColor=white)
![Django](https://img.shields.io/badge/Django-4.x-092E20.svg?logo=django&logoColor=white)
![HTML/CSS/JS](https://img.shields.io/badge/Frontend-HTML%20%7C%20CSS%20%7C%20JS-E34F26.svg)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-336791.svg?logo=postgresql&logoColor=white)
![Collaboration](https://img.shields.io/badge/Collaboration-Full_Stack_Team-success.svg)

## 📖 Overview
**Ecommerce-Ultimate** is a comprehensive, production-ready full-stack e-commerce solution. Developed as a collaborative engineering project, it bridges the gap between a robust, scalable backend architecture and a responsive, user-friendly frontend interface. 

This project covers the entire lifecycle of a modern digital store, from complex relational database management and customized user authentication to seamless cart operations and order processing.

## ✨ Key Features & Architecture
### ⚙️ Backend Engineering (Django)
* **Custom Authentication:** Extended user models tailored for varied user roles (Customers, Vendors, Admins).
* **Advanced Product Catalog:** Complex data modeling for products, categories, brands, variants (colors/sizes), and dynamic inventory tracking.
* **Order & Cart Management:** Robust session handling for shopping carts and transactional integrity during the checkout process.
* **Localized Infrastructure:** Integrated support for Iranian standards, including Jalali calendars and region-specific validations (e.g., National ID, Mobile numbers).

### 🎨 Frontend Integration
* **Full-Stack Implementation:** The backend is fully integrated with a custom frontend using Django Templates, HTML5, CSS3, and JavaScript for a dynamic user experience.
* **Raw Template Repository:** The original, un-integrated HTML/CSS templates are preserved in a separate, dedicated folder within the repository for reference and independent UI/UX development.
* **Responsive Design:** Ensures a seamless shopping experience across mobile, tablet, and desktop devices.

## 🛠️ Tech Stack
* **Backend:** Python, Django, Django ORM
* **Frontend:** HTML, CSS, Vanilla JavaScript, Bootstrap/Tailwind (Modify based on your actual framework)
* **Database:** SQLite (Development) / PostgreSQL (Production)
* **Version Control:** Git, GitHub Flow

## 🚀 Quick Start (Local Setup)

1. **Clone the repository:**
```bash
git clone [https://github.com/Abolfazlparadox/Ecommerce-Ultimate.git](https://github.com/Abolfazlparadox/Ecommerce-Ultimate.git)
cd Ecommerce-Ultimate

```

2. **Setup Virtual Environment:**
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

```


3. **Install Dependencies:**
```bash
pip install -r requirements.txt

```


4. **Environment Variables:**
Create a `.env` file in the root directory (make sure to match your project's settings):
```env
SECRET_KEY=your_secret_key
DEBUG=True
# DB credentials if using PostgreSQL

```


5. **Database Setup & Migrations:**
```bash
python manage.py makemigrations
python manage.py migrate

```


6. **Create Superuser & Run:**
```bash
python manage.py createsuperuser
python manage.py runserver

```


* Main Site: `http://127.0.0.1:8000/`
* Admin Panel: `http://127.0.0.1:8000/admin/`



## 📂 Project Structure

* `project/` - Contains the main Django apps (e.g., account, product, cart, order).
* `templates/` - Integrated Django HTML templates.
* `static/` - CSS, JS, and image assets.
* `[Template_Folder_Name]/` - (Replace with actual folder name) Contains the raw, non-integrated frontend templates.

## 🤝 Core Development Team

This comprehensive platform was built collaboratively by:

* **Abolfazl Mohammadshahi** - Full-Stack Developer (Backend Architecture & Integration)
* [LinkedIn](https://www.linkedin.com/in/abolfazl-mohammadshahi-12b87b324) | [GitHub](https://www.google.com/search?q=https://github.com/Abolfazlparadox)


* **Nima Alizade** - Full-Stack Developer (Backend Logic & UI Implementation)
* [LinkedIn](https://www.google.com/search?q=%23) *(Add Nima's link)* | [GitHub](https://www.google.com/search?q=%23)



## ⚖️ License

This project is open-source and available under the MIT License.
