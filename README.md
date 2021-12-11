# OpenRoad Docker

Usage without GUI:

docker run -it wokwi/openroad-gui

Usage, with GUI:

```shell
docker run -e "DISPLAY=${DISPLAY}" --network host -v /tmp/.X11-unix:/tmp/.X11-unix wokwi/openroad-gui -gui
```

Enjoy!
