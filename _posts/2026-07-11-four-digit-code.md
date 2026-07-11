---
layout: post
title: "Conversion From a Passphrase to a Four Digit Number"
kind: Note
image: /assets/images/temple_os.png
---

I currently don't have a better place to put this bash code, so for now, I will be placing it here. I use it to convert some passphrase to a four digit code.

```bash
printf "%04d\n" $((16#$(echo -n "long phrase here" | sha256sum | cut -c1-8) % 10000))
```
