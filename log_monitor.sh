#!/bin/bash
echo "Checking recent file changes in your Home Directory..."
report_file="$HOME/file_activity_report.txt"

{
echo "------FILE ACTIVITY REPORT ($(date))-------"
echo "files modified in last 24hs :"
find $HOME -type f -mtime -1 2>/dev/null
echo "Reprt generated successfully."
} > "$report_file"

echo "Reprt saved to : $report_file"
echo "log Monitoring Completed!"

