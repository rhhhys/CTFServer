<?php
ob_start();
require_once "../../includes/template.php";

$command = "mosquitto_pub -h CTF-MQTT-Broker -t 'challenges/Train' -m 0"; 
$currentData = shell_exec($command);
?>

<!DOCTYPE html>
<html lang="en">
    <h1>refresh this page to publish a packet to the train topic</h1>
</html>