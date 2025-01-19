# Authenticated Havoc-Chained-RCE
Abusing SSRF to deliver an authenticated command injection payload

# Usage

- Modify the IP in the script
- Modify IP in test.sh
- Start a python3 listener
- Run the script. (-i is for the internal ip and -p is for the internal port you are accessing for the web socket)

```pip3 install -r requirements.txt```

```python3 poc.py -t https://example.com -i 127.0.0.1 -p 10000```

Credits to @chebuya and @IncludeSecurity
