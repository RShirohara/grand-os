var plasma = getApiVersion(1);

var layout = {
  "serializationFormatVersion": "1",
  "desktops": [
    {
      "wallpaperPlugin": "org.kde.image",
      "config": {
        "/Wallpaper/org.kde.image/General": {
          "Image": "/usr/share/wallpapers/Mountain",
          "SlidePaths": "/usr/share/wallpapers/"
        },
      },
      "applets": [],
    }
  ],
  "panels": [
    {
      "location": "top",
      "alignment": "left",
      "offset": 0,
      "lengthMode": "fill",
      "height": 1.5,
      "hiding": "none",
      "floating": false,    // TODO: Can't apply
      "opacity": "adaptive",
      "config": {},
      "applets": [
        {
          "plugin": "org.latgardi.darwinmenu",
          "config": {
            "/Configuration/General": {
              "customButtonImage": "hamburger-menu-symbolic",
              "iconSizePercent": 50,
              "useCustomButtonImage": true,
              "useRectangleButtonShape": false,
            },
          },
        },
        {
          "plugin": "org.kde.plasma.windowlist",
          "config": {},
        },
        {
          "plugin": "org.kde.plasma.appmenu",
          "config": {},
        },
        {
          "plugin": "org.kde.plasma.panelspacer",
          "config": {},
        },
        {
          "plugin": "org.kde.plasma.systemtray",
          "config": {
            "/General": {
              "extraItems": "org.kde.kdeconnect,org.kde.plasma.battery,org.kde.plasma.bluetooth,org.kde.plasma.clipboard,org.kde.plasma.devicenotifier,org.kde.plasma.mediacontroller,org.kde.plasma.networkmanagement,org.kde.plasma.volume",
            }
          },
        },
        {
          "plugin": "org.kde.plasma.digitalclock",
          "config": {
            "/Appearance": {
              "displayTimezoneFormat": "FullText",
              "use24hFormat": "2",
            },
          },
        },
        {
          "plugin": "org.kde.plasma.notifications",
          "config": {},
        },
      ],
    },
    {
      "location": "bottom",
      "alignment": "center",
      "offset": 0,
      "lengthMode": "fit",
      "height": 2.75,
      "hiding": "dodgewindows",
      "floating": true,     // TODO: Can't apply
      "opacity": "adaptive",
      "config": {},
      "applets": [
        {
          "plugin": "org.kde.plasma.icontasks",
          "config": {
            "/General": {
              "launchers": "applications:trivalent.desktop,applications:org.kde.dolphin.desktop,applications:org.kde.konsole.desktop"
            },
          },
        },
        {
          "plugin": "org.kde.plasma.folder",
          "config": {
            "/General": {
              "icon": "trash-empty",
              "useCustomIcon": "true",
              "url": "trash:/",
            },
          },
        },
      ],
    },
  ],
}

plasma.loadSerializedLayout(layout);
