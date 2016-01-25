# 6. Implement question #5 again in Ruby in two ways:
#     a. Using a loop
#     b. Using recursion
#    Benchmark the two solutions (include your code for the benchmarking). Which one of your solutions is faster?

#[ANSWER]: recursion is faster. Please see the following result from benchmark

# user     system      total        real
# =============even_num_loop==============
# 1.620000   0.010000   1.630000 (  1.629930)
# user     system      total        real
# =============even_num_recursion==============
# 1.300000   0.010000   1.310000 (  1.306403)

require "benchmark"

def even_num_loop(n)
  counter = -2;
  10.times.map{counter+=2}
end

def even_num_recursion(n, arr=[])
  if n == 0
      arr
  else
    arr.unshift(2*n-2)
    even_num_recursion(n-1, arr)
  end
end


  Benchmark.bm do|x|
    puts "=============even_num_loop=============="
    x.report do
      1000000.times {even_num_loop(8)}
    end
  end


  Benchmark.bm do|x|
    puts "=============even_num_recursion=============="

    x.report do
      1000000.times {even_num_recursion(8)}
    end
  end
