docker build -build-arg https_proxy=http://win10:7890 -build-arg http_proxy=http://win10:7890 -build-arg all_proxy=socks5://win10:7890 -t registry.mouse.center:1443/klipper-moonraker:20221225-1347 -f ./Dockerfile-klipper-moonraker .
docker push registry.mouse.center:1443/klipper-moonraker:20221225-1347
