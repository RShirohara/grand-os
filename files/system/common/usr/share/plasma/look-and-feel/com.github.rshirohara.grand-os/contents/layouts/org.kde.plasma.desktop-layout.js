var plasma = getApiVersion(1);

var layout = {
  "desktops": [
    {
      "applets": [],
      "config": {
        "/Wallpaper/org.kde.image/General": {
          "Image": "/usr/share/wallpapers/Mountain",
          "SlidePaths": "/usr/share/wallpapers/"
        }
      },
      "wallpaperPlugin": "org.kde.image"
    }
  ],
  "panels": [
    {
      "location": "top",
      "alignment": "left",
      "offset": 0,
      "height": 1.5,
      "hiding": "normal",
      "config": {},
      "applets": [
        // TODO: add Darwin menu.
        // Ref: https://store.kde.org/p/2157390
        {
          "plugin": "org.kde.plasma.windowlist",
          "config": {}
        },
        {
          "plugin": "org.kde.plasma.appmenu",
          "config": {}
        },
        {
          "plugin": "org.kde.plasma.panelspacer",
          "config": {}
        },
        {
          "plugin": "org.kde.plasma.systemtray",
          "config": {}
        },
        {
          "plugin": "org.kde.plasma.digitalclock",
          "config": {
            "/Appearance": {
              "displayTimezoneFormat": "FullText",
              "use24hFormat": "2"
            }
          }
        },
        {
          "plugin": "org.kde.plasma.notifications",
          "config": {}
        }
      ],
    },
    {
      "location": "bottom",
      "alignment": "center",
      "offset": 0,
      "height": 3.25,
      "hiding": "dodgewindows",
      "config": {},
      "applets": [
        {
          "plugin": "org.kde.plasma.icontasks",
          "config": {
            "/General": {
              "launchers": "applications:trivalent.desktop,preferred://filemanager,preferred://terminal"
            }
          }
        },
        {
          "plugin": "org.kde.plasma.folder",
          "config": {
            "/General": {
              "icon": "trash-empty",
              "useCustomIcon": "true",
              "url": "trash:/"
            }
          }
        },
      ],
    }
  ],
  "serializationFormatVersion": "1"
};

plasma.loadSerializedLayout(layout);
