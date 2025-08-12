# 🚀 Vercel Deployment Instructions

## Prerequisites Checklist ✅
- ✅ Vercel CLI installed (version 44.7.3)
- ✅ Project configured with vercel.json
- ✅ All code pushed to GitHub main branch
- ✅ Deployment scripts ready

## Required API Keys 🔑

You'll need at least these API keys before deploying:

### Required
- **E2B_API_KEY**: Get from [e2b.dev](https://e2b.dev) (required for code sandboxes)
- **FIRECRAWL_API_KEY**: Get from [firecrawl.dev](https://firecrawl.dev) (required for web scraping)

### AI Providers (at least one)
- **MISTRAL_API_KEY**: Get from [console.mistral.ai](https://console.mistral.ai)
- **OPENAI_API_KEY**: Get from [platform.openai.com](https://platform.openai.com)
- **ANTHROPIC_API_KEY**: Get from [console.anthropic.com](https://console.anthropic.com)
- **GROQ_API_KEY**: Get from [console.groq.com](https://console.groq.com)

## Step 1: Login to Vercel

Run this command and follow the prompts:
```bash
vercel login
```

Choose your preferred login method (GitHub, GitLab, Bitbucket, or Email).

## Step 2: Deploy the Project

From your project directory, run:
```bash
cd /project/workspace/drzee1205/Loveable
vercel
```

Vercel will ask you several questions:
- **Set up and deploy?** → Press Enter (Yes)
- **Which scope?** → Choose your account
- **Link to existing project?** → N (No, create new)
- **What's your project's name?** → Press Enter (use 'Loveable' or choose custom name)
- **In which directory?** → Press Enter (current directory)
- **Want to override settings?** → N (No, use vercel.json settings)

## Step 3: Set Environment Variables

After initial deployment, set your environment variables:

```bash
# Required
vercel env add E2B_API_KEY
# Paste your E2B API key when prompted

vercel env add FIRECRAWL_API_KEY
# Paste your Firecrawl API key when prompted

vercel env add NEXT_PUBLIC_APP_URL
# Enter your Vercel app URL (e.g., https://loveable-xyz.vercel.app)

# AI Providers (add at least one)
vercel env add MISTRAL_API_KEY
# Paste your Mistral API key

vercel env add OPENAI_API_KEY  
# Paste your OpenAI API key (if you have one)

vercel env add ANTHROPIC_API_KEY
# Paste your Anthropic API key (if you have one)

vercel env add GROQ_API_KEY
# Paste your Groq API key (if you have one)
```

For each variable, Vercel will ask which environments:
- Choose: **Production, Preview, Development** (or just Production for now)

## Step 4: Redeploy with Environment Variables

After setting environment variables, redeploy:
```bash
vercel --prod
```

## Step 5: Test Your Deployment

1. Visit your deployed URL (Vercel will show it after deployment)
2. Test AI code generation with different models
3. Verify that sandboxes are working properly

## Alternative: Use Our Setup Script

We created an interactive script to make environment setup easier:

```bash
# Make sure you're logged into Vercel first
vercel login

# Run our setup script
./scripts/setup-vercel-env.sh

# Then deploy
vercel --prod
```

## Expected Deployment URL

Your app will be available at:
`https://loveable-[random].vercel.app`

Or if you customize the name:
`https://[your-project-name].vercel.app`

## Troubleshooting

### Common Issues:
1. **Build failures**: Check that all API keys are set
2. **Sandbox errors**: Verify E2B_API_KEY is correct
3. **AI model errors**: Ensure at least one AI provider API key is set
4. **CORS issues**: Our vercel.json includes proper CORS headers

### Getting Help:
- Check Vercel logs: `vercel logs`
- View project dashboard: `vercel dashboard`
- Check environment variables: `vercel env ls`

## Ready to Deploy? 🚀

Run these commands one by one:
```bash
# 1. Login to Vercel
vercel login

# 2. Deploy (follow prompts)
vercel

# 3. Set environment variables (see Step 3 above)
# 4. Redeploy with env vars
vercel --prod
```

Your Open Loveable platform will be live and ready to generate React apps with AI! 🎉