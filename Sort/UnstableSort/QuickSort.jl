# Julia Sample : QuickSort

function QuickSort(A)

	i,j = 1,length(A) 

	if j > i
		rndv = A[rand(i:j)]
    Left,Right = i,j
   
		while Left <= Right
			
			while A[Left] < rndv
				Left += 1
			end
			
			while A[Right] > rndv
				Right -= 1
			end
			
			if Left <= Right
				A[Left], A[Right] = A[Right], A[Left]
        Left += 1
        Right -= 1
      end
		end
		quicksort!(A,i,Right)
		quicksort!(A,Left,j)
	end
	return A
end

# Main Code
A = [16,586,1,31,354,43,3]
println(A)               # Original Array
println(QuickSort(A))    # Quick Sort Array