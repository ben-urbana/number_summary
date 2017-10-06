
def mean (list)
	amount = 0.0
	total = 0.0
	list.each do |number|
		total = total + number
		amount += 1
	end
	mean = total / amount
	return mean
end

def median (list)
	median = 0.0
	ordered = []
	ordered = list.sort
	ordered.each_with_index do |number, i|
		if ordered.length % 2 != 0 
			median = ordered[ordered.length / 2]
		else
			average = (ordered[ordered.length / 2 - 1]) + (ordered[ordered.length / 2])
			median = average / 2.0
		end
	end
	return median
end

def standard_deviation (list)
	deviation = 0.0
	variants = []
	variance = 0
	mean = mean(list)
	list.each do |number|
		variants.push((number - mean) * (number - mean))
	end
	average = mean(variants)
	deviation = Math.sqrt(average)
	return deviation
end

def mode (list)
	times = []
	most_times = 0
	list.each do |number|
		if (list.count(number)) > most_times && times.include?(number) == false
			times = []
			most_times = list.count(number)
			times.push(number)
		elsif (list.count(number)) == most_times && times.include?(number) == false
			most_times = list.count(number)
			times.push(number)
		end
	end
	return times
end

def longest_run (list)
	length = 1
	holder = 0
	list.each do |number|
		if holder == 0
			holder = number
		end
		if number == (holder + 1)
			length += 1
		else
			holder = number
		end
	end
	return length
end

