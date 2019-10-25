# Build a recursive method to find the nth digit
# Build an iterative method to find the nth digit
# Use the Benchmark module to test your solutions' performance

# recursive
def recursive_fib(n)
  if n<2
      return n
  else
    return (recursive_fib(n-1)+recursive_fib(n-2))
  end      
end

# iterative
def iterative_fib(n)
 terms = [0,1]
 i = 2
  while i<=n
    terms.append(terms[i-1]+terms[i-2])
    i = i + 1
  end   
 return terms[n]
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end