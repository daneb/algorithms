def print_chessboard(n,m)
    for i in (0..m - 1) do
        for j in (0..n - 1) do
           print (j % 2 == 0 ? $color2 : $color1)
        end
        swop
    end
end

def swop
    $color1 == 0 ? $color1 = 1 : $color1 = 0
    $color2 == 0 ? $color2 = 1 : $color2 = 0
    puts
end

$color1 = 1
$color2 = 0

input = "BMC_TEST_INPUT_MAGIC"
n, m = input.split(",")
print_chessboard(n.to_i,m.to_i)
