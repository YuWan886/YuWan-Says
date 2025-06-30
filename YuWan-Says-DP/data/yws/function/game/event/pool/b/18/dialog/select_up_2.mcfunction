
$execute store result storage yws:event temp.guess."$(UUID)".text int 1 run random value 1..$(count)

$function yws:game/event/pool/b/18/dialog/select_up_3 with storage yws:event temp.guess."$(UUID)"