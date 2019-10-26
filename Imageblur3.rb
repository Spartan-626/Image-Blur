class Image

    def initialize(array)
        @array = array
        @found_ones = []
    end

    def output_image
        x = 0
        y = 0
        @array.each do |row|
            puts row.join
        end
    end

    def blur(dist)
        find_ones
        x = 0
        y = 0
        @array.each do |row|
            x = 0
            row.each do |column|
                   @found_ones.each do |one|
                        if distance(one, [y, x]) <= dist
                            @array[y][x] = 1
                        end
                   end
                x = x + 1
            end
            y = y + 1
        end
    end

    def find_ones
        x = 0
        y = 0
        @array.each do |row|
            x = 0
            row.each do |column|
                if column == 1
                    @found_ones << [y, x]
                end
                x = x + 1
            end
            y = y + 1
        end
    end

    def distance(p1, p2)
        return (p2[1] - p1[1]).abs + (p2[0] - p1[0]).abs
    end
end

image = Image.new([
    [0, 0, 0, 0, 0, 0, 1, 0, 0, 0],
    [0, 1, 0, 0, 0, 1, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 1, 0, 0],
    [0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 1, 0, 0, 0, 0, 0, 1]
    ])
  image.output_image
  puts
  image.blur(2)
  image.output_image