<?php
    // The URL to your Webhook.
    $webhookurl = "https://discordapp.com/api/webhook/000000000000000000/aaaaaaaaaaaa-aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";

    // The password you set.
    $password = "super_secret_password";

    // And thats it. Just do the lua config and thats it.

    // DON'T TOUCH THE REST OF THIS FILE.


    if(!isset($_POST['password'])) {
        die("Password not set.");
    }
    if($_POST['password'] != $password) {
        die("Incorrect password.");
    }

    if(!isset($_POST['title'])) {
        die("Title not set.");
    }
    if(!isset($_POST['content'])) {
        die("Content not set.");
    }
    if(!isset($_POST['module_name'])) {
        die("Module Name not set.");
    }
    if(!isset($_POST['color'])) {
        die("Color not set.");
    }

    $hookObject = json_encode([
        "embeds" => [
            [
                "title" => $_POST['title'],
                "type" => "rich",
                "description" => $_POST['content'],
                "color" => hexdec($_POST['color']),
                "timestamp" => date("c"),
                "footer" => [
                    "text" => $_POST['module_name']
                ]
            ]
        ]
    ], JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE );
    $ch = curl_init();
    curl_setopt_array($ch, [
        CURLOPT_URL => $webhookurl,
        CURLOPT_POST => true,
        CURLOPT_POSTFIELDS => $hookObject,
        CURLOPT_HTTPHEADER => [
            "Length" => strlen($hookObject),
            "Content-Type" => "application/json"
        ]
    ]);
    $response = curl_exec($ch);
    curl_close($ch);
    die("Log successfully sent.")
?>