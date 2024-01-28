### ninja -v
- Error
    subprocess.CalledProcessError: Command ‘[‘ninja‘, ‘-v‘]‘ returned non-zero exit status 1
- Resolution
    Replace `[‘ninja‘, ‘-v‘]` with `[‘ninja‘, ‘--verison‘]` at `lib/python3.8/dis-packages/torch/utils/cpp_extension.py`

## glibc version 
- Error
    libstdc++.so.6: version `GLIBCXX_3.4.29' not found
- Resoluton
    ```
    rm /home/xx/anaconda3/bin/../lib/libstdc++.so.6 
    cp /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.29 /home/xx/anaconda3/bin/../lib 
    ln -s /home/xx/anaconda3/bin/../lib/libstdc++.so.6.0.29 /home/xx/anaconda3/bin/../lib/libstdc++.so.6
    ```
    Then
    `strings /home/xx/anaconda3/bin/../lib/libstdc++.so.6 | grep GLIBCXX_3.4.29`

## fused.so not found in cache
- Error: `fused.so` not found in cache
- Resolution
    Comiple with latest cuda driver and pytorch
