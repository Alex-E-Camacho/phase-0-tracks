# --- Release 0 ---
# loop through the array
# match number we want with number in array
# if number matches, find index


def search_array(arr, num)

	arr.length.times do |x|
		if arr[x] == num
			puts x
		end
	end


end

# --- Release 1 ---
# need loop until original array.length == specified number
# add last two number of array and push to end of array

def fib(num)
	arr = [0,1]
	array_ref = 0

	while arr.length < num
		sum = arr[array_ref] + arr[array_ref + 1]

		arr[array_ref + 2] = sum

		array_ref += 1
	end

	arr
end

fib(100)

# --- Release 2 ---
# iteration sort
#method will take array input

# Takes first first number in sequence and compare to all numbers
# left of itself, one-by-one.

# if self is less than compared number, move self left to compared number
# in the sequence.

# If self is greater than compared number, place number right of compared
# number in sequence.

# Repeat with next number in the sequence.

arr = [3, 7, 4, 9, 5, 2, 6, 1]

def iteration_sort(arr)
	idx = 1
	#p arr
	while idx < arr.length
		compare_idx = idx

		until compare_idx == 0
			if arr[compare_idx] <= arr[compare_idx - 1]
				arr[compare_idx - 1], arr[compare_idx] = arr[compare_idx], arr[compare_idx - 1] #swap
			#	p [compare_idx, compare_idx - 1]
			end
			compare_idx -= 1
		end
		#p arr
		idx += 1

	end

	arr

end

iteration_sort(arr)