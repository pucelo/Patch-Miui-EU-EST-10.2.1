.class public Landroid/view/KeyEvent;
.super Landroid/view/InputEvent;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyEvent$1;,
        Landroid/view/KeyEvent$Callback;,
        Landroid/view/KeyEvent$DispatcherState;
    }
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MULTIPLE:I = 0x2

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final FLAG_CANCELED:I = 0x20

.field public static final FLAG_CANCELED_LONG_PRESS:I = 0x100

.field public static final FLAG_EDITOR_ACTION:I = 0x10

.field public static final FLAG_FALLBACK:I = 0x400

.field public static final FLAG_FROM_SYSTEM:I = 0x8

.field public static final FLAG_KEEP_TOUCH_MODE:I = 0x4

.field public static final FLAG_LONG_PRESS:I = 0x80

.field public static final FLAG_PREDISPATCH:I = 0x20000000

.field public static final FLAG_SOFT_KEYBOARD:I = 0x2

.field public static final FLAG_START_TRACKING:I = 0x40000000

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TRACKING:I = 0x200

.field public static final FLAG_VIRTUAL_HARD_KEY:I = 0x40

.field public static final FLAG_WOKE_HERE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYCODE_0:I = 0x7

.field public static final KEYCODE_1:I = 0x8

.field public static final KEYCODE_11:I = 0xe3

.field public static final KEYCODE_12:I = 0xe4

.field public static final KEYCODE_2:I = 0x9

.field public static final KEYCODE_3:I = 0xa

.field public static final KEYCODE_3D_MODE:I = 0xce

.field public static final KEYCODE_4:I = 0xb

.field public static final KEYCODE_5:I = 0xc

.field public static final KEYCODE_6:I = 0xd

.field public static final KEYCODE_7:I = 0xe

.field public static final KEYCODE_8:I = 0xf

.field public static final KEYCODE_9:I = 0x10

.field public static final KEYCODE_A:I = 0x1d

.field public static final KEYCODE_ALL_APPS:I = 0x126

.field public static final KEYCODE_ALT_LEFT:I = 0x39

.field public static final KEYCODE_ALT_RIGHT:I = 0x3a

.field public static final KEYCODE_ANT_CONNECT:I = 0x124

.field public static final KEYCODE_ANT_UNCONNECT:I = 0x125

.field public static final KEYCODE_APOSTROPHE:I = 0x4b

.field public static final KEYCODE_APP_SWITCH:I = 0xbb

.field public static final KEYCODE_ASSIST:I = 0xdb

.field public static final KEYCODE_AT:I = 0x4d

.field public static final KEYCODE_AVR_INPUT:I = 0xb6

.field public static final KEYCODE_AVR_POWER:I = 0xb5

.field public static final KEYCODE_B:I = 0x1e

.field public static final KEYCODE_BACK:I = 0x4

.field public static final KEYCODE_BACKSLASH:I = 0x49

.field public static final KEYCODE_BOOKMARK:I = 0xae

.field public static final KEYCODE_BREAK:I = 0x79

.field public static final KEYCODE_BRIGHTNESS_DOWN:I = 0xdc

.field public static final KEYCODE_BRIGHTNESS_UP:I = 0xdd

.field public static final KEYCODE_BUTTON_1:I = 0xbc

.field public static final KEYCODE_BUTTON_10:I = 0xc5

.field public static final KEYCODE_BUTTON_11:I = 0xc6

.field public static final KEYCODE_BUTTON_12:I = 0xc7

.field public static final KEYCODE_BUTTON_13:I = 0xc8

.field public static final KEYCODE_BUTTON_14:I = 0xc9

.field public static final KEYCODE_BUTTON_15:I = 0xca

.field public static final KEYCODE_BUTTON_16:I = 0xcb

.field public static final KEYCODE_BUTTON_2:I = 0xbd

.field public static final KEYCODE_BUTTON_3:I = 0xbe

.field public static final KEYCODE_BUTTON_4:I = 0xbf

.field public static final KEYCODE_BUTTON_5:I = 0xc0

.field public static final KEYCODE_BUTTON_6:I = 0xc1

.field public static final KEYCODE_BUTTON_7:I = 0xc2

.field public static final KEYCODE_BUTTON_8:I = 0xc3

.field public static final KEYCODE_BUTTON_9:I = 0xc4

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_C:I = 0x62

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_MODE:I = 0x6e

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_BUTTON_Z:I = 0x65

.field public static final KEYCODE_C:I = 0x1f

.field public static final KEYCODE_CALCULATOR:I = 0xd2

.field public static final KEYCODE_CALENDAR:I = 0xd0

.field public static final KEYCODE_CALL:I = 0x5

.field public static final KEYCODE_CAMERA:I = 0x1b

.field public static final KEYCODE_CAM_SWITCH_CLOSE:I = 0x123

.field public static final KEYCODE_CAM_SWITCH_OPEN:I = 0x122

.field public static final KEYCODE_CAPS_LOCK:I = 0x73

.field public static final KEYCODE_CAPTIONS:I = 0xaf

.field public static final KEYCODE_CAP_CLOSE:I = 0x11f

.field public static final KEYCODE_CAP_OPEN:I = 0x11e

.field public static final KEYCODE_CHANNEL_DOWN:I = 0xa7

.field public static final KEYCODE_CHANNEL_UP:I = 0xa6

.field public static final KEYCODE_CLEAR:I = 0x1c

.field public static final KEYCODE_COMMA:I = 0x37

.field public static final KEYCODE_CONTACTS:I = 0xcf

.field public static final KEYCODE_COPY:I = 0x116

.field public static final KEYCODE_CTRL_LEFT:I = 0x71

.field public static final KEYCODE_CTRL_RIGHT:I = 0x72

.field public static final KEYCODE_CUT:I = 0x115

.field public static final KEYCODE_D:I = 0x20

.field public static final KEYCODE_DEL:I = 0x43

.field public static final KEYCODE_DPAD_CENTER:I = 0x17

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_DOWN_LEFT:I = 0x10d

.field public static final KEYCODE_DPAD_DOWN_RIGHT:I = 0x10f

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_DPAD_UP_LEFT:I = 0x10c

.field public static final KEYCODE_DPAD_UP_RIGHT:I = 0x10e

.field public static final KEYCODE_DVR:I = 0xad

.field public static final KEYCODE_E:I = 0x21

.field public static final KEYCODE_EISU:I = 0xd4

.field public static final KEYCODE_ENDCALL:I = 0x6

.field public static final KEYCODE_ENTER:I = 0x42

.field public static final KEYCODE_ENVELOPE:I = 0x41

.field public static final KEYCODE_EQUALS:I = 0x46

.field public static final KEYCODE_ESCAPE:I = 0x6f

.field public static final KEYCODE_EXPLORER:I = 0x40

.field public static final KEYCODE_F:I = 0x22

.field public static final KEYCODE_F1:I = 0x83

.field public static final KEYCODE_F10:I = 0x8c

.field public static final KEYCODE_F11:I = 0x8d

.field public static final KEYCODE_F12:I = 0x8e

.field public static final KEYCODE_F2:I = 0x84

.field public static final KEYCODE_F3:I = 0x85

.field public static final KEYCODE_F4:I = 0x86

.field public static final KEYCODE_F5:I = 0x87

.field public static final KEYCODE_F6:I = 0x88

.field public static final KEYCODE_F7:I = 0x89

.field public static final KEYCODE_F8:I = 0x8a

.field public static final KEYCODE_F9:I = 0x8b

.field public static final KEYCODE_FOCUS:I = 0x50

.field public static final KEYCODE_FORWARD:I = 0x7d

.field public static final KEYCODE_FORWARD_DEL:I = 0x70

.field public static final KEYCODE_FUNCTION:I = 0x77

.field public static final KEYCODE_G:I = 0x23

.field public static final KEYCODE_GRAVE:I = 0x44

.field public static final KEYCODE_GUIDE:I = 0xac

.field public static final KEYCODE_H:I = 0x24

.field public static final KEYCODE_HALL_CLOSE:I = 0x11d

.field public static final KEYCODE_HALL_HOLDER_CLOSE:I = 0x121

.field public static final KEYCODE_HALL_HOLDER_OPEN:I = 0x120

.field public static final KEYCODE_HALL_OPEN:I = 0x11c

.field public static final KEYCODE_HEADSETHOOK:I = 0x4f

.field public static final KEYCODE_HELP:I = 0x103

.field public static final KEYCODE_HENKAN:I = 0xd6

.field public static final KEYCODE_HOME:I = 0x3

.field public static final KEYCODE_I:I = 0x25

.field public static final KEYCODE_INFO:I = 0xa5

.field public static final KEYCODE_INSERT:I = 0x7c

.field public static final KEYCODE_J:I = 0x26

.field public static final KEYCODE_K:I = 0x27

.field public static final KEYCODE_KANA:I = 0xda

.field public static final KEYCODE_KATAKANA_HIRAGANA:I = 0xd7

.field public static final KEYCODE_L:I = 0x28

.field public static final KEYCODE_LANGUAGE_SWITCH:I = 0xcc

.field public static final KEYCODE_LAST_CHANNEL:I = 0xe5

.field public static final KEYCODE_LEFT_BRACKET:I = 0x47

.field public static final KEYCODE_M:I = 0x29

.field public static final KEYCODE_MANNER_MODE:I = 0xcd

.field public static final KEYCODE_MEDIA_AUDIO_TRACK:I = 0xde

.field public static final KEYCODE_MEDIA_CLOSE:I = 0x80

.field public static final KEYCODE_MEDIA_EJECT:I = 0x81

.field public static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field public static final KEYCODE_MEDIA_NEXT:I = 0x57

.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field public static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field public static final KEYCODE_MEDIA_RECORD:I = 0x82

.field public static final KEYCODE_MEDIA_REWIND:I = 0x59

.field public static final KEYCODE_MEDIA_SKIP_BACKWARD:I = 0x111

.field public static final KEYCODE_MEDIA_SKIP_FORWARD:I = 0x110

.field public static final KEYCODE_MEDIA_STEP_BACKWARD:I = 0x113

.field public static final KEYCODE_MEDIA_STEP_FORWARD:I = 0x112

.field public static final KEYCODE_MEDIA_STOP:I = 0x56

.field public static final KEYCODE_MEDIA_TOP_MENU:I = 0xe2

.field public static final KEYCODE_MENU:I = 0x52

.field public static final KEYCODE_META_LEFT:I = 0x75

.field public static final KEYCODE_META_RIGHT:I = 0x76

.field public static final KEYCODE_MINUS:I = 0x45

.field public static final KEYCODE_MOVE_END:I = 0x7b

.field public static final KEYCODE_MOVE_HOME:I = 0x7a

.field public static final KEYCODE_MUHENKAN:I = 0xd5

.field public static final KEYCODE_MUSIC:I = 0xd1

.field public static final KEYCODE_MUTE:I = 0x5b

.field public static final KEYCODE_N:I = 0x2a

.field public static final KEYCODE_NAVIGATE_IN:I = 0x106

.field public static final KEYCODE_NAVIGATE_NEXT:I = 0x105

.field public static final KEYCODE_NAVIGATE_OUT:I = 0x107

.field public static final KEYCODE_NAVIGATE_PREVIOUS:I = 0x104

.field public static final KEYCODE_NOTIFICATION:I = 0x53

.field public static final KEYCODE_NUM:I = 0x4e

.field public static final KEYCODE_NUMPAD_0:I = 0x90

.field public static final KEYCODE_NUMPAD_1:I = 0x91

.field public static final KEYCODE_NUMPAD_2:I = 0x92

.field public static final KEYCODE_NUMPAD_3:I = 0x93

.field public static final KEYCODE_NUMPAD_4:I = 0x94

.field public static final KEYCODE_NUMPAD_5:I = 0x95

.field public static final KEYCODE_NUMPAD_6:I = 0x96

.field public static final KEYCODE_NUMPAD_7:I = 0x97

.field public static final KEYCODE_NUMPAD_8:I = 0x98

.field public static final KEYCODE_NUMPAD_9:I = 0x99

.field public static final KEYCODE_NUMPAD_ADD:I = 0x9d

.field public static final KEYCODE_NUMPAD_COMMA:I = 0x9f

.field public static final KEYCODE_NUMPAD_DIVIDE:I = 0x9a

.field public static final KEYCODE_NUMPAD_DOT:I = 0x9e

.field public static final KEYCODE_NUMPAD_ENTER:I = 0xa0

.field public static final KEYCODE_NUMPAD_EQUALS:I = 0xa1

.field public static final KEYCODE_NUMPAD_LEFT_PAREN:I = 0xa2

.field public static final KEYCODE_NUMPAD_MULTIPLY:I = 0x9b

.field public static final KEYCODE_NUMPAD_RIGHT_PAREN:I = 0xa3

.field public static final KEYCODE_NUMPAD_SUBTRACT:I = 0x9c

.field public static final KEYCODE_NUM_LOCK:I = 0x8f

.field public static final KEYCODE_O:I = 0x2b

.field public static final KEYCODE_P:I = 0x2c

.field public static final KEYCODE_PAGE_DOWN:I = 0x5d

.field public static final KEYCODE_PAGE_UP:I = 0x5c

.field public static final KEYCODE_PAIRING:I = 0xe1

.field public static final KEYCODE_PASTE:I = 0x117

.field public static final KEYCODE_PERIOD:I = 0x38

.field public static final KEYCODE_PICTSYMBOLS:I = 0x5e

.field public static final KEYCODE_PLUS:I = 0x51

.field public static final KEYCODE_POUND:I = 0x12

.field public static final KEYCODE_POWER:I = 0x1a

.field public static final KEYCODE_PROG_BLUE:I = 0xba

.field public static final KEYCODE_PROG_GREEN:I = 0xb8

.field public static final KEYCODE_PROG_RED:I = 0xb7

.field public static final KEYCODE_PROG_YELLOW:I = 0xb9

.field public static final KEYCODE_Q:I = 0x2d

.field public static final KEYCODE_R:I = 0x2e

.field public static final KEYCODE_RIGHT_BRACKET:I = 0x48

.field public static final KEYCODE_RO:I = 0xd9

.field public static final KEYCODE_S:I = 0x2f

.field public static final KEYCODE_SCROLL_LOCK:I = 0x74

.field public static final KEYCODE_SEARCH:I = 0x54

.field public static final KEYCODE_SEMICOLON:I = 0x4a

.field public static final KEYCODE_SETTINGS:I = 0xb0

.field public static final KEYCODE_SHIFT_LEFT:I = 0x3b

.field public static final KEYCODE_SHIFT_RIGHT:I = 0x3c

.field public static final KEYCODE_SLASH:I = 0x4c

.field public static final KEYCODE_SLEEP:I = 0xdf

.field public static final KEYCODE_SOFT_LEFT:I = 0x1

.field public static final KEYCODE_SOFT_RIGHT:I = 0x2

.field public static final KEYCODE_SOFT_SLEEP:I = 0x114

.field public static final KEYCODE_SPACE:I = 0x3e

.field public static final KEYCODE_STAR:I = 0x11

.field public static final KEYCODE_STB_INPUT:I = 0xb4

.field public static final KEYCODE_STB_POWER:I = 0xb3

.field public static final KEYCODE_STEM_1:I = 0x109

.field public static final KEYCODE_STEM_2:I = 0x10a

.field public static final KEYCODE_STEM_3:I = 0x10b

.field public static final KEYCODE_STEM_PRIMARY:I = 0x108

.field public static final KEYCODE_SWITCH_CHARSET:I = 0x5f

.field public static final KEYCODE_SYM:I = 0x3f

.field public static final KEYCODE_SYSRQ:I = 0x78

.field public static final KEYCODE_SYSTEM_NAVIGATION_DOWN:I = 0x119

.field public static final KEYCODE_SYSTEM_NAVIGATION_LEFT:I = 0x11a

.field public static final KEYCODE_SYSTEM_NAVIGATION_RIGHT:I = 0x11b

.field public static final KEYCODE_SYSTEM_NAVIGATION_UP:I = 0x118

.field public static final KEYCODE_T:I = 0x30

.field public static final KEYCODE_TAB:I = 0x3d

.field public static final KEYCODE_TV:I = 0xaa

.field public static final KEYCODE_TV_ANTENNA_CABLE:I = 0xf2

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION:I = 0xfc

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION_MIX_DOWN:I = 0xfe

.field public static final KEYCODE_TV_AUDIO_DESCRIPTION_MIX_UP:I = 0xfd

.field public static final KEYCODE_TV_CONTENTS_MENU:I = 0x100

.field public static final KEYCODE_TV_DATA_SERVICE:I = 0xe6

.field public static final KEYCODE_TV_INPUT:I = 0xb2

.field public static final KEYCODE_TV_INPUT_COMPONENT_1:I = 0xf9

.field public static final KEYCODE_TV_INPUT_COMPONENT_2:I = 0xfa

.field public static final KEYCODE_TV_INPUT_COMPOSITE_1:I = 0xf7

.field public static final KEYCODE_TV_INPUT_COMPOSITE_2:I = 0xf8

.field public static final KEYCODE_TV_INPUT_HDMI_1:I = 0xf3

.field public static final KEYCODE_TV_INPUT_HDMI_2:I = 0xf4

.field public static final KEYCODE_TV_INPUT_HDMI_3:I = 0xf5

.field public static final KEYCODE_TV_INPUT_HDMI_4:I = 0xf6

.field public static final KEYCODE_TV_INPUT_VGA_1:I = 0xfb

.field public static final KEYCODE_TV_MEDIA_CONTEXT_MENU:I = 0x101

.field public static final KEYCODE_TV_NETWORK:I = 0xf1

.field public static final KEYCODE_TV_NUMBER_ENTRY:I = 0xea

.field public static final KEYCODE_TV_POWER:I = 0xb1

.field public static final KEYCODE_TV_RADIO_SERVICE:I = 0xe8

.field public static final KEYCODE_TV_SATELLITE:I = 0xed

.field public static final KEYCODE_TV_SATELLITE_BS:I = 0xee

.field public static final KEYCODE_TV_SATELLITE_CS:I = 0xef

.field public static final KEYCODE_TV_SATELLITE_SERVICE:I = 0xf0

.field public static final KEYCODE_TV_TELETEXT:I = 0xe9

.field public static final KEYCODE_TV_TERRESTRIAL_ANALOG:I = 0xeb

.field public static final KEYCODE_TV_TERRESTRIAL_DIGITAL:I = 0xec

.field public static final KEYCODE_TV_TIMER_PROGRAMMING:I = 0x102

.field public static final KEYCODE_TV_ZOOM_MODE:I = 0xff

.field public static final KEYCODE_U:I = 0x31

.field public static final KEYCODE_UNKNOWN:I = 0x0

.field public static final KEYCODE_V:I = 0x32

.field public static final KEYCODE_VOICE_ASSIST:I = 0xe7

.field public static final KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final KEYCODE_VOLUME_MUTE:I = 0xa4

.field public static final KEYCODE_VOLUME_UP:I = 0x18

.field public static final KEYCODE_W:I = 0x33

.field public static final KEYCODE_WAKEUP:I = 0xe0

.field public static final KEYCODE_WINDOW:I = 0xab

.field public static final KEYCODE_X:I = 0x34

.field public static final KEYCODE_Y:I = 0x35

.field public static final KEYCODE_YEN:I = 0xd8

.field public static final KEYCODE_Z:I = 0x36

.field public static final KEYCODE_ZENKAKU_HANKAKU:I = 0xd3

.field public static final KEYCODE_ZOOM_IN:I = 0xa8

.field public static final KEYCODE_ZOOM_OUT:I = 0xa9

.field private static final LABEL_PREFIX:Ljava/lang/String; = "KEYCODE_"

.field private static final LAST_KEYCODE:I = 0x126

.field public static final MAX_KEYCODE:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_RECYCLED:I = 0xa

.field private static final META_ALL_MASK:I = 0x7770ff

.field public static final META_ALT_LEFT_ON:I = 0x10

.field public static final META_ALT_LOCKED:I = 0x200

.field public static final META_ALT_MASK:I = 0x32

.field public static final META_ALT_ON:I = 0x2

.field public static final META_ALT_RIGHT_ON:I = 0x20

.field public static final META_CAPS_LOCK_ON:I = 0x100000

.field public static final META_CAP_LOCKED:I = 0x100

.field public static final META_CTRL_LEFT_ON:I = 0x2000

.field public static final META_CTRL_MASK:I = 0x7000

.field public static final META_CTRL_ON:I = 0x1000

.field public static final META_CTRL_RIGHT_ON:I = 0x4000

.field public static final META_FUNCTION_ON:I = 0x8

.field private static final META_INVALID_MODIFIER_MASK:I = 0x700f00

.field private static final META_LOCK_MASK:I = 0x700000

.field public static final META_META_LEFT_ON:I = 0x20000

.field public static final META_META_MASK:I = 0x70000

.field public static final META_META_ON:I = 0x10000

.field public static final META_META_RIGHT_ON:I = 0x40000

.field private static final META_MODIFIER_MASK:I = 0x770ff

.field public static final META_NUM_LOCK_ON:I = 0x200000

.field public static final META_SCROLL_LOCK_ON:I = 0x400000

.field public static final META_SELECTING:I = 0x800

.field public static final META_SHIFT_LEFT_ON:I = 0x40

.field public static final META_SHIFT_MASK:I = 0xc1

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SHIFT_RIGHT_ON:I = 0x80

.field private static final META_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final META_SYM_LOCKED:I = 0x400

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYNTHETIC_MASK:I = 0xf00

.field static final TAG:Ljava/lang/String; = "KeyEvent"

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/KeyEvent;

.field private static gRecyclerUsed:I


# instance fields
.field private mAction:I

.field private mCharacters:Ljava/lang/String;

.field private mDeviceId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mFlags:I

.field private mKeyCode:I

.field private mMetaState:I

.field private mNext:Landroid/view/KeyEvent;

.field private mRepeatCount:I

.field private mScanCode:I

.field private mSource:I


# direct methods
.method static synthetic -get0(Landroid/view/KeyEvent;)I
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method static synthetic -set0(Landroid/view/KeyEvent;I)I
    .registers 2

    iput p1, p0, Landroid/view/KeyEvent;->mFlags:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "META_SHIFT_ON"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_ALT_ON"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_SYM_ON"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_FUNCTION_ON"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_ALT_LEFT_ON"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_ALT_RIGHT_ON"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_SHIFT_LEFT_ON"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_SHIFT_RIGHT_ON"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_CAP_LOCKED"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_ALT_LOCKED"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_SYM_LOCKED"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "0x00000800"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_CTRL_ON"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_CTRL_LEFT_ON"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_CTRL_RIGHT_ON"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "0x00008000"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_META_ON"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_META_LEFT_ON"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_META_RIGHT_ON"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "0x00080000"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_CAPS_LOCK_ON"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_NUM_LOCK_ON"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "META_SCROLL_LOCK_ON"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "0x00800000"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "0x01000000"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "0x02000000"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "0x04000000"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "0x08000000"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "0x10000000"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "0x20000000"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "0x40000000"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "0x80000000"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/KeyEvent$1;

    invoke-direct {v0}, Landroid/view/KeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    iput p1, p0, Landroid/view/KeyEvent;->mAction:I

    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return-void
.end method

.method public constructor <init>(JJIII)V
    .registers 9

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return-void
.end method

.method public constructor <init>(JJIIII)V
    .registers 10

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .registers 12

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    return-void
.end method

.method public constructor <init>(JJIIIIIII)V
    .registers 13

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public constructor <init>(JJIIIIIIII)V
    .registers 14

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;II)V
    .registers 9

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide p1, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput-object p3, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    iput v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput p4, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput p5, p0, Landroid/view/KeyEvent;->mFlags:I

    const/16 v0, 0x101

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .registers 4

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/view/KeyEvent;I)V
    .registers 5

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;JI)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide p2, p0, Landroid/view/KeyEvent;->mEventTime:J

    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput p4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "ACTION_DOWN"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "ACTION_UP"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "ACTION_MULTIPLE"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method public static changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 3

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;I)V

    return-object v0
.end method

.method public static changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 3

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iput p1, v0, Landroid/view/KeyEvent;->mFlags:I

    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;
    .registers 5

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;
    .registers 6

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    iput-wide p1, v0, Landroid/view/KeyEvent;->mEventTime:J

    iput p3, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput p4, v0, Landroid/view/KeyEvent;->mFlags:I

    return-object v0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .registers 2

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static getDeadChar(II)I
    .registers 3

    invoke-static {p0, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v0

    return v0
.end method

.method public static getMaxKeyCode()I
    .registers 1

    const/16 v0, 0x126

    return v0
.end method

.method public static getModifierMetaStateMask()I
    .registers 1

    const v0, 0x770ff

    return v0
.end method

.method public static final isAltKey(I)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x39

    if-eq p0, v1, :cond_9

    const/16 v1, 0x3a

    if-ne p0, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static final isConfirmKey(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x17 -> :sswitch_5
        0x3e -> :sswitch_5
        0x42 -> :sswitch_5
        0xa0 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isGamepadButton(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x60 -> :sswitch_5
        0x61 -> :sswitch_5
        0x62 -> :sswitch_5
        0x63 -> :sswitch_5
        0x64 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x69 -> :sswitch_5
        0x6a -> :sswitch_5
        0x6b -> :sswitch_5
        0x6c -> :sswitch_5
        0x6d -> :sswitch_5
        0x6e -> :sswitch_5
        0xbc -> :sswitch_5
        0xbd -> :sswitch_5
        0xbe -> :sswitch_5
        0xbf -> :sswitch_5
        0xc0 -> :sswitch_5
        0xc1 -> :sswitch_5
        0xc2 -> :sswitch_5
        0xc3 -> :sswitch_5
        0xc4 -> :sswitch_5
        0xc5 -> :sswitch_5
        0xc6 -> :sswitch_5
        0xc7 -> :sswitch_5
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_5
        0xca -> :sswitch_5
        0xcb -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isMediaKey(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x4f -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isMetaKey(I)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x75

    if-eq p0, v1, :cond_9

    const/16 v1, 0x76

    if-ne p0, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isModifierKey(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x39 -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3c -> :sswitch_5
        0x3f -> :sswitch_5
        0x4e -> :sswitch_5
        0x71 -> :sswitch_5
        0x72 -> :sswitch_5
        0x75 -> :sswitch_5
        0x76 -> :sswitch_5
        0x77 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isSystemKey(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1a -> :sswitch_5
        0x1b -> :sswitch_5
        0x4f -> :sswitch_5
        0x50 -> :sswitch_5
        0x52 -> :sswitch_5
        0x54 -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_5
        0xa4 -> :sswitch_5
        0xdc -> :sswitch_5
        0xdd -> :sswitch_5
        0xde -> :sswitch_5
        0x118 -> :sswitch_5
        0x119 -> :sswitch_5
        0x11a -> :sswitch_5
        0x11b -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isWakeKey(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x3 -> :sswitch_5
        0xe0 -> :sswitch_5
        0xe1 -> :sswitch_5
        0x109 -> :sswitch_5
        0x10a -> :sswitch_5
        0x10b -> :sswitch_5
    .end sparse-switch
.end method

.method public static keyCodeFromString(Ljava/lang/String;)I
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v2, "KEYCODE_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "KEYCODE_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeFromString(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1c

    return v1

    :cond_1c
    const/16 v2, 0xa

    :try_start_1e
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_21} :catch_23

    move-result v2

    return v2

    :catch_23
    move-exception v0

    return v3
.end method

.method public static keyCodeToString(I)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/view/KeyEvent;->nativeKeyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KEYCODE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1a
    return-object v1

    :cond_1b
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .registers 11

    and-int v3, p1, p2

    if-eqz v3, :cond_4c

    const/4 v1, 0x1

    :goto_5
    or-int v0, p3, p4

    and-int v3, p1, v0

    if-eqz v3, :cond_4e

    const/4 v2, 0x1

    :goto_c
    if-eqz v1, :cond_53

    if-eqz v2, :cond_50

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modifiers must not contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " combined with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4c
    const/4 v1, 0x0

    goto :goto_5

    :cond_4e
    const/4 v2, 0x0

    goto :goto_c

    :cond_50
    not-int v3, v0

    and-int/2addr v3, p0

    return v3

    :cond_53
    if-eqz v2, :cond_58

    not-int v3, p2

    and-int/2addr v3, p0

    return v3

    :cond_58
    return p0
.end method

.method public static metaStateHasModifiers(II)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x700f00

    and-int/2addr v2, p1

    if-eqz v2, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "modifiers must not contain META_CAPS_LOCK_ON, META_NUM_LOCK_ON, META_SCROLL_LOCK_ON, META_CAP_LOCKED, META_ALT_LOCKED, META_SYM_LOCKED, or META_SELECTING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v2

    const v3, 0x770ff

    and-int p0, v2, v3

    const/16 v2, 0x40

    const/16 v3, 0x80

    invoke-static {p0, p1, v0, v2, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    const/4 v2, 0x2

    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-static {p0, p1, v2, v3, v4}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    const/16 v2, 0x1000

    const/16 v3, 0x2000

    const/16 v4, 0x4000

    invoke-static {p0, p1, v2, v3, v4}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    const/high16 v2, 0x10000

    const/high16 v3, 0x20000

    const/high16 v4, 0x40000

    invoke-static {p0, p1, v2, v3, v4}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    if-ne p0, p1, :cond_42

    :goto_41
    return v0

    :cond_42
    move v0, v1

    goto :goto_41
.end method

.method public static metaStateHasNoModifiers(I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    const v2, 0x770ff

    and-int/2addr v1, v2

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static metaStateToString(I)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_6

    const-string/jumbo v4, "0"

    return-object v4

    :cond_6
    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_8
    if-eqz p0, :cond_2f

    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_1c

    const/4 v1, 0x1

    :goto_f
    ushr-int/lit8 p0, p0, 0x1

    if-eqz v1, :cond_23

    sget-object v4, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v2, v4, v0

    if-nez v3, :cond_26

    if-nez p0, :cond_1e

    return-object v2

    :cond_1c
    const/4 v1, 0x0

    goto :goto_f

    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_26
    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static native nativeKeyCodeFromString(Ljava/lang/String;)I
.end method

.method private static native nativeKeyCodeToString(I)Ljava/lang/String;
.end method

.method public static normalizeMetaState(I)I
    .registers 2

    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_6

    or-int/lit8 p0, p0, 0x1

    :cond_6
    and-int/lit8 v0, p0, 0x30

    if-eqz v0, :cond_c

    or-int/lit8 p0, p0, 0x2

    :cond_c
    and-int/lit16 v0, p0, 0x6000

    if-eqz v0, :cond_12

    or-int/lit16 p0, p0, 0x1000

    :cond_12
    const/high16 v0, 0x60000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1a

    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    :cond_1a
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_21

    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    :cond_21
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_27

    or-int/lit8 p0, p0, 0x2

    :cond_27
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_2d

    or-int/lit8 p0, p0, 0x4

    :cond_2d
    const v0, 0x7770ff

    and-int/2addr v0, p0

    return v0
.end method

.method private static obtain()Landroid/view/KeyEvent;
    .registers 4

    const/4 v3, 0x0

    sget-object v2, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    if-nez v0, :cond_f

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1}, Landroid/view/KeyEvent;-><init>()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_20

    monitor-exit v2

    return-object v1

    :cond_f
    :try_start_f
    iget-object v1, v0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    sput-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    sget v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/KeyEvent;->gRecyclerUsed:I
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_20

    monitor-exit v2

    iput-object v3, v0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->prepareForReuse()V

    return-object v0

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .registers 15

    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    iput-wide p0, v0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide p2, v0, Landroid/view/KeyEvent;->mEventTime:J

    iput p4, v0, Landroid/view/KeyEvent;->mAction:I

    iput p5, v0, Landroid/view/KeyEvent;->mKeyCode:I

    iput p6, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput p7, v0, Landroid/view/KeyEvent;->mMetaState:I

    iput p8, v0, Landroid/view/KeyEvent;->mDeviceId:I

    iput p9, v0, Landroid/view/KeyEvent;->mScanCode:I

    iput p10, v0, Landroid/view/KeyEvent;->mFlags:I

    iput p11, v0, Landroid/view/KeyEvent;->mSource:I

    iput-object p12, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public static obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 5

    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v2, v0, Landroid/view/KeyEvent;->mDownTime:J

    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v2, v0, Landroid/view/KeyEvent;->mEventTime:J

    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    iput v1, v0, Landroid/view/KeyEvent;->mAction:I

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mKeyCode:I

    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v1, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    iput v1, v0, Landroid/view/KeyEvent;->mMetaState:I

    iget v1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDeviceId:I

    iget v1, p0, Landroid/view/KeyEvent;->mScanCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mScanCode:I

    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    iput v1, v0, Landroid/view/KeyEvent;->mFlags:I

    iget v1, p0, Landroid/view/KeyEvent;->mSource:I

    iput v1, v0, Landroid/view/KeyEvent;->mSource:I

    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .registers 2

    invoke-virtual {p0}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/KeyEvent;
    .registers 2

    invoke-static {p0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v5, p0, Landroid/view/KeyEvent;->mAction:I

    packed-switch v5, :pswitch_data_74

    return v6

    :pswitch_8
    iget v5, p0, Landroid/view/KeyEvent;->mFlags:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/KeyEvent;->mFlags:I

    iget v5, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v5, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz p2, :cond_28

    if-eqz v4, :cond_29

    iget v5, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    if-nez v5, :cond_29

    iget v5, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v5, v6

    if-eqz v5, :cond_29

    invoke-virtual {p2, p0, p3}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_28
    :goto_28
    return v4

    :cond_29
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_28

    :try_start_35
    iget v5, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v5, p0}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_40
    .catch Ljava/lang/AbstractMethodError; {:try_start_35 .. :try_end_40} :catch_71

    const/4 v4, 0x1

    goto :goto_28

    :pswitch_42
    if-eqz p2, :cond_47

    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_47
    iget v5, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v5, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    return v5

    :pswitch_4e
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v0, v1, p0}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_59

    return v7

    :cond_59
    if-eqz v0, :cond_70

    iput v6, p0, Landroid/view/KeyEvent;->mAction:I

    iput v6, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_6a

    iput v7, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_6a
    const/4 v5, 0x2

    iput v5, p0, Landroid/view/KeyEvent;->mAction:I

    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    return v3

    :cond_70
    return v6

    :catch_71
    move-exception v2

    goto :goto_28

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_8
        :pswitch_42
        :pswitch_4e
    .end packed-switch
.end method

.method public final getAction()I
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    return v0
.end method

.method public final getCharacters()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()I
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public getDisplayLabel()C
    .registers 3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .registers 3

    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    return-wide v0
.end method

.method public final getEventTime()J
    .registers 3

    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .registers 5

    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getFlags()I
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public final getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyCode()I
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    return v0
.end method

.method public getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    return v0
.end method

.method public final getKeyboardDevice()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public getMatch([C)C
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public getMatch([CI)C
    .registers 5

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    return v0
.end method

.method public final getModifiers()I
    .registers 3

    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    return v0
.end method

.method public getNumber()C
    .registers 3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v0

    return v0
.end method

.method public final getRepeatCount()I
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    return v0
.end method

.method public final getScanCode()I
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    return v0
.end method

.method public final getSource()I
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    return v0
.end method

.method public getUnicodeChar()I
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p0, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    return v0
.end method

.method public getUnicodeChar(I)I
    .registers 4

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    return v0
.end method

.method public final hasModifiers(I)Z
    .registers 3

    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public final hasNoModifiers()Z
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public final isAltPressed()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public final isCanceled()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public final isCapsLockOn()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public final isCtrlPressed()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public final isDown()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public final isFunctionPressed()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public final isLongPress()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public final isMetaPressed()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public final isNumLockOn()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public isPrintingKey()Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    return v0
.end method

.method public final isScrollLockOn()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public final isShiftPressed()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public final isSymPressed()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public final isSystem()Z
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    move-result v0

    return v0
.end method

.method public final isTainted()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public final isTracking()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public final isWakeKey()Z
    .registers 2

    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v0}, Landroid/view/KeyEvent;->isWakeKey(I)Z

    move-result v0

    return v0
.end method

.method public final recycle()V
    .registers 4

    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    sget-object v1, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    sget v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1b

    sget v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    sget-object v0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    iput-object v0, p0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    sput-object p0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final recycleIfNeededAfterDispatch()V
    .registers 1

    return-void
.end method

.method public final setSource(I)V
    .registers 2

    iput p1, p0, Landroid/view/KeyEvent;->mSource:I

    return-void
.end method

.method public final setTainted(Z)V
    .registers 4

    if-eqz p1, :cond_a

    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :goto_7
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void

    :cond_a
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    goto :goto_7
.end method

.method public final startTracking()V
    .registers 3

    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KeyEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-static {v2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", scanCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    if-eqz v1, :cond_48

    const-string/jumbo v1, ", characters=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    const-string/jumbo v1, ", metaState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", repeatCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", downTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", source=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method