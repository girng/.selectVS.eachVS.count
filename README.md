# .selectVS.eachVS.count

Benchmark to test the performance difference between Hash.select, Hash.values.count, and the old fashion .each iterator

### Usage
 - `crystal selectvseachvscount.cr --release`

### Current Results:

 - ![](https://i.gyazo.com/3e7a6d9e83946eac49552f8bb514ed36.png)

### Final Thoughts
 - Looks like the old fashion .each iterator is a beast! Assuming the benchmark is not skewed and correct (please submit a new PR to fix)
 
### Contributing
 - This is still a work in progress, if you can enhance this benchmark please submit a PR or issue, thanks!
 - Thanks for stopping by!
 
 
