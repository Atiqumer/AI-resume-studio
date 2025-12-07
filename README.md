# resume‑studio

## 🔧 What is resume‑studio

`resume‑studio` is a simple PHP-based resume builder / resume generator. It allows users to build and generate resumes using customizable templates and a backend built with PHP + SQL.

The project includes:  

- A web UI (PHP pages) for entering resume data
- Template-based resume generation (HTML → PDF)
- A database schema to store/retrieve resume entries (`resume_builder_db.sql`)
- Support files and dependencies (e.g. `dompdf` for PDF generation)

---

## 📂 Project Structure

```

resume‑studio/
│
├── dompdf/                 # PDF library for rendering HTML to PDF
├── includes/               # Shared PHP includes (e.g. config, helpers)
├── process/                # Form processing / backend logic
├── templates/              # Resume templates (HTML/CSS)
├── create_resume.php       # Entry point for resume creation
├── dashboard.php           # Dashboard for managing resumes
├── index.php               # Main landing / resume input page
└── resume_builder_db.sql   # Database schema for storing resumes

```

---

## 🚀 Getting Started — Installation & Running Locally

1. Clone the repository  
   ```bash
   git clone https://github.com/Abdul-Rafay-Munir/resume-studio.git
````

2. Set up a local web server + PHP (e.g. XAMPP, MAMP, LAMP)
3. Create a MySQL database and import the schema from `resume_builder_db.sql`
4. Update database configuration in the relevant config file (if exists) under `includes/`
5. Navigate to `index.php` in your browser to start using the resume builder

---

## 📝 Usage

* Fill in your resume details via the web UI
* Choose a template (from `templates/`) for how your resume should look
* Generate your resume — the system will produce a downloadable PDF using `dompdf`
* Manage previously created resumes via `dashboard.php`

---

## ✅ Features

* HTML → PDF conversion via `dompdf`
* Multiple resume templates
* Database-backed storage for resume data
* Easy to deploy on any PHP + MySQL enabled server

---

## 🚧 Known Limitations / TODOs

* No authentication / user‑accounts — resumes are stored globally (not per user)
* Template styling is minimal; customizing templates requires manual HTML/CSS edits
* No input validation or sanitization — consider adding security/hardening before public use
* No export history or versioning system for resumes

---

## 💡 How You Can Contribute

Contributions are welcome! You can help by:

* Adding new resume templates (in `/templates`)
* Improving styling, adding CSS themes
* Adding user authentication or session support
* Validating / sanitizing user inputs
* Improving documentation

Feel free to fork the repository, make enhancements, and submit a pull request
