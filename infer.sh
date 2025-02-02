# Melakukan perulangan untuk beberapa file
for file in chat.txt; do
  # Menjalankan perintah aios-cli infer
  aios-cli infer --model hf:afrideva/Tiny-Vicuna-1B-GGUF:tiny-vicuna-1b.q4_k_m.gguf --prompt + $file
  # Menunggu 5 detik
  sleep 5
done
