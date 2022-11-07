# Julia Sample : InsertSort
function InsertSort(A)

  for i=2:length(A)
    key = A[i]
    j=i-1
    while (j>=1)&&(A[j]>key)
      A[j+1]=A[j]
      j-=1
    end
    A[j+1]=key
  end
  return A
end

# Main Code
A = [16,586,1,31,354,43,3]
println(A)               # Original Array
println(InsertSort(A))   # Insert Sort Array