files=(
  "$HOME/.cargo/env"
  "$HOME/.ghcup/env"
)

for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        . "$file"
    else
        echo "Skipping source for: $file"
    fi
done
