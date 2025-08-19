# 1. Use an image that already has Node 20 + n8n pre-installed
FROM n8nio/n8n:1.48.0       

# 2. Pick a working folder
WORKDIR /data               

# 3. Copy the file whose name contains spaces  ⬇️ notice the [ ] and quotes
COPY ["My workflow 4.json", "./My workflow 4.json"]

# 4. Run the workflow once and exit
CMD ["n8n", "execute", "--file", "My workflow 4.json"]
