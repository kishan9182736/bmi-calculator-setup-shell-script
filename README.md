# **bmi-calculator-setup-shell-script**

This guide will help you quickly set up the **Bmi-Calculator** project on your computer using a simple setup script. The script will clone your GitHub repository, set up the necessary tools, and install any required software automatically.

---

## **Before You Start**

Make sure you have:

1. A **GitHub account**.  
2. Forked the **Bmi-Calculator** project from the original repository to your GitHub account.  
3. A **Linux-based computer** (e.g., Ubuntu, Debian). If you're using Windows, you may need to use something like **WSL** (Windows Subsystem for Linux).

---

## **Steps to Set Up the Project**

### Step 1: **Fork the Repository**

- Go to the **[original Bmi-Calculator repository](https://github.com/salamshanto/Bmi-Calculator)**.
- On the top right of the page, click the **"Fork"** button. This will create a copy of the repository in your GitHub account.

### Step 2: **Clone Your Forked Repository**

After forking, you need to clone your forked repository (your copy) to your computer. 

1. Open a terminal (command line).
2. Run the following command (replace `your-github-username` with your actual GitHub username):

   ```bash
   git clone git@github.com:your-github-username/Bmi-Calculator.git
   cd Bmi-Calculator

### Step 3: **Run the Setup Script**

Now, you’re ready to set up the project automatically using the script.

1. **Make the setup script executable** by running the following command in your terminal:

   ```bash
   chmod +x setup.sh
   ./setup.sh your-github-username

### What will the script do?

The setup script automates several tasks to ensure that your local environment is ready to work with the **Bmi-Calculator** project:

1. **Clones your forked repository**:  
   The script checks if your GitHub repository exists and clones it to your local machine.

2. **Sets up Git remotes**:  
   The script configures remotes for your local repository:
   - **`origin`**: Points to your GitHub fork.
   - **`upstream`**: Points to the original repository from which you forked.

3. **Installs PHP**:  
   If PHP is not installed on your system, the script will install the latest stable version of PHP.

4. **Installs Composer**:  
   Composer, a tool to manage PHP dependencies, will be installed if it's not already available on your machine.

5. **Installs PHP dependencies**:  
   If the project has any PHP libraries or dependencies defined in the `composer.json` file, the script will automatically install them for you.

---

### Example of What You’ll See in the Terminal

When you run the setup script, you’ll see output messages similar to the following in your terminal:

📂 Cloning repo: Bmi-Calculator from your-github-username's fork... 🔗 Setting up remotes for Bmi-Calculator... 📦 Installing PHP... ✅ PHP is already installed! 📦 Installing Composer... ✅ Composer is already installed! 📦 Installing PHP dependencies... ✅ Setup complete! Ready to code 🚀


These messages guide you through each step of the setup process, ensuring everything is working as expected.

---

### If Something Goes Wrong

If something doesn’t work as expected, here are some tips for troubleshooting:

1. **"Repository not found"**:  
   - Double-check that you’ve forked the **Bmi-Calculator** project correctly on GitHub.
   - Ensure that you’ve replaced `your-github-username` with your actual GitHub username when running the script.
   - Confirm that the repository exists in your GitHub account by visiting `https://github.com/your-github-username/Bmi-Calculator`.

2. **PHP or Composer installation issues**:  
   - If PHP or Composer fails to install, make sure your internet connection is stable.
   - Ensure that your Linux package manager (e.g., `apt` for Ubuntu) is working correctly and that you have the necessary permissions (use `sudo` if required).
   - If Composer is still not working, you may need to install it manually by following the [official Composer installation guide](https://getcomposer.org/doc/00-intro.md).

---

## **License**

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for more details.

---

## **Final Words**

Once the script finishes, your project setup will be complete! You are now ready to start working on the **Bmi-Calculator** project. Happy coding, and feel free to contribute improvements to the project. 🚀


This version includes the requested sections with a detailed and user-friendly format for your README.md. You can directly copy this into your file. Let me know if you need further changes or additions!
