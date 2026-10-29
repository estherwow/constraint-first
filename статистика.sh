#!/bin/zsh
# Забирает статистику репозитория constraint-first и дописывает в историю.
# GitHub хранит трафик только 14 дней — поэтому сохраняем сами.
# Запуск вручную: ~/Claude/constraint-first-public/статистика.sh

GH=~/.local/bin/gh
REPO=estherwow/constraint-first
OUT=~/Claude/constraint-first-public/СТАТИСТИКА.md
DATE=$(date +%Y-%m-%d)

STARS=$($GH api repos/$REPO --jq '.stargazers_count' 2>/dev/null)
FORKS=$($GH api repos/$REPO --jq '.forks_count' 2>/dev/null)
WATCH=$($GH api repos/$REPO --jq '.subscribers_count' 2>/dev/null)
CLONES=$($GH api repos/$REPO/traffic/clones --jq '.count' 2>/dev/null)
UNIQ_CLONES=$($GH api repos/$REPO/traffic/clones --jq '.uniques' 2>/dev/null)
VIEWS=$($GH api repos/$REPO/traffic/views --jq '.count' 2>/dev/null)
UNIQ_VIEWS=$($GH api repos/$REPO/traffic/views --jq '.uniques' 2>/dev/null)
REFS=$($GH api repos/$REPO/traffic/popular/referrers --jq '[.[] | "\(.referrer) \(.count)"] | join(" · ")' 2>/dev/null)

if [ ! -f "$OUT" ]; then
  cat > "$OUT" << 'HEADER'
# Статистика constraint-first

Собирается автоматически раз в неделю. GitHub хранит трафик только 14 дней — здесь он сохраняется навсегда.

**Что значат числа:**
- **Звёзды** — публичное число, его читают другие разработчики
- **Скачивания** — самая честная цифра: скачивают только те, кто собирается использовать
- **Просмотры** — сколько раз открыли страницу
- **Откуда пришли** — здесь будет видно, сработал ли пост в Instagram

| Дата | Звёзды | Форки | Подписки | Скачиваний (за 14 дн) | Уникальных | Просмотров | Уникальных | Откуда пришли |
|---|---|---|---|---|---|---|---|---|
HEADER
fi

echo "| $DATE | ${STARS:-—} | ${FORKS:-—} | ${WATCH:-—} | ${CLONES:-—} | ${UNIQ_CLONES:-—} | ${VIEWS:-—} | ${UNIQ_VIEWS:-—} | ${REFS:-—} |" >> "$OUT"
echo "Записано: $DATE — звёзд ${STARS:-?}, скачиваний ${CLONES:-?}, просмотров ${VIEWS:-?}"
