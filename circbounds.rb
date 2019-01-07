
@circles = []

def input
  puts 'Enter a set of circles, one per line, as a comma separated list containing the center coordinates and radius.'
  puts 'Enter a blank line when finished.'

  input = gets.chomp
  while(input != "") do
    @circles << input.split
    input = gets.chomp
  end
end

def calc_bounds circ_arr

  #x_bounds = ["", ""]
  #y_bounds = ["", ""]
  xy_min = [0, 0]
  xy_max = [0, 0]
  circ_arr.each do |circle|
    curr_x = circle[0].to_i
    curr_y = circle[1].to_i
    curr_r = circle[2].to_i
    curr_xbounds = [curr_x - curr_r, curr_x + curr_r]
    curr_ybounds = [curr_y - curr_r, curr_y + curr_r]
    #p curr_xbounds
    #p curr_ybounds
    if (curr_xbounds[0] < xy_min[0] || xy_min[0] == 0)
      xy_min[0] = curr_xbounds[0]
    end
    if (curr_xbounds[1] > xy_max[0] || xy_max[0] == 0)
      xy_max[0] = curr_xbounds[1]
    end

    if (curr_ybounds[0] < xy_min[1] || xy_min[1] == 0)
      xy_min[1] = curr_ybounds[0]
    end
    if (curr_ybounds[1] > xy_max[1] || xy_max[1] == 0)
      xy_max[1] = curr_ybounds[1]
    end
  end
  p xy_min
  p xy_max
  points = getPoints xy_min, xy_max
end

def getPoints min_arr, max_arr
  p1 = min_arr
  p2 = [min_arr[0], max_arr[1]]
  p3 = max_arr
  p4 = [max_arr[0], min_arr[1]]
  pts_arr = [p1, p2, p3, p4]
end

input
p @circles
pts = calc_bounds @circles
p pts
