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
      "floating": false,
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
            "extraItems": "org.kde.kdeconnect,org.kde.plasma.battery,org.kde.plasma.bluetooth,org.kde.plasma.clipboard,org.kde.plasma.devicenotifier,org.kde.plasma.mediacontroller,org.kde.plasma.networkmanagement,org.kde.plasma.volume",
            "knownItems": "org.kde.kdeconnect,org.kde.kscreen,org.kde.plasma.battery,org.kde.plasma.bluetooth,org.kde.plasma.brightness,org.kde.plasma.cameraindicator,org.kde.plasma.clipboard,org.kde.plasma.devicenotifier,org.kde.plasma.keyboardindicator,org.kde.plasma.keyboardlayout,org.kde.plasma.manage-inputmethod,org.kde.plasma.mediacontroller,org.kde.plasma.networkmanagement,org.kde.plasma.notifications,org.kde.plasma.printmanager,org.kde.plasma.vault,org.kde.plasma.volume",
            "showAllItems": true,
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
      "floating": true,
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
