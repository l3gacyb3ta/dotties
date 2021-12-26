
wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    echo "🌐"
else
    echo "💔"
fi
