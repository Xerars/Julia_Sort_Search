# Julia Sample : BinarySearch

function BinarySearch(A,Key)
	left,right = 1,length(A)

	while(left<=right)
		mid=left+floor(Int,((right-left)/2))
	
		if A[mid]==Key
			return mid
		elseif Key<A[mid]
			right = mid-1
		elseif Key>A[mid]
			left = mid+1
		end
	end
	return -1
end

# Main Code
A = [1,3,16,31,43,354,586]   # Already Arrange
println(A)                   # Original Array
println(BinarySearch(A,43))  # BinarySearch Search Array
println(BinarySearch(A,354)) # BinarySearch Search Array
println(BinarySearch(A,3))   # BinarySearch Search Array