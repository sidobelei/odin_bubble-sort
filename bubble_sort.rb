def bubble_sort(array)
    new_array = []
    sorted = false
    while sorted == false do
        current_element = array[0]
        next_element = 0
        difference = 0
        array.each_with_index do |element, index|
            if index + 1 < array.length
                next_element = array[index + 1]
                difference = current_element - next_element
                if difference >= 1
                    new_array.push(next_element)
                elsif difference <= 0
                    new_array.push(current_element)
                    current_element = next_element
                end
            else
                new_array.push(current_element)
            end
        end
        new_array.each_with_index do |element, index|
            if new_array[index + 1] == nil
                break
            end
            if element <= new_array[index + 1]
                sorted = true
            else
                sorted = false
                array = new_array
                new_array = []
                break
            end
        end
    end
    p new_array
end

bubble_sort([4,3,78,2,0,2])