# Ciphers
## Caesar Cipher
It is a type of substitution cipher in which each letter in the plaintext is 'shifted' a certain number of places down the alphabet.
Here is a quick example of the encryption and decryption steps involved with the caesar cipher. The text we will encrypt is 'defend the east wall of the castle', with a shift (key) of 1.
- plaintext:  defend the east wall of the castle
- ciphertext: efgfoe uif fbtu xbmm pg uif dbtumf

#### CLI command to decipher
```bash
cat ciphertext | tr '[A-Za-z]' '[X-ZA-Wx-za-w]'    # example for key = 23
```

##### Special case - ROT13 (Caeser Cipher with key=13)
---
## Vigenère Cipher
Ex. 
Text to encrypt: **MICHIGAN TECHNOLOGICAL UNIVERSITY**
Key: **HOUGHTON**

First break down at steps of 5.
Then, using **HOUGHTON** multiple times, we write
**MICHI GANTE CHNOL OGICA LUNIV ERSIT Y**
**HOUGH TONHO UGHTO NHOUG HTONH OUGHT O**

then use this chart to encrypt:
![500](https://i.imgur.com/U1OqMQV.png)

Final encrypted text: **TWWNP ZOAAS WNUHZ BNWWG SNBVC SLYPM M**

#### Python script to decipher
```python
encrypted_num,key_num = [ord(i.upper())-64+1 for i in input().replace(" ","")],[ord(i.upper())-64 for i in input()]
print("".join([chr((i-key_num[n%len(key_num)]+26)%26+64) for n,i in enumerate(encrypted_num)]))
```
[[vignere_decrypt.py]]

---
## Atbash Cipher
Replace A with Z, B with Y, and so on ...

#### CLI command to decipher
```bash
cat ciphertext | tr 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz' 'ZYXWVUTSRQPONMLKJIHGFEDCBAzyxwvutsrqponmlkjihgfedcba'
```

---
## Monoalphabetic Substitution Cipher
Similar to Atbash, but the substitution pattern is unknown.

---
## Transposition Ciphers


---
## Morse Code
NOT a cipher, just an encoding format

#### Python script to decipher
```python

```
[[morse_decoder.py]]

---
---
# Encodings
