
$data modify storage yws:event temp.guess."$(UUID)".count set from storage yws:event guessup.[$(up_num)].count

$function yws:game/event/pool/b/18/dialog/select_up_2 with storage yws:event temp.guess."$(UUID)"
