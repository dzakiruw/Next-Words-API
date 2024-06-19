# Gunakan image base yang sudah diatur dengan python dan dependencies
FROM python:3.10-slim

# Set direktori kerja di dalam container
WORKDIR /app

# Copy semua file dari direktori lokal ke direktori kerja di container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port yang akan digunakan oleh aplikasi Flask
EXPOSE 8080

# Jalankan aplikasi
CMD ["python", "api.py"]
