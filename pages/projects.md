---
layout: default
title: Shweta - Projects
permalink: /pages/projects
---

<div class="mb-5">
    <h1 class="mb-3">📋 My Project Portfolio</h1>
    <p class="lead text-muted">A showcase of practical solutions I've built – demonstrating hands-on expertise in bookkeeping, accounting, and AI-powered financial automation for small businesses.</p>
    <p class="text-muted">Each project represents real problem-solving, technical implementation, and a commitment to delivering tangible results. I don't just study finance – I build solutions.</p>
</div>

<!-- Filter Tabs -->
<div class="mb-4">
    <div class="btn-group" role="group">
        <a href="#all" class="btn btn-outline-secondary active" onclick="filterProjects('all')">All Projects (7)</a>
        <a href="#bookkeeping" class="btn btn-outline-secondary" onclick="filterProjects('bookkeeping')">Bookkeeping (3)</a>
        <a href="#accounting" class="btn btn-outline-secondary" onclick="filterProjects('accounting')">Accounting (2)</a>
        <a href="#ai" class="btn btn-outline-secondary" onclick="filterProjects('ai')">🤖 AI-Powered (2)</a>
    </div>
</div>

<!-- Projects Grid -->
<div class="projects-grid">
    {% assign sorted_posts = site.posts | sort: 'date' | reverse %}
    {% for post in sorted_posts %}
    <div class="project-card" data-category="{% if post.ai_project %}ai{% else %}{{ post.category | downcase }}{% endif %}">
        <div class="project-card-header">
            <h3>{{ post.title }}</h3>
        </div>
        <div class="project-card-body">
            <p>{{ post.excerpt | strip_html | truncatewords: 25 }}</p>

            <div class="project-badges">
                {% if post.category %}
                    <span class="badge" style="background-color: {% if post.category == 'Bookkeeping' %}#667eea{% elsif post.category == 'Accounting' %}#764ba2{% endif %}">
                        📊 {{ post.category }}
                    </span>
                {% endif %}
                {% if post.ai_project %}
                    <span class="badge" style="background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);">🤖 AI-Powered</span>
                {% endif %}
            </div>

            {% if post.tools %}
                <div class="mt-3 pt-2" style="border-top: 1px solid #eee;">
                    <small class="text-muted">
                        <strong>Tools:</strong>
                        {% for tool in post.tools limit: 3 %}
                            {{ tool }}{% unless forloop.last %}, {% endunless %}
                        {% endfor %}
                    </small>
                </div>
            {% endif %}
        </div>
        <div class="project-card-footer">
            <a href="{{ post.url | relative_url }}">Explore Project →</a>
        </div>
    </div>
    {% endfor %}
</div>

<!-- Script for filtering -->
<script>
function filterProjects(category) {
    const cards = document.querySelectorAll('.project-card');
    const buttons = document.querySelectorAll('.btn-group .btn');

    // Update button states
    buttons.forEach(btn => btn.classList.remove('active'));
    event.target.classList.add('active');

    // Filter cards
    cards.forEach(card => {
        if (category === 'all' || card.dataset.category === category) {
            card.style.display = '';
        } else {
            card.style.display = 'none';
        }
    });
}
</script>

---

## 📊 Project Categories

### Bookkeeping (3 Projects)
Core financial record-keeping and accounting fundamentals:
- **Invoice & Bill Management** – Streamlined tracking and organization
- **General Ledger Reconciliation** – Accurate matching and validation
- **Financial Report Generation** – Automated P&L, Balance Sheet, and more

### Accounting (2 Projects)
Specialized accounting functions and financial analysis:
- **Payroll Processing & Expense Tracking** – Complete payroll workflow
- **Bank Reconciliation & Matching** – Automated account balancing

### AI-Powered (2 Projects)
Intelligent automation bringing efficiency to finance:
- **Receipt Classifier AI** – OCR + Auto-Categorization (80% faster processing!)
- **Tax Deduction & Compliance Agent** – Intelligent tax optimization

---

## 🎯 Browse by Challenge Solved

Need a specific solution? Find the relevant project:

| Business Challenge | My Solution |
|-------------------|-------------|
| Managing invoices & payments efficiently | Invoice & Bill Management System |
| Reconciling accounts accurately | General Ledger, Bank Reconciliation |
| Generating financial statements quickly | Financial Report Generator |
| Processing payroll reliably | Payroll Processing System |
| Classifying expenses automatically | Receipt Classifier AI |
| Optimizing tax deductions | Tax Deduction Agent |

---

## 💡 What These Projects Demonstrate

- **Practical Skills**: Not just theoretical knowledge – I build working solutions
- **Problem-Solving**: Each project addresses a real business pain point
- **Technical Depth**: Using modern tools and approaches (Python, AI, automation)
- **Business Understanding**: Solutions that consider real-world requirements
- **Innovation**: Combining traditional finance with cutting-edge technology

---

## 🚀 Looking to Collaborate?

I'm always open to discussing how my project experience can translate to solving YOUR business challenges. Whether you're looking for someone to:
- Take on bookkeeping and accounting responsibilities
- Build automation solutions for financial processes
- Contribute to fintech projects
- Bring a tech-forward perspective to your finance team

I'm ready to contribute, learn, and make an impact.

**Let's discuss how I can help!** [Get in Touch]({{ '/pages/contact' | relative_url }})