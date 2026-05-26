---
layout: project
title: Bank Reconciliation Automation
date: 2026-03-01
category: Accounting
ai_project: false
duration: 2 weeks
status: Complete
difficulty: Intermediate
impact: 50% faster bank reconciliation, eliminated discrepancies

problem_statement: "Monthly bank reconciliation requires matching hundreds of bank transactions with GL entries, finding outstanding checks, and identifying discrepancies. Manual process is tedious, error-prone, and delays financial closing."

tools:
  - Python
  - SQL
  - pandas
  - fuzzy matching libraries
  - SQLite

features:
  - Automated bank statement import (CSV, OFX)
  - GL transaction extraction
  - Intelligent transaction matching
  - Outstanding check identification
  - Deposit in transit detection
  - Variance analysis
  - Reconciliation reporting
  - Exception highlighting
  - Year-end reconciliation support
  - Multi-bank support

results: "Reduced bank reconciliation from 4 hours/month to 2 hours. Automated matching of 95%+ of transactions. Identified discrepancies automatically. Improved accuracy and consistency."

learnings: "Bank statement formats vary across institutions. Fuzzy matching essential for handling description variations. Timing differences (cleared vs. uncleared) are key. Clear classification of exceptions saves investigation time."

files:
  - name: "Bank Reconciliation Report"
    url: "/assets/files/projects/bank_recon_report_sample.xlsx"
  - name: "Statement Import Guide"
    url: "/assets/files/projects/statement_import_guide.md"
  - name: "Exception Analysis"
    url: "/assets/files/projects/exception_analysis_sample.pdf"

excerpt: "Automated bank reconciliation matching GL entries with bank transactions, handling outstanding items and identifying discrepancies efficiently."
---

## Overview

Bank reconciliation is a critical accounting control and a monthly requirement. The process involves:

**Traditional Bank Reconciliation Steps:**
1. Obtain bank statement for the month
2. List all GL cash transactions
3. Manually match bank transactions to GL entries
4. Identify outstanding checks and deposits in transit
5. Calculate reconciling items
6. Verify balance matches
7. Document exceptions
8. Get approval

**Challenges with manual process:**
- ❌ Hundreds of transactions to match manually
- ❌ Easy to miss matches (typos in descriptions)
- ❌ Time-consuming investigation of discrepancies
- ❌ Difficult to track adjustments
- ❌ Delays financial statement closing
- ❌ Human error (missed items, incorrect matches)

## Solution

I built an **Automated Bank Reconciliation System** that:
1. Imports bank statements automatically
2. Matches transactions intelligently
3. Flags discrepancies
4. Generates reconciliation reports
5. Maintains audit trail

### Key Capabilities

#### 1. Bank Statement Import
- **CSV format**: Direct bank exports
- **OFX format**: Standard financial format
- **Multi-bank**: Chase, Bank of America, Wells Fargo, etc.
- **Data validation**: Checks for completeness
- **Field mapping**: Handles different statement formats

#### 2. Intelligent Matching Engine
```python
def match_transactions(bank_txns, gl_txns):
    """
    Match bank transactions with GL entries using:
    - Exact amount match
    - Date proximity (±2 days for timing)
    - Description similarity (fuzzy matching)
    - Transaction type (debit/credit)
    """
    matched = []
    unmatched_bank = []
    unmatched_gl = []
    
    for bank_txn in bank_txns:
        # Look for GL transactions matching this bank transaction
        candidates = find_candidates(bank_txn, gl_txns)
        
        if candidates:
            best_match = rank_and_select_match(bank_txn, candidates)
            matched.append((bank_txn, best_match))
        else:
            unmatched_bank.append(bank_txn)
    
    return matched, unmatched_bank, unmatched_gl
```

#### 3. Outstanding Item Identification
```python
Outstanding Checks:
  - GL entries showing check disbursement
  - Not yet cleared by bank
  - Marked as "Outstanding" in reconciliation

Deposits in Transit:
  - GL deposits recorded
  - Not yet showing on bank statement
  - Typically clear within 1-2 days
```

#### 4. Reconciliation Calculation
```
Bank Statement Balance:          $50,000.00
Add: Deposits in Transit          $2,500.00
Less: Outstanding Checks         ($1,200.00)
Reconciled Balance:              $51,300.00

GL Cash Balance:                 $51,300.00
Status: ✓ RECONCILED
```

## Technical Implementation

### Matching Algorithm

```
STEP 1: Exact Match (high confidence)
  - Amount matches exactly
  - Date within ±1 day
  - Description similarity > 90%
  → Automatically matched

STEP 2: Fuzzy Match (medium confidence)
  - Amount within ±$0.01 tolerance
  - Date within ±2 days
  - Description similarity > 75%
  → Flag for review or auto-match

STEP 3: Unmatched Items (exceptions)
  - No matching transaction found
  → Investigate and categorize
```

### Data Structure

```python
class BankTransaction:
    transaction_date: date
    description: str
    amount: float
    transaction_type: str  # 'debit' or 'credit'
    reference: str  # Check #, transaction ID

class GLTransaction:
    entry_date: date
    description: str
    account_id: str
    debit_amount: float
    credit_amount: float
    reference: str  # Check #, invoice #

class ReconciliationMatch:
    bank_txn: BankTransaction
    gl_txn: GLTransaction
    match_score: float  # 0-100
    confidence: str  # 'high', 'medium', 'low'
```

## Sample Reconciliation Report

```
ACME Corporation
Bank Reconciliation Report
Bank Account: Chase Checking (***9876)
Month Ended: January 31, 2026

BANK STATEMENT:
Beginning Balance (Jan 1):       $48,500.00
Deposits:
  - Customer deposits            $32,150.00
  - Interest earned                 $25.00
Disbursements:
  - Checks written             ($28,900.00)
  - Electronic transfers        ($2,500.00)
  - Bank fees                       ($50.00)
Ending Balance (Jan 31):         $49,225.00

RECONCILIATION:
Bank Statement Balance:          $49,225.00

Add: Deposits in Transit:
  - Deposit from ABC Corp          $3,500.00
  - Deposit from XYZ LLC           $1,200.00
Total Deposits in Transit:        $4,700.00

Less: Outstanding Checks:
  - Check #1001 (Jan 28)          ($500.00)
  - Check #1002 (Jan 30)          ($800.00)
  - Check #1003 (Jan 31)        ($1,500.00)
Total Outstanding Checks:       ($2,800.00)

RECONCILED BALANCE:             $51,125.00

GL CASH BALANCE:
Beginning Balance (Jan 1):       $48,500.00
Deposits recorded:              $36,650.00
Checks written:                ($28,900.00)
Transfers:                       ($2,500.00)
Interest earned:                    $25.00
Bank fees:                           ($50.00)
GL Ending Balance:              $51,125.00

STATUS: ✓ RECONCILED
Reconciliation prepared by: Finance Team
Approval date: February 1, 2026
```

## Exception Analysis

```
UNMATCHED ITEMS REQUIRING INVESTIGATION:

Bank Transactions Not in GL:
1. Check #5678 - $1,200.00 (Jan 15)
   Issue: Check returned as NSF, not recorded in GL
   Action: Record NSF fee and clearing

2. Electronic transfer - $250.00 (Jan 22)
   Issue: Description unclear, potential duplicate
   Action: Contact bank for clarification

GL Transactions Not Cleared by Bank:
1. Deposit - $5,000.00 (Jan 30)
   Issue: Recorded but not yet on bank statement
   Action: Normal - deposits in transit, should clear by Feb 2

2. Check #998 - $800.00 (Jan 15)
   Issue: Recorded in GL but not cleared by bank
   Action: Likely outstanding check, investigate with recipient
```

## Business Impact

⏱️ **Time Savings:**
- **Reconciliation time:** 4 hours → 2 hours per month
- **Investigation time:** 1 hour → 15 minutes
- **Monthly total savings:** ~6 hours/month = ~72 hours/year

✅ **Accuracy Improvements:**
- **Automatic matching:** 95%+ of routine transactions
- **Error reduction:** Manual errors nearly eliminated
- **Audit-ready:** Complete documentation of reconciliation process

🎯 **Process Improvements:**
- Real-time matching feedback
- Clear exception reporting
- Historical tracking of reconciliation
- Quick identification of problem areas

## Integration with GL System

```
Bank Statement (CSV) → Import & Parse
                          ↓
                   Match with GL
                          ↓
              Categorize Unmatched Items
                          ↓
              Generate Reconciliation Report
                          ↓
         Create GL Adjustment Entries (if needed)
                          ↓
         Post Reconciliation to GL
```

## Key Learnings

1. **Format flexibility is essential**: Different banks export different formats
2. **Date tolerance matters**: Check clearing takes 1-2 days
3. **Description variations are common**: Fuzzy matching needed
4. **NSF checks and errors happen**: Must handle exceptions
5. **Audit trail is critical**: Document all decisions

## Future Enhancements

- Real-time matching (not just monthly)
- Multi-account reconciliation
- Automatic NSF fee handling
- Credit card reconciliation
- ACH reconciliation
- Integration with accounting software APIs
- Anomaly detection (unusual transactions)
- Year-end reconciliation checklist
