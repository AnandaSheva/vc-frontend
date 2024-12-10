# Use the official Node.js image as the base image
FROM node:18-alpine

<<<<<<< HEAD
FROM base AS deps

RUN apk add --no-cache libc6-compat

=======
# Set the working directory
>>>>>>> 8215860bd138ed16cb79d15bc0c907e38a802386
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

<<<<<<< HEAD
RUN npm ci

FROM base AS builder

WORKDIR /app

COPY --from=deps /app/node_modules ./node_modules

=======
# Install dependencies
RUN npm install

# Copy the rest of the application code
>>>>>>> 8215860bd138ed16cb79d15bc0c907e38a802386
COPY . .

# Build the Next.js application
RUN npm run build

<<<<<<< HEAD
FROM base AS runner

WORKDIR /app

ENV NODE_ENV production

ENV NEXT_TELEMETRY_DISABLED 1

RUN addgroup --system --gid 1001 nodejs

RUN adduser --system --uid 1001 nextjs

COPY --from=builder /app/public ./public

COPY --from=builder --chown=nextjs:nodejs /app/.next ./.next

COPY --from=builder /app/node_modules ./node_modules

COPY --from=builder /app/package.json ./package.json

USER nextjs

=======
# Expose the port the app runs on
>>>>>>> 8215860bd138ed16cb79d15bc0c907e38a802386
EXPOSE 3000

# Start the Next.js application
CMD ["npm", "start"]
# FROM node:18-alpine AS base

# FROM base AS deps
# RUN apk add --no-cache libc6-compat
# WORKDIR /app

# COPY package*.json ./
# RUN npm install

# FROM base AS builder
# WORKDIR /app
# COPY --from=deps /app/node_modules ./node_modules
# COPY . .

# ENV NEXT_TELEMETRY_DISABLED 1

# RUN npm run build

# FROM base AS runner
# WORKDIR /app

# ENV NODE_ENV production
# ENV NEXT_TELEMETRY_DISABLED 1

# RUN addgroup --system --gid 1001 nodejs
# RUN adduser --system --uid 1001 nextjs

# COPY --from=builder /app/public ./public
# COPY --from=builder --chown=nextjs:nodejs /app/.next ./.next
# COPY --from=builder /app/node_modules ./node_modules
# COPY --from=builder /app/package.json ./package.json

# USER nextjs

# EXPOSE 3000

# ENV PORT 3000

# CMD ["npm", "start"]
