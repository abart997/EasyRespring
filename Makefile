include theos/makefiles/common.mk
export GO_EASY_ON_ME=1
TWEAK_NAME = EasyRespring
EasyRespring_FILES = Tweak.xm
EasyRespring_FRAMEWORKS = UIKit
include $(THEOS_MAKE_PATH)/tweak.mk
