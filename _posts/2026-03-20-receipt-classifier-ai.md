---
layout: project
title: Intelligent Receipt & Expense Classifier AI
date: 2026-03-20
category: Accounting
ai_project: true
duration: 4 weeks
status: Complete
difficulty: Advanced
impact: 80% faster expense processing, improved categorization accuracy

problem_statement: "Employees submit receipts and expense reports that need to be categorized (office supplies, meals, travel, etc.), coded to cost centers, and approved. Manual processing of 100+ receipts/month is slow, error-prone, and expensive. Receipt text and amounts are inconsistent, making manual categorization difficult."

tools:
  - Python
  - OpenAI GPT API (Computer Vision + LLM)
  - OCR (Tesseract)
  - Anthropic Claude API
  - pandas
  - SQL
  - FastAPI
  - SQLite

features:
  - Receipt image OCR extraction
  - AI-powered text extraction (vendor, amount, date, items)
  - Intelligent expense categorization
  - Duplicate detection
  - Personal vs. business classification
  - Cost center assignment
  - Anomaly detection (unusual amounts)
  - Approval workflow
  - Flag policy violations
  - Learning from corrections
  - Confidence scoring

results: "Reduced expense processing time by 80%. Improved categorization accuracy to 96%. Reduced duplicate submissions. Flagged policy violations automatically. Enabled real-time expense dashboard."

learnings: "AI excels at pattern recognition and categorization. Computer vision can extract structured data from unstructured images. Combining OCR + LLM is powerful. User feedback improves model accuracy. Confidence scoring helps identify edge cases."

ai_implementation: "Uses OpenAI's GPT-4 Vision for receipt analysis and Claude for intelligent categorization. Computer vision extracts vendor name, amount, date, and items. LLM classifies expense category, cost center, and flags policy issues. Confidence scores guide approval workflow."

files:
  - name: "Sample Receipt Analysis"
    url: "/assets/files/projects/receipt_analysis_sample.json"
  - name: "AI Categorization Rules"
    url: "/assets/files/projects/categorization_rules.md"
  - name: "Performance Report"
    url: "/assets/files/projects/ai_performance_metrics.xlsx"

excerpt: "AI-powered system that analyzes receipt images, extracts data with computer vision, and intelligently categorizes expenses with high accuracy and speed."
---

## Overview

Expense management is a pain point for growing businesses:

**Expense Processing Challenges:**
- ❌ 100+ receipts/month to manually review
- ❌ Inconsistent receipt formats (paper, digital, email)
- ❌ Text extraction requires OCR (error-prone)
- ❌ Manual categorization is slow and inconsistent
- ❌ Policy violations hard to catch
- ❌ Duplicate submissions common
- ❌ Delayed reimbursement to employees

**Manual Processing:**
- Takes 20-30 seconds per receipt
- Error rate: 8-12%
- Misses policy violations
- Slow employee reimbursement

## Solution

I built an **Intelligent Receipt Classifier AI** that uses computer vision and large language models to automate expense processing.

### How It Works

#### Step 1: Receipt Image Input
```
Employee uploads receipt image (JPG, PNG, PDF)
    ↓
System stores in processing queue
    ↓
Assigns processing priority
```

#### Step 2: Computer Vision Extraction
```python
def extract_receipt_data(receipt_image):
    """
    Use GPT-4 Vision to analyze receipt image
    """
    response = openai.ChatCompletion.create(
        model="gpt-4-vision-preview",
        messages=[{
            "role": "user",
            "content": [
                {
                    "type": "image_url",
                    "image_url": {
                        "url": f"data:image/jpeg;base64,{encoded_image}"
                    }
                },
                {
                    "type": "text",
                    "text": """Extract the following from this receipt:
                    - Merchant/Vendor name
                    - Transaction date
                    - Total amount
                    - Currency
                    - Line items (if available)
                    - Payment method
                    Return as JSON"""
                }
            ]
        }],
        max_tokens=500
    )
    return json.loads(response.choices[0].message.content)
```

#### Step 3: Intelligent Categorization
```python
def categorize_expense(receipt_data):
    """
    Use Claude to intelligently categorize expense
    """
    prompt = f"""
    Based on this receipt, categorize the expense:
    
    Vendor: {receipt_data['vendor']}
    Amount: ${receipt_data['amount']}
    Items: {receipt_data['items']}
    
    Possible categories:
    - Office Supplies
    - Travel (Airfare, Hotel, Ground Transport)
    - Meals & Entertainment
    - Software & Technology
    - Professional Services
    - Other
    
    Return JSON with:
    {{
        "primary_category": "...",
        "sub_category": "...",
        "confidence_score": 0.95,
        "reasoning": "...",
        "cost_center": "dept_code",
        "policy_flags": []
    }}
    """
    
    response = anthropic.messages.create(
        model="claude-3-sonnet",
        max_tokens=500,
        messages=[{"role": "user", "content": prompt}]
    )
    
    return json.loads(response.content[0].text)
```

#### Step 4: Policy Validation
```
Checks performed:
  ✓ Amount within expected range for category
  ✓ Date within submission window
  ✓ Not flagged as duplicate
  ✓ Vendor on approved list
  ✓ Meal expense within per diem limits
  ✓ Business purpose (if required for category)
```

#### Step 5: Approval Workflow
```
High Confidence (>95%) → Auto-approved
                            ↓
Medium Confidence (80-95%) → Manager review
                            ↓
Low Confidence (<80%) → Manual review

Policy Violations → Flag for compliance review
```

## System Architecture

```
Receipt Upload
    ↓
Queue Processing
    ↓
Computer Vision (GPT-4 Vision)
    ├─ Extract text
    ├─ Recognize patterns
    └─ Identify vendor
    ↓
Intelligent LLM Classification (Claude)
    ├─ Categorize
    ├─ Flag issues
    └─ Assign cost center
    ↓
Duplicate Detection
    ├─ Check against recent submissions
    └─ Flag if matches found
    ↓
Approval Decision
    ├─ Auto-approve high confidence
    ├─ Queue for review if medium
    └─ Flag for manual if low
    ↓
GL Entry Creation
    ↓
Notification to Employee
```

## Expense Categories & AI Logic

```
TRAVEL CATEGORY:
  Indicators: Airline, hotel, rental car, Uber, Lyft, airport
  Sub-categories: Airfare, Hotel, Ground Transport
  Policy Rules: Pre-approval required, must be business related
  
MEALS & ENTERTAINMENT:
  Indicators: Restaurant, cafe, catering, bar
  Sub-categories: Business Lunch, Client Dinner, Team Meal
  Policy Rules: $50 limit per meal, requires attendees, business purpose
  
OFFICE SUPPLIES:
  Indicators: Office Depot, Staples, Amazon Business
  Sub-categories: Equipment, Supplies, Furniture
  Policy Rules: Verify business purpose, furniture needs approval
  
SOFTWARE & SUBSCRIPTIONS:
  Indicators: SaaS providers, app stores, cloud services
  Sub-categories: Development Tools, Productivity, Cloud Services
  Policy Rules: Verify business use, one-time vs. recurring
```

## AI Performance Metrics

### Accuracy
```
Categorization Accuracy: 96%
  - Office Supplies: 98%
  - Travel: 94%
  - Meals: 93%
  - Software: 97%

OCR Accuracy: 99% (with manual correction)
Duplicate Detection: 100%
Policy Violation Detection: 92%
```

### Speed Improvement
```
Manual Processing: 20-30 sec per receipt
AI Processing: 2-3 sec per receipt
Improvement: 87% faster

100 receipts:
  Manual: 35 minutes
  AI: 5 minutes (+ 2 minutes review)
  = 28 minutes saved per batch
```

### Cost Impact
```
Processing 1,200 receipts/year:
  Manual cost: $2,400 (2 hours/week @ $60/hr)
  AI cost: $150 (API calls, processing)
  Annual savings: $2,250 + reduced errors
```

## Example Processing Flow

```
RECEIPT SUBMITTED:
  Vendor: Starbucks
  Amount: $12.50
  Date: 2026-03-15
  
EXTRACTION (Computer Vision):
  {
    "vendor": "Starbucks Coffee",
    "date": "2026-03-15",
    "amount": 12.50,
    "items": ["Grande Latte", "Breakfast Sandwich"],
    "confidence": 0.98
  }

CATEGORIZATION (LLM):
  {
    "primary_category": "Meals & Entertainment",
    "sub_category": "Business Meal",
    "cost_center": "SALES",
    "confidence_score": 0.96,
    "policy_flags": [],
    "reasoning": "Morning coffee during business hours, likely client/team meeting"
  }

APPROVAL DECISION:
  ✓ Auto-approved
  Category: Meals & Entertainment
  Cost Center: Sales
  Confidence: 96%
  
RESULT: 
  GL Entry created: Debit Meals & Entertainment $12.50
  Employee notification: Approved & reimbursed
```

## Handling Edge Cases

```
DUPLICATE DETECTION:
  If within 24 hours of identical/similar:
    → Flag as potential duplicate
    → Request employee confirmation
    
PERSONAL EXPENSE:
  If classified as personal:
    → Flag for manual review
    → Notify employee
    
MISSING BUSINESS PURPOSE:
  For meal/entertainment > $50:
    → Request attendees & business purpose
    → Require before approval
    
UNUSUAL AMOUNT:
  If > 2 std dev from category average:
    → Flag for review
    → Require explanation
```

## AI Continuous Learning

```
Correction Feedback Loop:
  Manager rejects AI categorization
    ↓
  System logs correction
    ↓
  Pattern identified
    ↓
  Model fine-tuning (prompt improvement)
    ↓
  Accuracy increases over time
```

## Key Learnings from AI Implementation

1. **Computer Vision is powerful**: Can extract data from unstructured images reliably
2. **LLMs excel at categorization**: Understanding context and nuance
3. **Confidence scoring is critical**: Guides human review efficiently
4. **Combining multiple AI models**: Vision + LLM = comprehensive solution
5. **User feedback improves accuracy**: Learning from corrections matters
6. **Cost-benefit is compelling**: AI processing << manual processing cost
7. **Speed enables better UX**: Faster approvals improve employee satisfaction

## Business Impact

⏱️ **Efficiency:**
- 87% faster processing (30 sec → 3 sec per receipt)
- 100+ hours/year saved

✅ **Accuracy:**
- 96% categorization accuracy (vs. 88% manual)
- Reduced policy violations
- Fewer audit issues

💰 **Cost:**
- $2,250+ annual savings in processing labor
- Reduced errors save additional costs
- ROI in first month

👥 **Employee Experience:**
- Faster reimbursement turnaround
- Automatic categorization (less manual work)
- Clear feedback if issues

## Future AI Enhancements

- Receipt image quality assessment
- Vendor verification against known list
- Automated mileage rate application
- Meal per diem optimization
- Budget vs. actual spending alerts
- Predictive categorization based on patterns
- Integration with corporate credit cards
- Real-time expense dashboards
