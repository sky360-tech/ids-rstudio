import random
import sys
from datetime import datetime

SNIPPETS = [
    "def calculate_sha256(data: bytes) -> str:\n    import hashlib\n    return hashlib.sha256(data).hexdigest()\n",
    "def is_valid_ipv4(ip: str) -> bool:\n    parts = ip.split('.')\n    return len(parts) == 4 and all(p.isdigit() and 0 <= int(p) <= 255 for p in parts)\n",
    "def sanitize_header(header_val: str) -> str:\n    return header_val.replace('\\r', '').replace('\\n', '')\n",
    "def parse_syslog_severity(priority: int) -> int:\n    return priority & 7\n",
    "def xor_encrypt(data: bytes, key: int) -> bytes:\n    return bytes([b ^ key for b in data])\n",
]

def apply_change():
    timestamp = datetime.utcnow().isoformat()
    snippet = random.choice(SNIPPETS)
    
    with open("generated_utils.py", "a") as f:
        f.write(f"\n# Updated at {timestamp}\n{snippet}\n")

if __name__ == "__main__":
    apply_change()
