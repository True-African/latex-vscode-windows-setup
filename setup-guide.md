# Complete LaTeX Setup Guide for VS Code on Windows

## Overview

This guide will walk you through setting up a complete LaTeX development environment in Visual Studio Code on Windows. You'll be able to write LaTeX documents and see PDF output update in real-time as you type.

## Prerequisites

- Windows 10 or 11 (64-bit)
- Administrator access (for installations)
- Stable internet connection

---

## Step 1: Install Visual Studio Code

1. Open your web browser and go to https://code.visualstudio.com/
2. Click the **Download for Windows** button (64-bit version)
3. Once downloaded, run the installer
4. Follow the installation wizard:
   - Accept the license agreement
   - Choose installation location (default is fine)
   - Select start menu folder (default is fine)
   - Recommended options to check:
     - "Add 'Open with Code' action to Windows Explorer file context menu"
     - "Add 'Open with Code' action to Windows Explorer directory context menu"
     - "Add to PATH" *(important for command line usage)*
5. Click **Install**
6. Launch VS Code after installation

---

## Step 2: Install MiKTeX (LaTeX Distribution)

1. Go to https://miktex.org/download
2. Click the Windows download link
3. Run the installer (about 128 MB)
4. Follow the installation wizard:
   - Accept the license terms
   - Choose installation scope *(Recommended: "Install for anyone who uses this computer")*
   - Choose installation directory *(default: `C:\Users\YourName\AppData\Local\Programs\MiKTeX`)*
   - Paper size: Select **A4** (or your preference)
   - **Important:** Select **"Yes"** for *"Install missing packages on-the-fly"*
5. Complete the installation
6. After installation, update MiKTeX:
   - Search for **"MiKTeX Console"** in Windows Start menu
   - Open it and click **"Check for Updates"**
   - Click **"Update Now"** to install all available updates
   - Close the console when finished

---

## Step 3: Install Strawberry Perl

1. Go to https://strawberryperl.com/
2. Download the **64-bit** version
3. Run the installer
4. Follow the installation wizard:
   - Accept the license agreement
   - Choose installation directory *(default: `C:\Strawberry`)*
5. Complete the installation
6. Wait for installation to finish *(this may take a few minutes)*

---

## Step 4: Install LaTeX Workshop Extension in VS Code

1. Open Visual Studio Code
2. Click the **Extensions** icon in the left sidebar (or press `Ctrl+Shift+X`)
3. Search for **"LaTeX Workshop"**
4. Click **Install** on the extension (by James Yu)
5. Wait for the installation to complete

---

## Step 5: Verify Installation

1. Create a new folder for your LaTeX project
2. In VS Code, go to **File > Open Folder** and select your project folder
3. Create a new file called `test.tex`
4. Copy and paste this test document:

```latex
\documentclass{article}
\usepackage{graphicx}
\usepackage{lipsum}

\title{My First LaTeX Document}
\author{Your Name}
\date{\today}

\begin{document}

\maketitle

\section{Introduction}
\lipsum[1]

\section{Testing}
This is a test of my LaTeX setup. The quick brown fox jumps over the lazy dog.

\end{document}
```

5. Save the file (`Ctrl+S`)
6. Click the **TeX icon** in the left sidebar *(appears after extension installation)*
7. Click **"Build LaTeX project"** (or press `Ctrl+Alt+B`)
8. Wait for the compilation to complete *(first time will be slower as packages install)*
9. The PDF should appear in the VS Code window

---

## Step 6: Enable Real-time Preview (Optional but Recommended)

Once your document compiles successfully:

1. Open your `.tex` file
2. Click the **"View LaTeX PDF"** button in the top right, or
3. Press `Ctrl+Alt+V` to open the PDF viewer
4. Choose **"Keep LaTeX Workshop internal PDF viewer"** when prompted

Now whenever you save (`Ctrl+S`), the PDF will automatically update.

---

## Keyboard Shortcuts Reference

| Action                  | Shortcut       |
|-------------------------|----------------|
| Build LaTeX project     | `Ctrl+Alt+B`   |
| View PDF                | `Ctrl+Alt+V`   |
| Save and auto-build     | `Ctrl+S`       |
| Open extension sidebar  | `Ctrl+Shift+X` |
| Open command palette    | `Ctrl+Shift+P` |

---

## Final Notes

- First compilation will be slow as MiKTeX downloads required packages
- Subsequent compilations will be much faster
- The setup works with any LaTeX project, not just new ones
- You can use bibliography files (`.bib`) with BibTeX support
