#!/bin/sh

# 定义源文件和对应目标文件夹的映射
HSNIPS_FOLDERS="C:/Users/summer/AppData/Roaming/Code/User/hsnips"
SUITE_FOLDERS="C:/Users/summer/OneDrive/App/MyObsidian/Obsidian指北/插件"

declare -A FILE_MAP
FILE_MAP=(
  ["latex_suite.js"]=$SUITE_FOLDERS
  ["latex.hsnips"]=$HSNIPS_FOLDERS
  ["markdown.hsnips"]=$HSNIPS_FOLDERS
  ["typst.hsnips"]=$HSNIPS_FOLDERS
  [".\latex_suite.js"]=$SUITE_FOLDERS
  [".\latex.hsnips"]=$HSNIPS_FOLDERS
  [".\markdown.hsnips"]=$HSNIPS_FOLDERS
  [".\typst.hsnips"]=$HSNIPS_FOLDERS
  ["latex_suite"]=$SUITE_FOLDERS
  ["latex"]=$HSNIPS_FOLDERS
  ["markdown"]=$HSNIPS_FOLDERS
  ["typst"]=$HSNIPS_FOLDERS
)

# 检查参数
if [ "$#" -eq 0 ]; then
  echo "请提供至少一个源文件名。"
  exit 1
fi

# 循环处理每个文件名参数
for SOURCE_FILE in "$@"; do
  DEST_FOLDER=${FILE_MAP["$SOURCE_FILE"]}

  # 检查映射是否存在
  if [ -z "$DEST_FOLDER" ]; then
    echo "文件 $SOURCE_FILE 没有对应的目标文件夹。"
    continue
  fi

  # 检查目标文件夹是否存在
  if [ ! -d "$DEST_FOLDER" ]; then
    echo "目标文件夹 $DEST_FOLDER 不存在，创建中..."
    mkdir -p "$DEST_FOLDER"
  fi

  # 复制文件并覆盖同名文件
  cp $SOURCE_FILE $DEST_FOLDER
  echo "文件 $SOURCE_FILE 已复制到 $DEST_FOLDER"
done

# cp typst.snips "C:/Users/summer/AppData/Roaming/Code/User/hsnips"