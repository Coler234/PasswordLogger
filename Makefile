SDKVERSION = 9.3

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FirstTweak
FirstTweak_FILES = Tweak.xm
test_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
