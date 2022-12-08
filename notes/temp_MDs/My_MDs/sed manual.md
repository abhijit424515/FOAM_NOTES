### sed operational commands
```s/``` for substitute


### sed pattern flags
```/g``` for global


```bash
echo "hello hello 123" | sed 's/hello/HELLO/g'                  # HELLO HELLO 123
echo "hello hello hello 123" | sed 's/hello/HELLO/2'            # hello HELLO hello 123
echo "hello hello hello 123" | sed '5 s/hello/HELLO/2'          # sed rule iff line 5

echo "hello world hello\nworld hello" | sed '/hello/s/world/universe/'














```