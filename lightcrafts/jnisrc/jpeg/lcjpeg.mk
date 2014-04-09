ROOT:=		../../..
COMMON_DIR:=	$(ROOT)/lightcrafts
include		$(COMMON_DIR)/mk/platform.mk

HIGH_PERFORMANCE:=	1

TARGET_BASE:=		LCJPEG

# Uncomment to compile in debug mode.
#DEBUG:=		true

JNI_EXTRA_CFLAGS:=	-fexceptions
ifeq ($(PLATFORM),Windows)
  JNI_EXTRA_LDFLAGS:=   -Larch-$(PROCESSOR)
endif
JNI_EXTRA_LINK:=	-ljpeg -lLCJNI

JAVAH_CLASSES:=		com.lightcrafts.image.libs.LCJPEGReader \
			com.lightcrafts.image.libs.LCJPEGWriter

include			../jni.mk

# vim:set noet sw=8 ts=8:
