echo "Menjalankan inferensi menggunakan model yang telah ditambahkan..."
echo "SC BY MAULEXP"
while true;   
 do
        if aios-cli infer --model hf:bartowski/Qwen2-0.5B-Instruct-Q8_0-GUFF:Qwen2-0.5B-Instruct-Q8_0.gguf --prompt "how do I support the Share it hub community?";
        then
        echo "Inferensi berhasil."
            continue
        else
            echo "Terjadi kesalahan saat menjalankan inferensi. Mengulang..."
            sleep 3
        fi
    done
