---
layout: default
title: Shweta - Projects
permalink: /pages/projects
---

<div class="mb-5">
    <h1 class="mb-3">📋 All Projects</h1>
    <p class="lead text-muted">A showcase of bookkeeping, accounting, and AI-powered financial solutions for small businesses.</p>
</div>

<!-- Filter Tabs -->
<div class="mb-4">
    <div class="btn-group" role="group">
        <a href="#all" class="btn btn-outline-secondary active" onclick="filterProjects('all')">All (7)</a>
        <a href="#bookkeeping" class="btn btn-outline-secondary" onclick="filterProjects('bookkeeping')">Bookkeeping (3)</a>
        <a href="#accounting" class="btn btn-outline-secondary" onclick="filterProjects('accounting')">Accounting (2)</a>
        <a href="#ai" class="btn btn-outline-secondary" onclick="filterProjects('ai')">AI-Powered (2)</a>
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
                    <span class="badge" style="background-color: {% if post.category == 'Bookkeeping' %}#3498db{% elsif post.category == 'Accounting' %}#9b59b6{% endif %}">
                        📊 {{ post.category }}
                    </span>
                {% endif %}
                {% if post.ai_project %}
                    <span class="badge bg-success">🤖 AI-Powered</span>
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
Focused on core financial record-keeping and accounting fundamentals:
- Invoice & Bill Management
- General Ledger Reconciliation
- Financial Report Generation

### Accounting (2 Projects)
Specialized accounting functions and financial analysis:
- Payroll Processing & Expense Tracking
- Bank Reconciliation & Matching

### AI-Powered (2 Projects)
Intelligent automation bringing efficiency to finance:
- Receipt Classifier AI (OCR + Auto-Categorization)
- Tax Deduction & Compliance Agent

---

## 🎯 Browse by Problem Solved

Need a specific solution? Find the relevant project:

| Challenge | Related Projects |
|-----------|-----------------|
| Manage invoices & payments | Invoice & Bill Management |
| Reconcile accounts | General Ledger, Bank Reconciliation |
| Generate financial statements | Financial Report Generator |
| Process payroll | Payroll Processing System |
| Classify expenses | Receipt Classifier AI |
| Optimize taxes | Tax Deduction Agent |

---

**Want to discuss a specific project or explore how these solutions apply to your business?** [Get in touch]({{ '/pages/contact' | relative_url }})
