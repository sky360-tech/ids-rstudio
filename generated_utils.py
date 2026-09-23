
# Updated at 2026-09-23T19:37:54.892334
def parse_syslog_severity(priority: int) -> int:
    return priority & 7


# Updated at 2026-09-23T19:37:54.945524
def xor_encrypt(data: bytes, key: int) -> bytes:
    return bytes([b ^ key for b in data])

