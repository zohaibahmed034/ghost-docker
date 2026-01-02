# Use official Ghost image
FROM 190219743432.dkr.ecr.ap-south-1.amazonaws.com/ghost-base:6-alpine

# Set environment variables
ENV url=http://localhost:2368
ENV NODE_ENV=production

# Expose Ghost default port
EXPOSE 2368

# Set content directory
VOLUME /var/lib/ghost/content

# Start Ghost
CMD ["node", "current/index.js"]
