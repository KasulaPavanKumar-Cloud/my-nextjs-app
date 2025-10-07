# -------------------------
# 1. Build Stage
# -------------------------
FROM node:20-alpine AS builder

WORKDIR /app

# Copy package files first
COPY package*.json ./

RUN npm install

# Copy the rest of the app
COPY . .

# Build the Next.js app for production
RUN npm run build

# -------------------------
# 2. Production Stage
# -------------------------
FROM node:20-alpine AS runner

WORKDIR /app

COPY --from=builder /app/package*.json ./
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/public ./public
COPY --from=builder /app/node_modules ./node_modules

# Optional: copy config only if exists
# COPY --from=builder /app/next.config.js ./next.config.js

EXPOSE 3000

CMD ["npm", "start"]

