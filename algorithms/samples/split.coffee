
swap = (arr, i, j) ->
  temp = arr[j]
  arr[j] = arr[i]
  arr[i] = temp

split = (arr, k) ->
  console.log "Input: ", arr
  l = 0
  r = arr.length - 1
  e = -1

  while(l <= r)
    if arr[r] > k
      r = r - 1
    else if arr[r] == k
      e = e + 1
      swap(arr, e, r)
      l = e + 1 if l <= e
    else
      swap(arr, l, r)
      l = l + 1

  console.log "Output: "
  console.log "r:", r, ", e:", e ,", l:", l
  console.log arr

split([4, 1, 6, 4, 3, 4, 2, 5, 8], 4)
split([4, 1, 6, 4, 4, 4, 2, 5, 8], 4)
split([4, 4, 4, 4, 4, 4, 4], 4)
split([4, 4, 4, 4, 4, 4, 4], 5)
