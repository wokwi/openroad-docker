# OpenRoad Docker

Usage without GUI:

```bash
docker run -it wokwi/openroad-gui
```

Usage, with GUI:

```bash
docker run -e "DISPLAY=${DISPLAY}" --network host -v /tmp/.X11-unix:/tmp/.X11-unix wokwi/openroad-gui -gui
```

Enjoy!
