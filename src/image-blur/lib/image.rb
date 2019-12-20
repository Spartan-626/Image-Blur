class Image
    attr_accessor :data

    def initialize(data)
        @data = data
        @found_ones = []
    end

    def blur
        find_ones
        x = 0
        y = 0
        @data.each do |row|
            x = 0
            row.each do |column|
                   @found_ones.each do |one|
                        if distance(one, [y, x]) == 1
                            @data[y][x] = 1
                        end
                   end
                x = x + 1
            end
            y = y + 1
        end
        return Image.new(@data)
    end

    def find_ones
        x = 0
        y = 0
        @data.each do |row|
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
