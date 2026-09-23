
# Updated at 2026-09-23T19:37:54.892334
def parse_syslog_severity(priority: int) -> int:
    return priority & 7


# Updated at 2026-09-23T19:37:54.945524
def xor_encrypt(data: bytes, key: int) -> bytes:
    return bytes([b ^ key for b in data])


# Updated at 2026-09-23T19:37:54.997082
def xor_encrypt(data: bytes, key: int) -> bytes:
    return bytes([b ^ key for b in data])


# Updated at 2026-09-23T19:37:55.037020
def xor_encrypt(data: bytes, key: int) -> bytes:
    return bytes([b ^ key for b in data])


# Updated at 2026-09-23T19:37:55.063229
def is_valid_ipv4(ip: str) -> bool:
    parts = ip.split('.')
    return len(parts) == 4 and all(p.isdigit() and 0 <= int(p) <= 255 for p in parts)


# Updated at 2026-09-23T19:37:55.089365
def xor_encrypt(data: bytes, key: int) -> bytes:
    return bytes([b ^ key for b in data])


# Updated at 2026-09-23T19:37:55.116300
def sanitize_header(header_val: str) -> str:
    return header_val.replace('\r', '').replace('\n', '')


# Updated at 2026-09-23T19:37:55.142598
def xor_encrypt(data: bytes, key: int) -> bytes:
    return bytes([b ^ key for b in data])

