class Image

    def initialize(array)
        @array = array
    end

    def output_image
        x = 0
        y = 0
        @array.each do |row|

# This is how I iterated over the elements in the array. 

#            x = 0
#            row.each do |column|
#                puts @array[y][x]
#                x = x + 1
#            end
#            y = y + 1
        puts row.join


        end
    end

end

image = Image.new([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0]
  ])
  image.output_image