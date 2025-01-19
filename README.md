# Authenticated Havoc-Chained-RCE
(CVE-2024-41570) 

Command injection:
Havoc is vulnerable to command injection enabling an authenticated user to execute commands on the Teamserver. Affects versions 0.3 up to the latest release 0.6. Havoc's default profile contains hardcoded passwords, so a C2 operator careless enough to use the default profile on a public network can immediately be exploited.


SSRF: 
This vulnerability is exploited by spoofing a demon agent registration and checkins to open a TCP socket on the teamserver and read/write data from it. This allows attackers to leak origin IPs of teamservers and much more.

Chain:
Abusing SSRF to deliver an authenticated command injection payload

# Usage

- Modify the IP, USER and PASSWORD in the poc.py
- Modify IP in test.sh
- Start a python3 listener
- Run the script. (-i is for the internal ip and -p is for the internal port you are accessing for the web socket)

```pip3 install -r requirements.txt```

```python3 poc.py -t https://example.com -i 127.0.0.1 -p 10000```


### Credits
This is not all my doing.

Credits to @chebuya and @Hyperreality
