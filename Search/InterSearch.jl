# Julia Sample : InterSearch

function InterSearch(A,key)

	left,right,m = 1, length(A), 1

	while(left<=right)
		m=floor(Int,((right-left)*(key-A[left])/(A[right]-A[left])+left))
	
		if (m<left)||(m>right)
			break
		end

		if key<A[m]
			right=m-1
		elseif key>A[m]
			left=m+1
		else
			return m
		end

	end
	return -1
end

# Main Code
A = [1,3,16,31,43,354,586]	 # Already Arrange
println(A)                   # Original Array
println(InterSearch(A,43))   # Interpolation Search Array
println(InterSearch(A,354))  # Interpolation Search Array
println(InterSearch(A,3))    # Interpolation Search Array