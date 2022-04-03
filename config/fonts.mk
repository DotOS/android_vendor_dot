#
# Copyright (C) 2021 Raphielscape LLC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# We have to use PRODUCT_PACKAGES (together with BUILD_PREBUILT) instead of
# PRODUCT_COPY_FILES to install the font files, so that the NOTICE file can
# get installed too.

PRODUCT_PACKAGES += \
    GInterVF-Italic.ttf \
    GInterVF-Roman.ttf \
    HarmonyOS-Sans-BlackItalic.ttf \
    HarmonyOS-Sans-Black.ttf \
    HarmonyOS-Sans-BoldItalic.ttf \
    HarmonyOS-Sans-Bold.ttf \
    HarmonyOS-Sans-Italic.ttf \
    HarmonyOS-Sans-LightItalic.ttf \
    HarmonyOS-Sans-Light.ttf \
    HarmonyOS-Sans-MediumItalic.ttf \
    HarmonyOS-Sans-Medium.ttf \
    HarmonyOS-Sans-Regular.ttf \
    HarmonyOS-Sans-ThinItalic.ttf \
    HarmonyOS-Sans-Thin.ttf \
    Lexend-VF.ttf \
    Manrope-VF.ttf

# Customization overlays
PRODUCT_PACKAGES += \
    FontGInterOverlay \
    FontHarmonySansOverlay \
    FontLinotteSourceOverlay \
    FontManropeOverlay \
    FontNotoSerifSource \
    FontOnePlusSansOverlay \
    FontOneplusSlateSourceOverlay \
    FontAclonicaSourceOverlay \
    FontAmaranteSourceOverlay \
    FontAntipastoProSourceOverlay \
    FontBariolSourceOverlay \
    FontCagliostroSourceOverlay \
    FontCoconSourceOverlay \
    FontComfortaaSourceOverlay \
    FontComicSansSourceOverlay \
    FontCoolstorySourceOverlay \
    FontEvolveSansSourceOverlay \
    FontExotwoSourceOverlay \
    FontFifa2018SourceOverlay \
    FontFucekSourceOverlay \
    FontGrandHotelSourceOverlay \
    FontLGSmartGothicSourceOverlay \
    FontLemonMilkSourceOverlay \
    FontNokiaPureSourceOverlay \
    FontNunitoSourceOverlay \
    FontOdudaSourceOverlay \
    FontOneUISansOverlay \
    FontQuandoSourceOverlay \
    FontRedressedSourceOverlay \
    FontReemKufiSourceOverlay \
    FontRosemarySourceOverlay \
    FontSamsungOneSourceOverlay \
    FontSimpleDaySourceOverlay \
    FontSonySketchSourceOverlay \
    FontStoropiaSourceOverlay \
    FontSurferSourceOverlay \
    FontUbuntuSourceOverlay

# Register vendor fonts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/dot/fonts/prebuilt,$(TARGET_COPY_OUT_PRODUCT)/fonts) \
    vendor/dot/fonts/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml