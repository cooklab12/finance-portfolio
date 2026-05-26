---
layout: project
title: Financial Report Generator
date: 2026-02-01
category: Bookkeeping
ai_project: false
duration: 2.5 weeks
status: Complete
difficulty: Intermediate
impact: Automated monthly financial reporting

problem_statement: "Creating financial statements (P&L, Balance Sheet, Trial Balance) is a manual process requiring hours of compilation and validation. Reports are static documents that take days to produce, slowing down business decisions."

tools:
  - Python
  - SQL
  - pandas
  - openpyxl
  - SQLite
  - Jinja2 (templating)

features:
  - Income Statement (P&L) generation
  - Balance Sheet generation
  - Trial Balance reports
  - Cash Flow Statement
  - Period-over-period comparison
  - Budget vs. Actual comparison
  - Variance analysis
  - PDF/Excel export
  - Multi-period reporting
  - Department/division breakdowns

results: "Automated monthly financial reporting, reducing production time from 6+ hours to 15 minutes. Enabled real-time financial analysis. Provided accurate, consistent reports for stakeholder reviews."

learnings: "GL account structure directly impacts report quality. Account classification (asset, liability, equity, revenue, expense) is critical. Automated validation prevents human errors. Reports need flexibility for different audiences."

files:
  - name: "Sample P&L Statement"
    url: "/assets/files/projects/sample_pl_statement.xlsx"
  - name: "Sample Balance Sheet"
    url: "/assets/files/projects/sample_balance_sheet.xlsx"
  - name: "Report Generation Code"
    url: "/assets/files/projects/report_generator.py"

excerpt: "Automated financial statement generation (P&L, Balance Sheet, Trial Balance) with variance analysis and multi-period comparisons."
---

## Overview

Small business owners and accountants need financial statements for:
- 📋 Tax filing
- 💰 Bank applications
- 📊 Stakeholder reporting
- 🎯 Business decision-making
- 🏦 Investor presentations

However, creating these reports manually involves:
- ❌ Pulling data from multiple sources
- ❌ Manual calculations prone to errors
- ❌ Hours of formatting and validation
- ❌ Inconsistent presentation
- ❌ Delays in reporting (days after month-end)

## Solution

I built a **Financial Report Generator** that automates the creation of professional financial statements from GL data.

### Supported Reports

1. **Income Statement (P&L)**
   - Revenue by category
   - Operating expenses
   - COGS calculation
   - Net income
   - Gross margin analysis
   - Period-over-period comparison
   - YTD vs. budget

2. **Balance Sheet**
   - Assets (current & fixed)
   - Liabilities (current & long-term)
   - Equity section
   - Date-specific snapshots
   - Prior period comparison

3. **Trial Balance**
   - All GL accounts
   - Debit/credit columns
   - Running totals
   - Account verification
   - Reconciliation checks

4. **Cash Flow Statement**
   - Operating activities
   - Investing activities
   - Financing activities
   - Net cash change

5. **Variance Analysis**
   - Budget vs. Actual
   - Period-over-period
   - Variance percentages
   - Top variance highlights

## Technical Architecture

```
GL Data (SQLite)
    ↓
Account Classification
    ↓
GL Balance Calculations
    ↓
Report Templates
    ↓
Variance Analysis
    ↓
Format & Export (PDF, Excel)
```

### Core Algorithm

```python
class FinancialReportGenerator:
    
    def get_account_balance(self, account_id, as_of_date):
        """Get balance for specific account as of date"""
        query = """
        SELECT SUM(debit - credit) as balance
        FROM gl_entries
        WHERE account_id = ? AND entry_date <= ?
        """
        return execute_query(query)
    
    def generate_pl_statement(self, period_start, period_end):
        """Generate Income Statement"""
        revenues = sum all revenue accounts (4000-4999)
        expenses = sum all expense accounts (5000-5999)
        net_income = revenues - expenses
        return format_statement(revenues, expenses, net_income)
    
    def generate_balance_sheet(self, as_of_date):
        """Generate Balance Sheet"""
        assets = sum asset accounts (1000-1999)
        liabilities = sum liability accounts (2000-2999)
        equity = sum equity accounts (3000-3999)
        return format_statement(assets, liabilities, equity)
```

## Implementation Features

### 1. Automated GL Data Retrieval
```python
# Pull GL balances efficiently
gl_balances = fetch_gl_balances_by_period(start_date, end_date)
gl_ytd = fetch_gl_balances_ytd(current_date)
```

### 2. Account Classification
```python
account_types = {
    '1000-1999': 'Assets',
    '2000-2999': 'Liabilities',
    '3000-3999': 'Equity',
    '4000-4999': 'Revenue',
    '5000-5999': 'Expenses'
}
```

### 3. Variance Calculations
```python
def calculate_variance(actual, budget):
    variance = actual - budget
    variance_pct = (variance / budget) * 100 if budget != 0 else 0
    return {
        'amount': variance,
        'percent': variance_pct,
        'flag': 'high' if abs(variance_pct) > 10 else 'normal'
    }
```

### 4. Report Formatting
- Professional Excel formatting
- PDF generation with headers/footers
- Configurable chart generation
- Multi-currency support
- Department/location breakdowns

## Sample Reports

### Income Statement Example

```
ACME Corporation
Income Statement
For the Period Ended January 31, 2026

Revenue                                    Budget        Actual      Variance
Product Sales                            $120,000      $118,500     ($1,500)
Service Revenue                           $45,000       $48,200      $3,200
Total Revenue                            $165,000      $166,700      $1,700

Expenses:
Cost of Goods Sold                        $75,000       $74,200        $800
Salaries & Wages                          $45,000       $45,000            0
Rent                                       $8,000        $8,000            0
Marketing                                  $5,000        $6,200     ($1,200)
Utilities                                  $2,500        $2,350        $150
Total Expenses                           $135,500      $135,750       ($250)

Net Income                                $29,500       $30,950      $1,450
Net Profit Margin                          17.9%         18.6%
```

### Balance Sheet Example

```
ACME Corporation
Balance Sheet
As of January 31, 2026

ASSETS                              Jan 31, 2026    Dec 31, 2025
Current Assets:
  Cash                                $45,200         $38,500
  Accounts Receivable                 $78,500         $72,000
  Inventory                          $125,000        $128,000
  Prepaid Expenses                     $5,300          $6,200
Total Current Assets                $254,000        $244,700

Fixed Assets:
  Equipment                          $150,000        $150,000
  Accumulated Depreciation           (45,000)        (42,000)
Net Fixed Assets                     $105,000        $108,000

TOTAL ASSETS                         $359,000        $352,700

LIABILITIES & EQUITY
Current Liabilities:
  Accounts Payable                    $52,000         $48,500
  Short-term Debt                     $30,000         $30,000
Total Current Liabilities             $82,000         $78,500

Long-term Liabilities:
  Long-term Debt                      $75,000         $75,000
Total Liabilities                    $157,000        $153,500

Equity:
  Common Stock                       $100,000        $100,000
  Retained Earnings                  $102,000         $99,200
Total Equity                         $202,000        $199,200

TOTAL LIABILITIES & EQUITY           $359,000        $352,700
```

## Business Impact

⏱️ **Time Savings:**
- **Report production time:** 6+ hours → 15 minutes
- **Error checking time:** 2+ hours → 0 (automated validation)
- **Monthly reporting:** Same-day generation possible

📊 **Reporting Benefits:**
- Consistent format every month
- Real-time financial visibility
- Accurate calculations (no manual errors)
- Easy to compare periods
- Professional appearance for stakeholders

💼 **Business Decision Impact:**
- Faster access to financial data
- Enables more frequent reporting (weekly vs. monthly)
- Better cash management insights
- Improved budget tracking

## Export Formats

- **Excel**: Formatted with charts, multiple sheets, pivot tables
- **PDF**: Professional presentation format with company branding
- **CSV**: For data analysis in other tools
- **JSON**: For API integration

## Key Learnings

1. **GL structure is critical**: Report quality depends on proper account classification
2. **Consistency matters**: Same reports monthly improves stakeholder trust
3. **Flexibility is necessary**: Different users need different views
4. **Validation is essential**: Automated checks prevent errors
5. **Speed enables decision-making**: Quick access to financials matters

## Future Enhancements

- Dashboard with key metrics
- Trend analysis and forecasting
- Drill-down to GL account level
- Automated ratio analysis
- Comparison to industry benchmarks
- Multi-entity consolidation
