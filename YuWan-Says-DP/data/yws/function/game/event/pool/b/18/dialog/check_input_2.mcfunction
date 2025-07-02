
$data modify storage yws:event temp.guess."$(UUID)".answer set from storage yws:event guessup_answer

$execute if data storage yws:event {temp:{guess:{"$(UUID)":{answer:"籽岷",up_num:0}}}} run function yws:game/event/finish_2
$execute if data storage yws:event {temp:{guess:{"$(UUID)":{up_num:0}}}} unless data storage yws:event {temp:{guess:{"$(UUID)":{answer:"籽岷"}}}} run tellraw @s {text: "答错了，是籽岷"}

$execute if data storage yws:event {temp:{guess:{"$(UUID)":{answer:"一条鱼丸",up_num:1}}}} run function yws:game/event/finish_2
$execute if data storage yws:event {temp:{guess:{"$(UUID)":{up_num:1}}}} unless data storage yws:event {temp:{guess:{"$(UUID)":{answer:"一条鱼丸"}}}} run tellraw @s {text: "答错了，是一条鱼丸"}


$data remove storage yws:event temp.guess."$(UUID)"

