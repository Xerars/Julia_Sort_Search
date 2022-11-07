# Julia Sample : HeapSort

function HeapSort(A)
	function adjust(l,u)
		while true
			j = 2*l # 左子點
			if (j>u) # 代表沒有子點
				break
			end 
			
			if ((j+1) <= u) # 有右子點
				if (A[j] < A[j+1]) 
					j += 1 #比較左右子點
				end
			end
			
			if (A[j] > A[l]) #比較父點跟子點
				A[l], A[j]= A[j], A[l]
				l = j # 有交換
			else
				break # 沒交換跳出迴圈
			end
		end
	end

	n = length(A)
	for i in n:-1:1 # 建立max Heap
		adjust(i,n)
	end 
	
	#持續把第一個(最大)的元素最後一個交換
	A[n],A[1]=A[1],A[n] 
	for i in n-1:-1:1
		adjust(1,i)
		A[i],A[1]=A[1],A[i]
	end
	return A
end

# Main Code
A = [16,586,1,31,354,43,3]
println(A)                      # Original Array
println(HeapSort(A)) 			    	# Heap Sort Array

