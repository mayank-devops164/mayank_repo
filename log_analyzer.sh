#!/bin/bash

LOG_FILE="application.log"
REPORT_FILE="log_report.txt"

echo "======================================"
echo "        LINUX LOG ANALYZER"
echo "======================================"

echo ""

TOTAL=$(wc -l < "$LOG_FILE")
ERRORS=$(grep -c "ERROR" "$LOG_FILE")
WARNINGS=$(grep -c "WARNING" "$LOG_FILE")
INFO=$(grep -c "INFO" "$LOG_FILE")
FAILED_LOGINS=$(grep -c "Failed login" "$LOG_FILE")

echo "Total Log Lines     : $TOTAL"
echo "ERROR Count         : $ERRORS"
echo "WARNING Count       : $WARNINGS"
echo "INFO Count          : $INFO"
echo "Failed Login Count  : $FAILED_LOGINS"

echo ""
echo "Top IP Addresses:"
grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' "$LOG_FILE" |
sort |
uniq -c |
sort -nr |
head -5

echo ""
echo "======================================"
echo "        ANALYSIS COMPLETED"
echo "======================================"
