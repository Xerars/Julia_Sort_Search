# Julia Sample : BogoSort

function inOrder(A)
	for i=1:length(A)-1
		if A[i]>A[i+1]
			return false
		end
	end
	return true
end

function BogoSort(A)
	while (!inOrder(A))
		# Shuffle
		for i=1:length(A)
			r = rand(1:length(A))
			A[i],A[r]=A[r],A[i]
		end
	end
	return A
end



# Main Code
A = [16,586,1,31,354,43,3]
println(A)               # Original Array
println(BogoSort2(A))     # Bogo Sort Array


