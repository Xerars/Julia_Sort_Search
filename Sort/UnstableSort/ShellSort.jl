# Julia Sample : ShellSort

function ShellSort(A)
	inc = div(length(A), 2)
	
	while inc > 0
		for i in inc+1:length(A)
			j = i
			tmp = A[i]

			while j > inc && A[j - inc] > tmp
				A[j] = A[j-inc]
        j -= inc
      end
      
			A[j] = tmp
    end
    
		if inc == 2
			inc = 1
		else
			inc = floor(Int, inc * 5.0 / 11)
		end
	end
	return A
end

# Main Code
A = [16,586,1,31,354,43,3]
println(A)               # Original Array
println(ShellSort(A))    # Shell Sort Array