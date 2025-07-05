# 🧠 Universal AI Chatbot (n8n + LangChain + OpenAI)

This is a **modular and customizable AI chatbot workflow** designed using [n8n](https://n8n.io), powered by [LangChain](https://www.langchain.com/), [OpenAI](https://platform.openai.com), and [Supabase](https://supabase.com). It supports knowledge retrieval, general question answering, and can be adapted for any internal or external use case.

---

## ✨ Features

- 🔍 **Vector-based Retrieval-Augmented Generation (RAG)**
- 💬 Powered by **OpenAI (GPT-4, GPT-3.5, etc.)**
- 🧠 Connects to your **private knowledge base**
- 🧮 Includes tools like **Calculator**, **Date/Time**, **Wikipedia**, and **Searxng**
- 🧩 Fully customizable system prompt and logic
- 🪄 No-code/low-code development through n8n

---

## 🛠️ Stack

| Layer      | Tech                         |
|------------|------------------------------|
| Workflow   | n8n                          |
| LLM Agent  | LangChain                    |
| Model      | OpenAI GPT (via API)         |
| Embeddings | OpenAI `text-embedding-3-large` |
| Vector DB  | Supabase `pgvector`          |
| Search     | Wikipedia, Searxng (optional) |

---

## 🚀 Getting Started

### 1. Clone this repository

```bash
git clone https://github.com/your-username/universal-ai-chatbot.git
cd universal-ai-chatbot
```

### 2. Import Workflow

Import `universal_ai_chatbot_minified.json` into your **n8n** instance.

### 3. Set up Environment Variables

Create a `.env` file using the `.env.example` template and add your API keys:

```
OPENAI_API_KEY=your-openai-key
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_SERVICE_KEY=your-service-role-key
```

### 4. Configure Supabase

Set up a vector table (`your_table_name`) and search function (`your_vector_search_function`) for document retrieval. Sample SQL setup coming soon.

---

## 🔧 Customization

- Update the system prompt in the `Main Assistant` node to match your domain
- Replace tools (e.g. remove `Wikipedia`, add CRM integration)
- Adjust Top-K or embedding model as needed

---

## 📄 License

This project is licensed under the MIT License.

---

## 🧠 Sample Use Cases

- Company internal knowledge assistant  
- AI-powered academic research bot  
- Document support & search chatbot  
- Developer documentation assistant  

---

## 🙌 Credits

Created by [Arash Kazemi](https://github.com/Arashkazemii)  
Built for adaptability, learning, and contribution 🚀

---

## 🖥️ Optional: Connect to OpenWebUI

This chatbot can be used as a **custom backend** for [OpenWebUI](https://github.com/open-webui/open-webui) by importing the included `n8n_pipe` function.

### 🔌 Integration Steps

1. Open your **OpenWebUI** dashboard.
2. Go to **Functions** → Click **Import** and upload the `n8n_pipe_openwebui.json` file from the `openwebui/` folder.
3. Edit the pipe parameters (example):

```json
{
  "n8n_url": "http://localhost:5678/webhook/invoke_n8n_agent",
  "input_field": "chatInput",
  "response_field": "output",
  "emit_interval": 2,
  "enable_status_indicator": true
}
```

> Replace the `n8n_url` with your actual n8n webhook endpoint.

### 💡 How It Works

The function sends chat input to your n8n workflow via POST, waits for the AI Agent's response, and returns it directly inside OpenWebUI – providing a slick, real-time frontend.

---