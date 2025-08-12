#!/bin/bash

# Setup script for Vercel environment variables
# Run this script after installing Vercel CLI and logging in

echo "🚀 Setting up environment variables for Vercel deployment..."
echo ""

# Check if vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI is not installed. Please install it first:"
    echo "npm install -g vercel"
    exit 1
fi

echo "📝 Please provide the following API keys:"
echo ""

# Prompt for required variables
read -p "E2B API Key (required): " E2B_API_KEY
read -p "Firecrawl API Key (required): " FIRECRAWL_API_KEY
read -p "Your deployed app URL (e.g., https://your-app.vercel.app): " NEXT_PUBLIC_APP_URL

echo ""
echo "🤖 AI Provider API Keys (at least one required):"
read -p "OpenAI API Key (optional): " OPENAI_API_KEY
read -p "Anthropic API Key (optional): " ANTHROPIC_API_KEY
read -p "Groq API Key (optional): " GROQ_API_KEY
read -p "Mistral API Key (optional): " MISTRAL_API_KEY

echo ""
echo "🔧 Setting environment variables..."

# Set required variables
if [ ! -z "$E2B_API_KEY" ]; then
    vercel env add E2B_API_KEY production <<< "$E2B_API_KEY"
    vercel env add E2B_API_KEY preview <<< "$E2B_API_KEY"
    vercel env add E2B_API_KEY development <<< "$E2B_API_KEY"
fi

if [ ! -z "$FIRECRAWL_API_KEY" ]; then
    vercel env add FIRECRAWL_API_KEY production <<< "$FIRECRAWL_API_KEY"
    vercel env add FIRECRAWL_API_KEY preview <<< "$FIRECRAWL_API_KEY"
    vercel env add FIRECRAWL_API_KEY development <<< "$FIRECRAWL_API_KEY"
fi

if [ ! -z "$NEXT_PUBLIC_APP_URL" ]; then
    vercel env add NEXT_PUBLIC_APP_URL production <<< "$NEXT_PUBLIC_APP_URL"
    vercel env add NEXT_PUBLIC_APP_URL preview <<< "$NEXT_PUBLIC_APP_URL"
    vercel env add NEXT_PUBLIC_APP_URL development <<< "http://localhost:3000"
fi

# Set optional AI provider keys
if [ ! -z "$OPENAI_API_KEY" ]; then
    vercel env add OPENAI_API_KEY production <<< "$OPENAI_API_KEY"
    vercel env add OPENAI_API_KEY preview <<< "$OPENAI_API_KEY"
    vercel env add OPENAI_API_KEY development <<< "$OPENAI_API_KEY"
fi

if [ ! -z "$ANTHROPIC_API_KEY" ]; then
    vercel env add ANTHROPIC_API_KEY production <<< "$ANTHROPIC_API_KEY"
    vercel env add ANTHROPIC_API_KEY preview <<< "$ANTHROPIC_API_KEY"
    vercel env add ANTHROPIC_API_KEY development <<< "$ANTHROPIC_API_KEY"
fi

if [ ! -z "$GROQ_API_KEY" ]; then
    vercel env add GROQ_API_KEY production <<< "$GROQ_API_KEY"
    vercel env add GROQ_API_KEY preview <<< "$GROQ_API_KEY"
    vercel env add GROQ_API_KEY development <<< "$GROQ_API_KEY"
fi

if [ ! -z "$MISTRAL_API_KEY" ]; then
    vercel env add MISTRAL_API_KEY production <<< "$MISTRAL_API_KEY"
    vercel env add MISTRAL_API_KEY preview <<< "$MISTRAL_API_KEY"
    vercel env add MISTRAL_API_KEY development <<< "$MISTRAL_API_KEY"
fi

echo ""
echo "✅ Environment variables have been set!"
echo ""
echo "📋 Summary of what was configured:"
echo "- E2B_API_KEY: ${E2B_API_KEY:+✓}" 
echo "- FIRECRAWL_API_KEY: ${FIRECRAWL_API_KEY:+✓}"
echo "- NEXT_PUBLIC_APP_URL: ${NEXT_PUBLIC_APP_URL:+✓}"
echo "- OPENAI_API_KEY: ${OPENAI_API_KEY:+✓}"
echo "- ANTHROPIC_API_KEY: ${ANTHROPIC_API_KEY:+✓}"
echo "- GROQ_API_KEY: ${GROQ_API_KEY:+✓}"
echo "- MISTRAL_API_KEY: ${MISTRAL_API_KEY:+✓}"
echo ""
echo "🚀 You can now deploy with: vercel --prod"
echo ""
echo "💡 To view or edit environment variables later:"
echo "   vercel env ls"
echo "   vercel env rm <name>"