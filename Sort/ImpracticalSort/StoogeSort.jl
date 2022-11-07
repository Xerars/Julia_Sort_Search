# Julia Sample : Stooge Sort

function StoogeSort(A,v1,v2)

	if A[v1]>A[v2]
		A[v1],A[v2] = A[v2],A[v1]
	end
	
	if (v2-v1+1)>2
		t = Int(round((v2-v1+1)/3))
				
		StoogeSort(A, v1  , v2-t)
    StoogeSort(A, v1+t, v2  )
    StoogeSort(A, v1  , v2-t)
	end
	return A
end


# Main Code
A = [16,586,1,31,354,43,3]
println(A)                           # Original Array
println(StoogeSort(A,1,length(A)))   # Stooge Sort Array