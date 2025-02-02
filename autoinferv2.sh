# Membaca file chat.txt
addressList=$(cat chat.txt)

# Mengubah isi file menjadi array
addressListArray=($(echo "$addressList" | tr '\n' ' '))

# Melakukan perulangan dari index 0
for ((index=0; index<${#addressListArray[@]}; index++)); do
  Wallet=${addressListArray[$index]}
  echo "Content Chat: $Wallet"

  # Menggunakan curl untuk mengirimkan POST request
  response=$(curl -X POST \
    https://api.hive.aios.network/v1/inference \
    -H 'accept: application/json' \
    -H 'Content-Type: application/json' \
    -d '{"messages": [{"role": "system", "content": "You are a helpful assistant."}, {"role": "user", "content": "'"$Wallet"'" }]}')

  # Menampilkan hasil response
  echo "Response: $(echo "$response" | jq -r '.choices[0].message.content')"
  echo "WAIT 5 DETIK"

  # Menunggu 5 detik
  sleep 5
done
