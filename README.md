Let’s create a simple QRCode generation api.  
Start by installing the qrencode program on your Linux server
sudo apt install qrencode

To create a qrencode for the string ‘Hello World’ and output it’s base64 version to stdout, you would use the following command:

qrencode 'hello' -o - | base64 -w 0

