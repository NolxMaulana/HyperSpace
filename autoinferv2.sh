echo "SC BY MAULEXP"
model="hf:bartowski/Qwen2-0.5B-Instruct-Q8_0-GUFF:Qwen2-0.5B-Instruct-Q8_0.gguf"
# Membaca file chat.txt
while read -r line; do
  # Menjalankan perintah aios-cli infer untuk setiap argument
  if aios-cli infer --model $model --prompt "$line";
   then
    echo "Inferensi berhasil."
  fi
done < chat.txt
