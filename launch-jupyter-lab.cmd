@echo off
@cls

:: ----------------------------------------------------------------
:: Dockerfile等を変更したときのためビルド処理を入れておく。
:: ビルドは手動で行っても良いが、最新であれば1〜2秒で完了するため、
:: ビルド忘れを防止するために入れておく。
:: ----------------------------------------------------------------
echo Build
docker-compose build


:: ----------------------------------------------------------------
:: JupyterLabコンテナの起動（ブラウザも同時に起動）
:: ブラウザ起動後にコンテナを起動させるため、
:: JupyterLabの画面表示までに、数秒のタイムラグあり。
:: ----------------------------------------------------------------
echo Launch JupyterLab
start http://localhost:8888/lab
docker-compose up


:: ----------------------------------------------------------------
:: JupyterLabコンテナのシャットダウン
:: ブラウザ上のJupyterLabで、File> Shut Down を選択すればOK。
:: ----------------------------------------------------------------
echo --------------------------------
echo Shutdown JupyterLab
docker-compose down


