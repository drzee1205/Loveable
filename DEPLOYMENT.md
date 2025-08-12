# Deployment Guide for Open Loveable

This guide will help you deploy Open Loveable to Vercel.

## Prerequisites

Before deploying, make sure you have:

1. **Vercel Account**: Sign up at [vercel.com](https://vercel.com)
2. **API Keys**: Obtain API keys from the AI providers you want to use
3. **E2B API Key**: Sign up at [e2b.dev](https://e2b.dev) for code sandbox functionality

## Required API Keys

### AI Providers (at least one required)
- **OpenAI**: Get your API key from [OpenAI Platform](https://platform.openai.com/api-keys)
- **Anthropic**: Get your API key from [Anthropic Console](https://console.anthropic.com/)
- **Groq**: Get your API key from [Groq Console](https://console.groq.com/keys)
- **Mistral**: Get your API key from [Mistral Console](https://console.mistral.ai/)

### Required Services
- **E2B**: Get your API key from [E2B Console](https://e2b.dev/) - Required for code execution sandbox

## Deployment Steps

### Method 1: Deploy with Vercel CLI

1. **Install Vercel CLI**:
   ```bash
   npm install -g vercel
   ```

2. **Login to Vercel**:
   ```bash
   vercel login
   ```

3. **Deploy from project root**:
   ```bash
   vercel
   ```

4. **Set environment variables**:
   ```bash
   # Set your environment variables
   vercel env add GROQ_API_KEY
   vercel env add ANTHROPIC_API_KEY
   vercel env add OPENAI_API_KEY
   vercel env add MISTRAL_API_KEY
   vercel env add E2B_API_KEY
   vercel env add NEXT_PUBLIC_APP_URL
   ```

### Method 2: Deploy via GitHub Integration

1. **Push to GitHub**:
   ```bash
   git add .
   git commit -m "Prepare for Vercel deployment"
   git push origin main
   ```

2. **Import on Vercel**:
   - Go to [Vercel Dashboard](https://vercel.com/dashboard)
   - Click "New Project"
   - Import your GitHub repository
   - Vercel will auto-detect Next.js configuration

3. **Configure Environment Variables**:
   In your Vercel project settings, add the following environment variables:

   ```
   GROQ_API_KEY=your_groq_api_key_here
   ANTHROPIC_API_KEY=your_anthropic_api_key_here
   OPENAI_API_KEY=your_openai_api_key_here
   MISTRAL_API_KEY=your_mistral_api_key_here
   E2B_API_KEY=your_e2b_api_key_here
   NEXT_PUBLIC_APP_URL=https://your-project-name.vercel.app
   ```

   Optional:
   ```
   ANTHROPIC_BASE_URL=https://api.anthropic.com/v1
   ```

## Environment Variables Setup

### In Vercel Dashboard:
1. Go to your project settings
2. Navigate to "Environment Variables"
3. Add each variable for Production, Preview, and Development environments

### Variable Descriptions:

- `NEXT_PUBLIC_APP_URL`: Your deployed app URL (e.g., https://your-app.vercel.app)
- `GROQ_API_KEY`: API key from Groq Console
- `ANTHROPIC_API_KEY`: API key from Anthropic Console
- `OPENAI_API_KEY`: API key from OpenAI Platform
- `MISTRAL_API_KEY`: API key from Mistral Console
- `E2B_API_KEY`: API key from E2B Console (required)
- `ANTHROPIC_BASE_URL`: Anthropic API base URL (optional, defaults to official API)

## Supported AI Models

After deployment, the following models will be available:

### OpenAI
- GPT-5 (`openai/gpt-5`)

### Anthropic
- Claude Sonnet 4 (`anthropic/claude-sonnet-4-20250514`)

### Mistral
- Mistral Large (`mistral/mistral-large-latest`)
- Mistral Small (`mistral/mistral-small-latest`) 
- Codestral (`mistral/codestral-latest`)

### Groq
- Various models (default fallback)

### Moonshot AI
- Kimi K2 Instruct (`moonshotai/kimi-k2-instruct`)

## Configuration Notes

- The app uses Next.js 15 with App Router
- API routes have a 5-minute timeout for complex code generation
- E2B sandboxes are provisioned for 15 minutes by default
- The app supports real-time streaming for AI responses

## Troubleshooting

### Common Issues:

1. **API Key Errors**: Ensure all required environment variables are set correctly
2. **E2B Sandbox Issues**: Check E2B API key and account limits
3. **Model Not Found**: Verify API keys for the specific AI provider
4. **Timeout Errors**: Large code generation requests may take time; this is normal

### Support:

- Check the [E2B Documentation](https://e2b.dev/docs) for sandbox issues
- Refer to individual AI provider documentation for API-specific issues
- Check Vercel logs in the dashboard for deployment errors

## Security Notes

- Never commit API keys to version control
- Use environment variables for all sensitive configuration
- Regularly rotate your API keys
- Monitor usage on each AI provider platform

## Performance Optimization

- The app includes bundle analysis tools
- Use `npm run analyze` to check bundle size
- Consider implementing request caching for frequently used prompts
- Monitor API usage across providers to optimize costs