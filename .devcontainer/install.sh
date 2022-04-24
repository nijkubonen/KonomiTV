cd client/
yarn
cd ..
cd server/
# サードパーティーライブラリをダウンロード
curl -sSLO https://github.com/tsukumijima/KonomiTV/releases/download/v0.5.0/thirdparty.7z
7z x -y thirdparty.7z
rm thirdparty.7z
# サードパーティーライブラリに実行権限を付与
chmod 755 ./thirdparty/FFmpeg/ffmpeg.elf
chmod 755 ./thirdparty/FFmpeg/ffprobe.elf
chmod 755 ./thirdparty/QSVEncC/QSVEncC.elf
chmod 755 ./thirdparty/NVEncC/NVEncC.elf
chmod 755 ./thirdparty/tsreadex/tsreadex.elf
chmod 755 ./thirdparty/VCEEncC/VCEEncC.elf
pipenv sync
pipenv run aerich upgrade
cd ..
cp config.example.yaml config.yaml
