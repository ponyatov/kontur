# sync-conflict

```py
import os,sys,re
import subprocess

SYNC = 'sync-conflict'
FIND = f'find -type f -regex ".*{SYNC}.*"'
REX  = SYNC+r'-\d+-\d+-\w+\.'

with open('../tmp/tmp','w') as F:
    for s in (subprocess.getoutput(FIND).splitlines()):
        a = s
        # print(a)
        b = re.sub(REX,'',a)
        # print(b)
        print(f'meld {b} {a} && rm {a}',file=F)
```

![[assume-unchanged]]
![[CRLF]]
