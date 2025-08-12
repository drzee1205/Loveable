<div align="center">

# Open Lovable

Chat with AI to build React apps instantly.

<img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExbmZtaHFleGRsMTNlaWNydGdianI4NGQ4dHhyZjB0d2VkcjRyeXBucCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/ZFVLWMa6dVskQX0qu1/giphy.gif" alt="Open Lovable Demo" width="100%"/>

</div>

## Setup

1. **Clone & Install**
```bash
git clone https://github.com/mendableai/open-lovable.git
cd open-lovable
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