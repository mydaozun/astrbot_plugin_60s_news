@echo off
chcp 65001 > nul
echo 正在打包插件...

REM 设置变量
set PLUGIN_NAME=astrbot_plugin_60s_news
set SOURCE_DIR=%USERPROFILE%\Desktop\%PLUGIN_NAME%
set OUTPUT_DIR=%USERPROFILE%\Desktop

REM 切换到源目录
cd /d "%SOURCE_DIR%"

REM 使用 PowerShell 创建 ZIP 文件，排除不必要的文件
powershell -Command "Compress-Archive -Path '*.*' -DestinationPath '%OUTPUT_DIR%\%PLUGIN_NAME%.zip' -Force -CompressionLevel Optimal"

echo 打包完成！
echo 输出文件: %OUTPUT_DIR%\%PLUGIN_NAME%.zip
pause
