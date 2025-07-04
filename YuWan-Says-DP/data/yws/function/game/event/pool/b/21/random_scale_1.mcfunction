
$data modify storage yws:event temp.sb."$(UUID)" set value {scale:1}
$execute store result storage yws:event temp.sb."$(UUID)".scale double 0.01 run random value 1..100

$function yws:game/event/pool/b/21/random_scale_2 with storage yws:event temp.sb."$(UUID)"