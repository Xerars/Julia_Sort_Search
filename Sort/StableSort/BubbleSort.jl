# Julia Sample : Bubble Sort
function BubbleSort(A)
  n = length(A)
  for i = 1:n
    for j = 1:(n-i)
      if(A[j]>A[j+1])
        A[j+1],A[j] = A[j],A[j+1]
      end
    end
  end
  return A
end

# Main Code
A = [16,586,1,31,354,43,3]
println(A)               # Original Array
println(BubbleSort(A))   # Bubble Sort Array