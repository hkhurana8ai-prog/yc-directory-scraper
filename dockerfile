# use the faster image that already has n8n + Node 20
FROM n8nio/n8n:1.48.0   

WORKDIR /data

# ⬇️  note the square brackets and quotes around the filename
COPY ["workflow 4.json", "./workflow 4.json"]

# run the flow (wrap the file name in quotes)
CMD ["n8n", "execute", "--file", "workflow 4.json"]
