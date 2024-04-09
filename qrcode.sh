#!/bin/bash

# Read the message from the command line argument
message="$QUERY_STRING"

# Generate QR code from the message and encode it as base64
qr_code_base64=$(qrencode "$message" -o - | base64 -w 0)

# Output HTTP header and HTML document with embedded QR code
echo "Content-type: text/html"
echo

cat <<EOF
<!DOCTYPE html>
<html>
    <head>
        <title>QR Code</title>
    </head>
    <body>
        <h1>QR Code for : $message</h1>
        <img src = "data:image/png;base64,$qr_code_base64" alt = "QR Code">
    </body>
</html>
EOF