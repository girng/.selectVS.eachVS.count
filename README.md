# .selectVS.eachVS.count

Benchmark to test the performance difference between Hash.select, Hash.values.count, and the old fashion .each iterator

### Usage
 - `crystal selectvseachvscount.cr --release`

### Current Results:

 - ![](https://i.gyazo.com/24a6d15f6a0a4e5e846f19ac0ab89f5a.png)

### Final Thoughts
 - Looks like the old fashion .each iterator and .count are beasts! Assuming the benchmark is not skewed and correct (please submit a new PR to fix)
 - Also seems like, sometimes developers can fall into the trap of using `.select`. However, if you just need to rely on obtaining the size of elements, `.count`, and `.each` are much faster.
 
### Contributing
 - This is still a work in progress, if you can enhance this benchmark please submit a PR or issue, thanks!
 - Thanks for stopping by!
 
 
