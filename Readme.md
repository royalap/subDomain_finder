# Subdomain Finder Script

This Bash script is designed to identify subdomains for a given target domain using a wordlist. It checks for the existence of A records for each subdomain derived from the provided wordlist.

## Features

- Simple command-line interface
- Checks for A records of subdomains
- Customizable wordlist for subdomain enumeration

## Requirements

- Bash shell
- `host` command (part of the `bind-utils` package)

## Usage

### Command-Line Options

- `-d DOMAIN`: Specify the target domain (e.g., example.com)
- `-w WORDLIST`: Provide the path to a wordlist file containing potential subdomains
- `-h` or `--help`: Display help information

### Example

To run the script, use the following command:

```bash
$ bash script.sh -d example.com -w wordlist.txt