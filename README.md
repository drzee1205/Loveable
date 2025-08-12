<div align="center">

# Open Lovable

Chat with AI to build React apps instantly.

<img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExbmZtaHFleGRsMTNlaWNydGdianI4NGQ4dHhyZjB0d2VkcjRyeXBucCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/ZFVLWMa6dVskQX0qu1/giphy.gif" alt="Open Lovable Demo" width="100%"/>

## Deploy to Vercel

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/drzee1205/Loveable&env=E2B_API_KEY,FIRECRAWL_API_KEY,MISTRAL_API_KEY,OPENAI_API_KEY,ANTHROPIC_API_KEY,GROQ_API_KEY&envDescription=API%20keys%20for%20E2B%20sandboxes,%20Firecrawl%20web%20scraping,%20and%20AI%20providers&envLink=https://github.com/drzee1205/Loveable/blob/main/DEPLOYMENT.md&project-name=open-loveable&repository-name=loveable)

*One-click deploy with automatic environment variable setup*

</div>

## Setup

1. **Clone & Install**
```bash
git clone https://github.com/drzee1205/Loveable.git
cd Loveable
npm install
```

2. **Add `.env.local`**
```env
# Required
E2B_API_KEY=your_e2b_api_key  # Get from https://e2b.dev (Sandboxes)
FIRECRAWL_API_KEY=your_firecrawl_api_key  # Get from https://firecrawl.dev (Web scraping)

# Optional (need at least one AI provider)
ANTHROPIC_API_KEY=your_anthropic_api_key  # Get from https://console.anthropic.com
OPENAI_API_KEY=your_openai_api_key  # Get from https://platform.openai.com (GPT-5)
GROQ_API_KEY=your_groq_api_key  # Get from https://console.groq.com (Fast inference - Kimi K2 recommended)
MISTRAL_API_KEY=your_mistral_api_key  # Get from https://console.mistral.ai (Mistral Large, Small, Codestral)
```

3. **Run**
```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000)

## Supported AI Models

- **OpenAI**: GPT-5
- **Anthropic**: Claude Sonnet 4
- **Groq**: Various models (fast inference)
- **Mistral**: Large, Small, and Codestral models
- **Moonshot AI**: Kimi K2 Instruct

## Deployment

For production deployment on Vercel, see [DEPLOYMENT.md](./DEPLOYMENT.md) for detailed instructions.

## License

MIT