export TMPDIR="$XDG_RUNTIME_DIR/app/$FLATPAK_ID"

FLAGS=(
  # Enables out-of-process rasterization (better isolation, can improve performance).
  --enable-oop-rasterization
  # Enables GPU-accelerated 2D canvas rendering.
  --enable-accelerated-2d-canvas
  # Enables TCP Fast Open (saves a round trip on TCP connection startup).
  --enable-tcp-fastopen
  # Enables V8 code caching (improves startup performance).
  --v8-cache-options=code
  # Aggressively caches V8 data for offline cache usage.
  --v8-cache-strategies-for-cache-storage=aggressive
  # Enables zero-copy rendering from GPU memory to display.
  --enable-zero-copy
  # Enables zero-copy paths in UI compositing.
  --ui-enable-zero-copy
)

exec zypak-wrapper /app/select/select "${FLAGS[@]}" "$@"
