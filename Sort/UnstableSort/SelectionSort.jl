# Julia Sample:SelectionSort

function SelectionSort(A)
	for i=1:length(A)
		min=i
		for j=i+1:length(A)
			min=A[j]<A[min]?j:nothing   # Get Min
			if min!=i
        A[min],A[i]=A[i],A[min]		# Swap
			end
		end
	end
	return A
end



# Main Code
A = [16,586,1,31,354,43,3]
println(A)              		# Original Array
println(SelectionSort(A))   # Selection Sort Array