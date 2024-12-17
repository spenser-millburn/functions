function display_table
    set -l input_text (kc get $argv| string collect)
    python3 -c "
from rich.console import Console
from rich.table import Table

def parse_input(input_text):
    lines = input_text.strip().split('\n')
    headers = lines[0].split()
    data = [line.split(maxsplit=len(headers) - 1) for line in lines[1:]]
    return headers, data

def create_table(headers, data):
    table = Table(show_header=True, header_style='bold magenta')
    for header in headers:
        table.add_column(header)
    for row in data:
        table.add_row(*row)
    return table

def main(input_text):
    headers, data = parse_input(input_text)
    table = create_table(headers, data)
    console = Console()
    console.print(table)

input_text = '''$input_text'''

if __name__ == '__main__':
    main(input_text)
    "
end
