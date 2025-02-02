echo "SC BY MAULEXP"
model="hf:afrideva/Tiny-Vicuna-1B-GGUF:tiny-vicuna-1b.q4_k_m.gguf"
# Membaca file chat.txt
while read -r line; do
  # Menjalankan perintah aios-cli infer untuk setiap argument
  if aios-cli infer --model $model --prompt "$line";
   then
    echo "Inferensi berhasil."
  fi
done < chat.txt
