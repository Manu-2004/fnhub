FROM rust:latest

WORKDIR /app

# Copy everything
COPY . .

# Build in release mode
RUN cargo build --release

# Run the binary (change 'fnhub' if your actual binary name is different)
CMD ["./target/release/server"]


EXPOSE 8000
