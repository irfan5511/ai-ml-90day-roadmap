# How to Ship Every Task (Professional from Day 1)

1) **Finalize work**
- Clean code & notebooks (remove debug prints, clear unnecessary outputs)
- Export key charts to `reports/figures/`

2) **Update docs**
- In the task's folder, update README with: problem, data, method, results, run steps

3) **Quality checks**
```bash
bash scripts/run_tests.sh
make lint
```

4) **Commit with Conventional Commits**
```bash
bash scripts/git_ship.sh "feat(week03): pandas cleaning & EDA"
```

5) **Push**
- First time setup:
```bash
bash scripts/git_init_push.sh
git remote add origin <your-github-repo-url>
git push -u origin main
```
- Subsequent:
```bash
git push
```

6) **(Optional) Pull request**
- If collaborating, open a PR and ensure CI (GitHub Actions) is green.