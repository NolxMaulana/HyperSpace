echo "Menjalankan inferensi menggunakan model yang telah ditambahkan..."
read -p "Apakah Anda ingin menjalankan inferensi? (y/n): " user_choice

if [[ "$user_choice" == "y" || "$user_choice" == "Y" ]]; then
    do
        if aios-cli infer --model hf:afrideva/Tiny-Vicuna-1B-GGUF:tiny-vicuna-1b.q4_k_m.gguf --prompt "how do I support the Share it hub community?"; then
            echo "Inferensi berhasil."
            break
        else
            echo "Terjadi kesalahan saat menjalankan inferensi. Mengulang..."
            sleep 3
        fi
    done
