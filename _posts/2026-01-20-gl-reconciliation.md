---
layout: project
title: General Ledger Reconciliation Tool
date: 2026-01-20
category: Bookkeeping
ai_project: false
duration: 3 weeks
status: Complete
difficulty: Intermediate
impact: Reduced reconciliation time by 70%, eliminated discrepancies

problem_statement: "Monthly GL reconciliation is manual, time-consuming, and error-prone. Discrepancies between sub-ledgers and general ledger cause financial statement errors and audit concerns."

tools:
  - Excel Pivot Tables
  - Bank Statement Import
  - Sub-ledger Matching
  - Variance Analysis
  - Reconciliation Checklists

features:
  - Automated sub-ledger to GL matching
  - Bank statement reconciliation
  - Variance identification and flagging
  - Reconciliation status tracking
  - Audit trail documentation
  - Journal entry suggestions
  - Monthly reconciliation reports

results: "Automated the reconciliation process for a mid-sized business. Reduced reconciliation time from 8 hours to 2 hours per month. Eliminated 95% of manual errors. Created systematic approach to identifying and resolving discrepancies. Improved financial statement accuracy."

learnings: "Reconciliation is about understanding transaction flows, not just matching numbers. Sub-ledger relationships are critical. Documentation is essential for audits. Systematic approach prevents errors better than ad-hoc methods."

excerpt: "Systematic general ledger reconciliation process that automates sub-ledger matching, identifies variances, and ensures financial statement accuracy."
---

## Overview

General Ledger reconciliation is one of the most critical yet time-consuming accounting functions. This project addresses the challenge of ensuring that **sub-ledgers (AR, AP, Inventory, Cash) match the General Ledger balances** before closing the books.

### The Reconciliation Challenge

Manual reconciliation typically involves:
- ⏰ **8+ hours per month** comparing balances
- ❌ **Human errors** in manual calculations
- 📊 **Multiple spreadsheets** for different sub-ledgers
- 🔍 **Difficult variance analysis** when numbers don't match
- 📝 **Poor documentation** for auditors
- 🚨 **Risk of financial statement errors**

### Accounting Impact

When GL isn't properly reconciled:
- Financial statements may contain errors
- Audit findings and compliance issues
- Poor cash flow management
- Misstated assets and liabilities
- Tax filing complications

## Solution Approach

I designed a systematic **GL Reconciliation Framework** that automates matching, identifies discrepancies, and provides audit-ready documentation.

### Reconciliation Process Flow

```
Extract Sub-ledger Data → Import Bank Statements →
Match Transactions → Identify Variances →
Generate Reconciliation Reports → Journal Entry Recommendations →
Documentation & Audit Trail
```

## Core Reconciliation Modules

### 1. Accounts Receivable Reconciliation

**Sub-ledger vs. GL Balance Matching:**

```
AR Sub-ledger Aging Report:
  Current:        $125,000
  30-60 Days:     $45,000
  60-90 Days:     $15,000
  90+ Days:       $5,000
  Total AR:       $190,000

GL Balance (Account 1100): $190,000
Variance: $0 ✅ Reconciled
```

**Key Controls:**
- Invoice total = GL debit
- Payments applied = GL credit
- Write-offs properly recorded
- Bad debt reserves accurate

### 2. Accounts Payable Reconciliation

**Vendor Statement vs. AP Sub-ledger:**

```
Vendor: ABC Supplies
Statement Balance: $12,500
AP Sub-ledger:      $12,500
Variance: $0 ✅ Reconciled

Vendor: XYZ Corp
Statement Balance: $8,200
AP Sub-ledger:      $7,800
Variance: $400 ⚠️ Investigate
  - Check: Unreceived invoices?
  - Check: Duplicate payments?
  - Check: Timing differences?
```

**Reconciliation Steps:**
- Match vendor statements to AP ledger
- Identify unmatched transactions
- Verify payment clearing
- Confirm outstanding bills

### 3. Bank Reconciliation

**Bank Statement vs. Cash Account:**

```
Cash Account (GL):              $45,000
Add: Deposits in Transit:       +$3,500
Less: Outstanding Checks:       -$2,800
Adjusted Book Balance:          $45,700

Bank Statement Balance:         $45,700
Variance: $0 ✅ Reconciled
```

**Common Discrepancies:**
- Deposits in transit
- Outstanding checks
- Bank fees not recorded
- Interest earned not posted
- NSF checks not processed

### 4. Inventory Reconciliation

**Physical Count vs. Inventory Ledger:**

```
Inventory Category A:
  Physical Count:      1,250 units @ $20 = $25,000
  Ledger Quantity:    1,230 units @ $20 = $24,600
  Variance:           20 units = $400

Investigation:
  - Check recent sales
  - Verify receiving records
  - Review damage reports
  - Confirm theft/loss if applicable
```

**Accounting Treatment:**
- Adjust inventory value
- Record loss/gain (COGS adjustment)
- Update inventory count
- Document reason for variance

## Variance Analysis Framework

### Systematic Investigation Process

When variance is identified:

```
STEP 1: Identify Variance
  | Calculate difference amount
  | Determine significance threshold (materiality)

STEP 2: Categorize Variance Type
  | Timing differences (reconciling items)
  | Unposted transactions
  | Calculation errors
  | Missing documentation

STEP 3: Root Cause Analysis
  | Review transaction history
  | Check for data entry errors
  | Verify posting dates
  | Confirm approval workflow

STEP 4: Resolution & Documentation
  | Create adjusting journal entry
  | Document root cause
  | Implement preventive controls
  | Update reconciliation procedures
```

### Sample Variance Analysis Report

```
RECONCILIATION VARIANCE ANALYSIS
Date: January 31, 2026

ACCOUNT: Accounts Receivable (1100)
Sub-ledger Balance: $190,000
GL Balance: $189,500
Variance: $500

INVESTIGATION:
✓ Reviewed recent invoice postings
✓ Checked payment applications
✓ Verified write-off entries
✓ Confirmed bad debt adjustments

ROOT CAUSE:
Invoice #INV-2051 for $500 posted on Jan 31
but GL entry dated Jan 30 (timing difference)

RESOLUTION:
No JE required - will auto-reconcile Feb 1
Documented as reconciling item

PREVENTIVE CONTROL:
Train staff on posting date importance
Set daily posting cutoff at 5 PM
```

## Monthly Reconciliation Checklist

### Pre-Reconciliation
- [ ] Ensure all transactions posted for the month
- [ ] Run trial balance
- [ ] Review unusual account balances
- [ ] Confirm bank statements received
- [ ] Gather vendor statements

### Reconciliation Tasks
- [ ] Bank reconciliation completed
- [ ] AR sub-ledger reconciled
- [ ] AP sub-ledger reconciled
- [ ] Inventory counts performed
- [ ] Credit card statements reconciled
- [ ] Fixed assets reconciled

### Post-Reconciliation
- [ ] All variances resolved
- [ ] Adjusting journal entries prepared
- [ ] JE posted and verified
- [ ] Reconciliation reports saved
- [ ] Documentation complete
- [ ] Management review completed

## Sample Reconciliation Report

```
MONTHLY GL RECONCILIATION REPORT
Period: January 2026
Prepared by: Shweta
Date: February 2, 2026

ACCOUNT: Cash (1000)
-----------------------------------
GL Balance (Ending):          $45,700
Bank Statement Balance:       $45,700
Reconciled: ✅ YES

Reconciling Items:
  - Deposits in Transit:      $3,500
  - Outstanding Checks:       ($2,800)

ACCOUNT: Accounts Receivable (1100)
-----------------------------------
GL Balance:                   $190,000
AR Sub-ledger:                $190,000
Reconciled: ✅ YES

Aging Analysis:
  0-30 Days:    $125,000 (66%)
  31-60 Days:   $45,000  (24%)
  61-90 Days:   $15,000  (8%)
  90+ Days:     $5,000   (2%)

ACCOUNT: Accounts Payable (2000)
-----------------------------------
GL Balance:                   $75,000
AP Sub-ledger:                $75,000
Reconciled: ✅ YES

Top Vendors:
  - ABC Supplies: $12,500
  - XYZ Corp:      $8,200
  - Global Tech:   $6,800

ACCOUNT: Inventory (1200)
-----------------------------------
GL Balance:                   $85,000
Physical Count:               $85,000
Reconciled: ✅ YES

Variance: $0
Adjustments: None

OVERALL STATUS: ✅ ALL ACCOUNTS RECONCILED

RECOMMENDATIONS:
1. Continue monitoring AR aging (90+ days at 2%)
2. Follow up on XYZ Corp ($400 vendor variance next month)
3. Schedule monthly physical counts for high-value items
```

## Business Impact

### Quantitative Results
| Metric | Before | After | Improvement |
|--------|--------|-------|-------------|
| Monthly Reconciliation Time | 8 hours | 2 hours | 75% faster |
| Discrepancy Rate | 5% | 0.5% | 90% reduction |
| Audit Findings | 3/year | 0/year | Eliminated |
| Financial Statement Errors | 2/year | 0/year | Eliminated |
| Documentation Quality | Ad-hoc | Systematic | Audit-ready |

### Accounting Benefits
- ✅ **Accurate Financial Statements**: GL balances verified before close
- ✅ **Audit Compliance**: Complete documentation and audit trail
- ✅ **Error Prevention**: Systematic approach catches issues early
- ✅ **Cash Visibility**: Bank reconciliation ensures accurate cash position
- ✅ **Inventory Accuracy**: Physical counts matched to ledger

### Process Improvements
- 📊 **Standardization**: Consistent reconciliation approach every month
- 🎯 **Risk Reduction**: Materiality thresholds focus on significant variances
- ⏱️ **Time Savings**: Automated matching reduces manual work
- 📈 **Confidence**: Management can rely on financial data
- 🔍 **Transparency**: Clear documentation for all stakeholders

## Key Learnings (Finance & Accounting)

### 1. Reconciliation is About Understanding Business
- Numbers don't match for a reason – need to understand why
- Transaction flow tells the story
- Documentation is critical for audits
- Timing differences are common but must be tracked

### 2. Materiality Matters
- Not all variances require immediate action
- Set materiality thresholds based on account size
- Focus effort on significant discrepancies
- Document all variances, regardless of size

### 3. Sub-ledger Relationships are Critical
- AR affects cash and revenue
- AP affects cash and expenses
- Inventory affects COGS
- Understanding these relationships prevents errors

### 4. Preventive Controls > Detective Controls
- Better to prevent errors than find them later
- Training and process design matter
- Approval workflows reduce mistakes
- Regular reviews improve accuracy

### 5. Communication is Key
- Finance needs to talk to operations
- Discrepancies often stem from process issues
- Cross-functional understanding prevents errors
- Continuous improvement requires feedback

## Implementation Challenges

### Challenge: Historical Data Inconsistency
**Problem**: 6 months of unreconciled data
**Solution**: Reconciled month-by-month, prioritized high-balance accounts
**Lesson**: Monthly reconciliation prevents backlog

### Challenge: Complex Inventory Valuation
**Problem**: FIFO vs. Weighted Average differences
**Solution**: Documented method, applied consistently
**Lesson**: Consistency is key for comparability

### Challenge: Multiple Bank Accounts
**Problem**: 5 checking accounts, 2 savings accounts
**Solution**: Created separate reconciliation for each, consolidated reporting
**Lesson:** Break down complex problems into manageable parts

## Future Enhancements

- **Real-time Reconciliation**: Daily rather than monthly
- **Automated Matching**: AI-powered transaction matching
- **Predictive Variance Detection**: Identify issues before month-end
- **Mobile App**: On-the-go reconciliation for sales teams
- **Integration with Accounting Software**: Direct sub-ledger sync
- **Roll-forward Reports**: Show balance changes from opening to closing

---

## Demonstrates Expertise In

✅ **General Ledger Management** - Complete GL reconciliation workflow
✅ **Sub-ledger Reconciliation** - AR, AP, Inventory, Cash matching
✅ **Bank Reconciliation** - Cash position verification
✅ **Variance Analysis** - Systematic investigation of discrepancies
✅ **Financial Statement Accuracy** - Pre-close verification
✅ **Audit Compliance** - Documentation and controls
✅ **Accounting Controls** - Preventive and detective controls
✅ **Process Documentation** - Standard operating procedures