 # 🤖 AutoGit for Existing Projects – Bash Script
📁 Project: ritesh
🕒 Created: Friday 18 July 2025 04:22:33 PM IST


# 🤖 AutoGit for Existing Projects – Bash Script

**AutoGit** is a handy Bash automation script that helps you **push an existing local project folder to GitHub** in just one command. No more repeating Git commands every time — this script takes care of initializing, committing, linking to a remote repo, and pushing!

---

## 📁 Use Case

When you already have a local project (e.g., `/home/ritesh/ritesh`) and want to:
- Initialize Git (if not already)
- Add a remote GitHub repository
- Commit your code
- Push it to GitHub in one go

---

## 🧠 How It Works

The script does the following:
1. Takes the **remote GitHub repo URL** as an argument.
2. Navigates to the **current directory** (your existing project).
3. Initializes Git if not already done.
4. Creates a `README.md` if it doesn't exist.
5. Adds and commits all files.
6. Connects to the remote GitHub repository.
7. Pushes to `main` branch.
8. Logs the action in `.autogit_log.txt` (for recordkeeping).

---

## 🚀 How to Use

### ✅ Step 1: Save the Script

Create a file called `autogit_existing.sh` and paste the code.

Make it executable:
```bash
chmod +x autogit_existing.sh
```
---

### ✅ Step 2: Run the Script

Navigate to your project directory:
```bash
cd ~/ritesh  # your existing local project folder
```
Then run:
```bash
./autogit_existing.sh https://github.com/ritesh355/ritesh.git
```
This will:

    - Commit all current files

    - Add the remote origin

    - Push to GitHub
    
---


### 📓 Example

```bash
cd ~/myproject
./autogit_existing.sh https://github.com/ritesh355/myproject.git
```
📌 Make sure the GitHub repository is already created and empty (no README).

---
### 📝 Script Output

You’ll see:

   - A log entry saved in ~/.autogit_log.txt

   - A success message like:

   - ✅ Project pushed to GitHub and logged!
---
### 🔐 Authentication Note

You must be logged into GitHub (either via):

    - Personal Access Token (PAT)

    - GitHub CLI gh auth login

    - Or use SSH instead of HTTPS




