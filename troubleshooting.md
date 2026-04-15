# Troubleshooting Guide

## Common Issues and Solutions

---

### Issue: "LaTeX Workshop cannot find latexmk"

**Solution:**
- Ensure MiKTeX is properly installed
- Add MiKTeX to system PATH:
  - Open **System Properties > Environment Variables**
  - Add `C:\Program Files\MiKTeX\miktex\bin\x64` to PATH
  - Restart VS Code

---

### Issue: Perl-related errors when compiling

**Solution:**
- Verify Strawberry Perl is installed at `C:\Strawberry`
- Check Perl is in PATH: Open Command Prompt and type `perl -v`
- If not, add `C:\Strawberry\perl\bin` to system PATH

---

### Issue: Missing packages during compilation

**Solution:**
- MiKTeX should auto-install missing packages
- If not, open **MiKTeX Console > Updates > Update all**
- Or manually install: Search for the package name in MiKTeX Console

---

### Issue: PDF viewer not showing

**Solution:**
- Click the TeX icon in the sidebar
- Select **"View LaTeX PDF"**
- Choose **"Keep LaTeX Workshop internal PDF viewer"**

---

### Issue: Compilation very slow

**Solution:**
- First compilation is always slower (installs packages)
- Subsequent compilations will be faster
- Consider using `latexmk` recipe for incremental builds

---

## Still Having Issues?

1. Check VS Code **Output** panel > **"LaTeX Workshop"** for detailed errors
2. Verify all three components are installed:
   - VS Code
   - MiKTeX
   - Strawberry Perl
3. Try compiling from command line: `latexmk -pdf yourfile.tex`
4. Run the setup verification script: `.\scripts\setup-check.ps1`
