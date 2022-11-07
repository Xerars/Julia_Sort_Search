# Julia Sample: LinearSearch

function LinearSearch(A,Key)
	for i=1:length(A)
		if A[i]==Key
			return i		
		end
	end
	return -1
end


# Main Code
A = [16,586,1,31,354,43,3]
println(A)              				 # Original Array
println(LinearSearch(A,354))     # LinearSearch Array
println(LinearSearch(A,43))      # LinearSearch Array
println(LinearSearch(A,87))      # LinearSearch Array