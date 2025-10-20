#!/bin/bash
set -e

echo '{
    "Rust cprog": {
        "scope": "rust",
        "prefix": "cprogrs",
        "body": [' > .vscode/cprogrs.code-snippets

sed -n '/--- IGNORE ---/q; p' src/main.rs | sed 's/\\/\\\\/g; s/"/\\"/g; s/^/            "/; s/$/",/' >> .vscode/cprogrs.code-snippets
echo '            ""
        ],
        "description": "Rust competitive programming template"
    }
}' >> .vscode/cprogrs.code-snippets