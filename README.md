# Finance Portfolio Site

A professional portfolio website showcasing finance, accounting, and bookkeeping expertise for small businesses, including AI-powered financial solutions.

## 📋 Project Overview

This portfolio demonstrates:
- **5 Core Bookkeeping & Accounting Projects**: Invoice management, GL reconciliation, financial reporting, payroll, and bank reconciliation
- **2 AI-Powered Projects**: Receipt classifier AI and tax optimization agent
- **Real-world problem solving** for small business finance challenges

## 🚀 Quick Start

### Prerequisites
- Jekyll 4.0+
- Ruby 2.6+
- Git

### Local Development

```bash
# Clone the repository
git clone https://github.com/yourusername/finance_portfolio.git
cd finance_portfolio

# Install dependencies
bundle install

# Run locally
bundle exec jekyll serve
```

Then visit `http://localhost:4000` in your browser.

### Deploy to GitHub Pages

1. **Create a GitHub repository**: `yourusername/finance_portfolio`
2. **Push to GitHub**:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/yourusername/finance_portfolio.git
   git push -u origin main
   ```
3. **Enable GitHub Pages**: Go to repository Settings → Pages → Set main branch as source
4. Site will be live at: `https://yourusername.github.io/finance_portfolio`

## 📁 Project Structure

```
finance_portfolio/
├── _config.yml              # Jekyll configuration
├── _layouts/
│   ├── default.html        # Main layout
│   └── project.html        # Project detail layout
├── _posts/                  # Project markdown files (7 projects)
├── pages/                   # About, Projects, Contact pages
├── assets/
│   ├── css/main.css        # Custom styling
│   ├── images/projects/    # Project screenshots
│   └── files/projects/     # Sample data files
├── index.md                # Homepage
└── README.md               # This file
```

## 📊 Projects Included

### Bookkeeping Projects (3)
1. **Invoice & Bill Management System** - AR/AP tracking with aging reports
2. **General Ledger Reconciliation Tool** - Automated GL matching and variance analysis
3. **Financial Report Generator** - P&L, Balance Sheet, Trial Balance automation

### Accounting Projects (2)
4. **Payroll Processing & Expense Tracker** - Full payroll cycle + expense management
5. **Bank Reconciliation Automation** - Intelligent transaction matching

### AI-Powered Projects (2)
6. **Intelligent Receipt Classifier AI** - Computer vision + LLM for expense categorization
7. **Tax Deduction & Compliance Agent** - AI agent for tax optimization

## 🎯 Key Features

✅ **Responsive Design** - Works on desktop, tablet, mobile
✅ **Project Showcase** - Detailed project pages with problem statements, tools, results
✅ **AI Focus** - Demonstrates understanding of modern AI/agent applications
✅ **Professional Styling** - Bootstrap 5 + custom CSS
✅ **Easy Customization** - Update contact info, social links, project details
✅ **GitHub Pages Ready** - One-click deployment

## 🔧 Customization

### Update Site Information
Edit `_config.yml`:
```yaml
title: Your Name - Finance Portfolio
author: Your Name
url: "https://yourusername.github.io"
baseurl: "/finance_portfolio"
social_links:
  github: yourusername
  linkedin: yourusername
```

### Update Contact Information
Edit `pages/contact.md` with your:
- Email address
- LinkedIn profile
- GitHub profile
- Contact form endpoint (if using Formspree)

### Add/Modify Projects
Create new project in `_posts/`:
```bash
touch _posts/2026-05-01-your-project.md
```

Use existing project frontmatter as template.

## 📚 Technologies Used

- **Jekyll**: Static site generator for GitHub Pages
- **Bootstrap 5**: Responsive CSS framework
- **Markdown**: Content formatting
- **Git**: Version control

## 🎓 Sample Project Structure

Each project includes:
- **Problem Statement**: The challenge being solved
- **Solution Overview**: How the solution addresses the problem
- **Tools & Technologies**: Technical stack used
- **Key Features**: Main capabilities
- **Implementation Details**: Technical architecture
- **Results & Impact**: Business outcomes achieved
- **Key Learnings**: Lessons learned
- **Files & Samples**: Links to project artifacts

## 🚀 Deployment Checklist

Before going live:

- [ ] Update `_config.yml` with your information
- [ ] Customize homepage content
- [ ] Update "About" page with your bio
- [ ] Set up contact form (Formspree or alternative)
- [ ] Update social media links
- [ ] Add profile photo/logo
- [ ] Test locally: `bundle exec jekyll serve`
- [ ] Push to GitHub
- [ ] Enable GitHub Pages
- [ ] Verify site is live

## 💡 Tips for Success

1. **Keep projects current**: Update dates and status as needed
2. **Add real data**: Replace sample files with your actual project artifacts
3. **Tell your story**: Use the problem statement section to showcase thinking
4. **Show impact**: Quantify results (time saved, accuracy improved, etc.)
5. **Link everything**: Connect projects to GitHub repos if available
6. **Use visuals**: Add screenshots or diagrams to projects

## 📞 Support

- **Jekyll Docs**: https://jekyllrb.com/docs/
- **Bootstrap Docs**: https://getbootstrap.com/docs/
- **GitHub Pages**: https://pages.github.com/

## 📝 License

This portfolio template is provided as-is for personal and professional use.

---

**Built with Jekyll & Bootstrap**  
Last updated: April 2026
