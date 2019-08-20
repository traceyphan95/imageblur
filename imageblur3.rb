class Image

  def initialize(array)
    @image = array
  end

  def output_image
    @image.each do |row|
      puts row.join
    end
  end

  def blur!(distance=2)
    distance.times do
      blur_coords!
    end
  end

  private

    def blur_coords!
      blur_coords = []
      @image.each_with_index do |row, row_number|
        row.each_with_index do |pixel, column_number|
          blur_coords << [row_number, column_number] if x == 1
        end
      end

      blur_coords.each do |coord|
        row_num = coord[0]
        col_num = coord[1]
        @image[row_num][col_num + 1] = 1 if coord[1] + 1 <= @image[coord[0]].length - 1
        @image[row_num]][col_num - 1] = 1 if coord[1] - 1 >= 0
        @image[row_num] + 1][col_num] = 1 if coord[0] + 1 <= @image.length - 1
        @image[row_num] - 1][col_num] = 1 if coord[0] - 1 >= 0
      end
    end

end

image = Image.new([
  [0, 0, 0, 0,],
  [0, 1, 0, 0,],
  [0, 0, 0, 1,],
  [0, 0, 0, 0,]
])
image.blur!(2)
image.output_image