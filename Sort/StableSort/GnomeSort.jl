# Julia Sample : GnomeSort

function GnomeSort(A)
	pos = 1
	while pos<length(A)+1
		if (pos==1) || (A[pos]>=A[pos-1])
			pos+=1
		else
			A[pos],A[pos-1] = A[pos-1],A[pos] 
			pos-=1
		end
	end
	return A
end

# Main Code
A = [16,586,1,31,354,43,3]
println(A)              # Original Array
println(GnomeSort(A))   # Gnome Sort Array