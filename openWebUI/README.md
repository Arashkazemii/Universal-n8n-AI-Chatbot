# 🔌 OpenWebUI Integration

This folder contains the configuration needed to connect your OpenWebUI instance to your [n8n-based chatbot agent](../).

### 📄 File Included
- `n8n_pipe_openwebui.json`: A ready-to-import function for OpenWebUI that enables seamless communication with your `n8n` agent.

### 🚀 How to Use

1. **Go to** your OpenWebUI instance.
2. Navigate to **Settings → Functions → + Import**.
3. Upload the `n8n_pipe_openwebui.json` file.
4. Configure the required fields:
   - `n8n_url`: Your webhook URL from n8n (e.g. `http://<host>:5678/webhook/invoke_n8n_agent`)
   - `n8n_bearer_token`: (Optional) If your webhook is protected
5. Done! Start chatting and your messages will be routed through the n8n agent.

### 🧠 What It Does

This pipe function captures messages from OpenWebUI and sends them to your n8n agent via webhook. The response is then injected back into the conversation, making your vector-based or RAG-enhanced agent available inside OpenWebUI's chat UI.