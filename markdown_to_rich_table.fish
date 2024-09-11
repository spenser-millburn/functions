function markdown_to_rich_table
    set -l markdown_table $argv
    python3 -c '
import sys
from rich.console import Console
from rich.table import Table

markdown_table = """'$markdown_table'"""
console = Console()

def parse_markdown_table(md_table):
    lines = md_table.strip().split("\\n")
    headers = [h.strip() for h in lines[0].split("|") if h.strip()]
    table = Table(show_header=True, header_style="bold magenta")

    for header in headers:
        table.add_column(header)
    
    for row in lines[2:]:
        row_values = [r.strip() for r in row.split("|") if r.strip()]
        table.add_row(*row_values)
    
    return table

rich_table = parse_markdown_table(markdown_table)
console.print(rich_table)
    '
end
