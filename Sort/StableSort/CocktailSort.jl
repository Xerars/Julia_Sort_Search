# Julia Sample : CocktailSort

function CocktailSort(A)
	isordered, lo, hi  = false, 1, length(A)
 
	while !isordered && hi > lo
		isordered = true
		
		for i=lo+1:hi
			if A[i] < A[i-1]
				A[i-1], A[i] = A[i], A[i-1]
				isordered = false
			end
		end
		
		hi -= 1
		
		if isordered || hi ≤ lo 
			break 
		end

		for i in hi:-1:lo+1
			if A[i-1] > A[i]
				A[i-1], A[i] = A[i], A[i-1]
				isordered = false
			end
		end
		lo += 1
	end
	return A
end

# Main Code
A = [16,586,1,31,354,43,3]
println(A)                      # Original Array
println(CocktailSort(A)) 				# Cocktail Sort Array