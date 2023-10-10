#!/bin/sh

sleep 15

MEDIA_PKG=me.ayra.android.providers.media
MEDIA_UID=$(pm list packages -U | grep $MEDIA_PKG | sed -n -e "s/package:$MEDIA_PKG uid://p")

pm grant $MEDIA_PKG android.permission.ACCESS_COARSE_LOCATION
pm grant $MEDIA_PKG android.permission.ACCESS_FINE_LOCATION
pm grant $MEDIA_PKG android.permission.READ_CONTACTS
pm grant $MEDIA_PKG android.permission.WRITE_CONTACTS
pm grant $MEDIA_PKG android.permission.READ_EXTERNAL_STORAGE
pm grant $MEDIA_PKG android.permission.WRITE_EXTERNAL_STORAGE
pm grant $MEDIA_PKG android.permission.READ_MEDIA_AUDIO
pm grant $MEDIA_PKG android.permission.READ_MEDIA_VIDEO
pm grant $MEDIA_PKG android.permission.READ_MEDIA_IMAGES
pm grant $MEDIA_PKG android.permission.ACCESS_MEDIA_LOCATION

appops set --uid $MEDIA_UID LEGACY_STORAGE allow
appops set --uid $MEDIA_UID COARSE_LOCATION allow
appops set $MEDIA_PKG READ_EXTERNAL_STORAGE allow
appops set $MEDIA_PKG WRITE_EXTERNAL_STORAGE allow

appops set $MEDIA_PKG READ_MEDIA_AUDIO allow
appops set $MEDIA_PKG WRITE_MEDIA_AUDIO allow
appops set $MEDIA_PKG READ_MEDIA_VIDEO allow
appops set $MEDIA_PKG WRITE_MEDIA_VIDEO allow
appops set $MEDIA_PKG READ_MEDIA_IMAGES allow
appops set $MEDIA_PKG WRITE_MEDIA_IMAGES allow
appops set $MEDIA_PKG FINE_LOCATION allow
appops set $MEDIA_PKG READ_CONTACTS allow
appops set $MEDIA_PKG WRITE_CONTACTS allow
appops set $MEDIA_PKG POST_NOTIFICATION allow
appops set $MEDIA_PKG LEGACY_STORAGE allow
appops set $MEDIA_PKG ACCESS_MEDIA_LOCATION allow
appops set $MEDIA_PKG ACCESS_RESTRICTED_SETTINGS allow
appops set $MEDIA_PKG LEGACY_STORAGE allow


GALLERY_PKG=com.sec.android.gallery3d
GALLERY_UID=$(pm list packages -U | grep $GALLERY_PKG | sed -n -e "s/package:$GALLERY_PKG uid://p")

pm grant $GALLERY_PKG android.permission.ACCESS_COARSE_LOCATION
pm grant $GALLERY_PKG android.permission.ACCESS_FINE_LOCATION
pm grant $GALLERY_PKG android.permission.READ_CONTACTS
pm grant $GALLERY_PKG android.permission.WRITE_CONTACTS
pm grant $GALLERY_PKG android.permission.READ_EXTERNAL_STORAGE
pm grant $GALLERY_PKG android.permission.WRITE_EXTERNAL_STORAGE
pm grant $GALLERY_PKG android.permission.READ_MEDIA_AUDIO
pm grant $GALLERY_PKG android.permission.READ_MEDIA_VIDEO
pm grant $GALLERY_PKG android.permission.READ_MEDIA_IMAGES
pm grant $GALLERY_PKG android.permission.ACCESS_MEDIA_LOCATION

appops set --uid $GALLERY_UID LEGACY_STORAGE allow
appops set --uid $GALLERY_UID COARSE_LOCATION allow
appops set $GALLERY_UID FINE_LOCATION allow
appops set $GALLERY_UID READ_CONTACTS allow
appops set $GALLERY_UID WRITE_CONTACTS allow
appops set $GALLERY_UID POST_NOTIFICATION allow
appops set $GALLERY_UID READ_EXTERNAL_STORAGE allow
appops set $GALLERY_UID WRITE_EXTERNAL_STORAGE allow
appops set $GALLERY_UID READ_MEDIA_AUDIO allow
appops set $GALLERY_UID READ_MEDIA_VIDEO allow
appops set $GALLERY_UID READ_MEDIA_IMAGES allow
appops set $GALLERY_UID LEGACY_STORAGE allow
appops set $GALLERY_UID ACCESS_MEDIA_LOCATION allow
appops set $GALLERY_UID ACCESS_RESTRICTED_SETTINGS allow
