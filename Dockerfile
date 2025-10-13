# Stage 1: install dependencies
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
# Install production deps only (omit dev)
RUN npm ci --omit=dev
COPY . .

# Stage 2: runtime (small image)
FROM node:18-alpine AS runtime
WORKDIR /app

# Create a non-root user
RUN addgroup -S app && adduser -S app -G app

# Copy only runtime bits
COPY --from=build /app /app

# Set ownership
RUN chown -R app:app /app

USER app
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node", "server.js"]

