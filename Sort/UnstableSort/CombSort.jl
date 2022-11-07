# Julia Sample : CombSort

function CombSort(A)
	gap,swapped = length(A),1

	while (gap>1) || (swapped==1)
		gap = floor(Int,gap/1.25)
		swapped=0
		for i=1:(length(A)-gap)
			if A[i]>A[i+gap]
				A[i],A[i+gap] = A[i+gap],A[i]
				swapped=1
			end
		end
	end
	return A
end


# Main Code
A = [16,586,1,31,354,43,3]
println(A)               # Original Array
println(CombSort(A))     # Comb Sort Array