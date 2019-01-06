.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final ASSETS_SEQ_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_HDR_MASK:I = 0xc

.field public static final COLOR_MODE_HDR_NO:I = 0x4

.field public static final COLOR_MODE_HDR_SHIFT:I = 0x2

.field public static final COLOR_MODE_HDR_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_HDR_YES:I = 0x8

.field public static final COLOR_MODE_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_MASK:I = 0x3

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_NO:I = 0x1

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_UNDEFINED:I = 0x0

.field public static final COLOR_MODE_WIDE_COLOR_GAMUT_YES:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_DPI_ANY:I = 0xfffe

.field public static final DENSITY_DPI_NONE:I = 0xffff

.field public static final DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final EMPTY:Landroid/content/res/Configuration;

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final MNC_ZERO:I = 0xffff

.field public static final NATIVE_CONFIG_COLOR_MODE:I = 0x10000

.field public static final NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final NATIVE_CONFIG_KEYBOARD:I = 0x10

.field public static final NATIVE_CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final NATIVE_CONFIG_LAYOUTDIR:I = 0x4000

.field public static final NATIVE_CONFIG_LOCALE:I = 0x4

.field public static final NATIVE_CONFIG_MCC:I = 0x1

.field public static final NATIVE_CONFIG_MNC:I = 0x2

.field public static final NATIVE_CONFIG_NAVIGATION:I = 0x40

.field public static final NATIVE_CONFIG_ORIENTATION:I = 0x80

.field public static final NATIVE_CONFIG_SCREEN_LAYOUT:I = 0x800

.field public static final NATIVE_CONFIG_SCREEN_SIZE:I = 0x200

.field public static final NATIVE_CONFIG_SMALLEST_SCREEN_SIZE:I = 0x2000

.field public static final NATIVE_CONFIG_TOUCHSCREEN:I = 0x8

.field public static final NATIVE_CONFIG_UI_MODE:I = 0x1000

.field public static final NATIVE_CONFIG_VERSION:I = 0x400

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_ROUND_MASK:I = 0x300

.field public static final SCREENLAYOUT_ROUND_NO:I = 0x100

.field public static final SCREENLAYOUT_ROUND_SHIFT:I = 0x8

.field public static final SCREENLAYOUT_ROUND_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_ROUND_YES:I = 0x200

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I = 0x0

.field public static final UI_MODE_TYPE_VR_HEADSET:I = 0x7

.field public static final UI_MODE_TYPE_WATCH:I = 0x6

.field private static final XML_ATTR_APP_BOUNDS:Ljava/lang/String; = "app_bounds"

.field private static final XML_ATTR_COLOR_MODE:Ljava/lang/String; = "clrMod"

.field private static final XML_ATTR_DENSITY:Ljava/lang/String; = "density"

.field private static final XML_ATTR_FONT_SCALE:Ljava/lang/String; = "fs"

.field private static final XML_ATTR_HARD_KEYBOARD_HIDDEN:Ljava/lang/String; = "hardKeyHid"

.field private static final XML_ATTR_KEYBOARD:Ljava/lang/String; = "key"

.field private static final XML_ATTR_KEYBOARD_HIDDEN:Ljava/lang/String; = "keyHid"

.field private static final XML_ATTR_LOCALES:Ljava/lang/String; = "locales"

.field private static final XML_ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final XML_ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final XML_ATTR_NAVIGATION:Ljava/lang/String; = "nav"

.field private static final XML_ATTR_NAVIGATION_HIDDEN:Ljava/lang/String; = "navHid"

.field private static final XML_ATTR_ORIENTATION:Ljava/lang/String; = "ori"

.field private static final XML_ATTR_ROTATION:Ljava/lang/String; = "rot"

.field private static final XML_ATTR_SCREEN_HEIGHT:Ljava/lang/String; = "height"

.field private static final XML_ATTR_SCREEN_LAYOUT:Ljava/lang/String; = "scrLay"

.field private static final XML_ATTR_SCREEN_WIDTH:Ljava/lang/String; = "width"

.field private static final XML_ATTR_SMALLEST_WIDTH:Ljava/lang/String; = "sw"

.field private static final XML_ATTR_TOUCHSCREEN:Ljava/lang/String; = "touch"

.field private static final XML_ATTR_UI_MODE:Ljava/lang/String; = "ui"


# instance fields
.field public appBounds:Landroid/graphics/Rect;

.field public assetsSeq:I

.field public colorMode:I

.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public densityDpi:I

.field public extraConfig:Landroid/content/res/MiuiConfiguration;

.field public fontScale:F

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mLocaleList:Landroid/os/LocaleList;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public seq:I

.field public smallestScreenWidthDp:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/MiuiConfiguration;

    invoke-direct {v0}, Landroid/content/res/MiuiConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/MiuiConfiguration;

    invoke-direct {v0}, Landroid/content/res/MiuiConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/MiuiConfiguration;

    invoke-direct {v0}, Landroid/content/res/MiuiConfiguration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static configurationDiffToString(I)Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_f

    const-string/jumbo v4, "CONFIG_MCC"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    and-int/lit8 v4, p0, 0x2

    if-eqz v4, :cond_19

    const-string/jumbo v4, "CONFIG_MNC"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    and-int/lit8 v4, p0, 0x4

    if-eqz v4, :cond_23

    const-string/jumbo v4, "CONFIG_LOCALE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    and-int/lit8 v4, p0, 0x8

    if-eqz v4, :cond_2d

    const-string/jumbo v4, "CONFIG_TOUCHSCREEN"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    and-int/lit8 v4, p0, 0x10

    if-eqz v4, :cond_37

    const-string/jumbo v4, "CONFIG_KEYBOARD"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    and-int/lit8 v4, p0, 0x20

    if-eqz v4, :cond_41

    const-string/jumbo v4, "CONFIG_KEYBOARD_HIDDEN"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    and-int/lit8 v4, p0, 0x40

    if-eqz v4, :cond_4b

    const-string/jumbo v4, "CONFIG_NAVIGATION"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    and-int/lit16 v4, p0, 0x80

    if-eqz v4, :cond_55

    const-string/jumbo v4, "CONFIG_ORIENTATION"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    and-int/lit16 v4, p0, 0x100

    if-eqz v4, :cond_5f

    const-string/jumbo v4, "CONFIG_SCREEN_LAYOUT"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    and-int/lit16 v4, p0, 0x4000

    if-eqz v4, :cond_69

    const-string/jumbo v4, "CONFIG_COLOR_MODE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_69
    and-int/lit16 v4, p0, 0x200

    if-eqz v4, :cond_73

    const-string/jumbo v4, "CONFIG_UI_MODE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    and-int/lit16 v4, p0, 0x400

    if-eqz v4, :cond_7d

    const-string/jumbo v4, "CONFIG_SCREEN_SIZE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    and-int/lit16 v4, p0, 0x800

    if-eqz v4, :cond_87

    const-string/jumbo v4, "CONFIG_SMALLEST_SCREEN_SIZE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    and-int/lit16 v4, p0, 0x2000

    if-eqz v4, :cond_91

    const-string/jumbo v4, "CONFIG_LAYOUT_DIRECTION"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_91
    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, p0

    if-eqz v4, :cond_9c

    const-string/jumbo v4, "CONFIG_FONT_SCALE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9c
    const/high16 v4, -0x80000000

    and-int/2addr v4, p0

    if-eqz v4, :cond_a7

    const-string/jumbo v4, "CONFIG_ASSETS_PATHS"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_b4
    if-ge v1, v3, :cond_cc

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, -0x1

    if-eq v1, v4, :cond_c9

    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c9
    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    :cond_cc
    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private fixUpLocaleList()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_23

    :cond_f
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2d

    :cond_23
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_2e

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    :goto_2b
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    :cond_2d
    return-void

    :cond_2e
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    goto :goto_2b
.end method

.method public static generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 5

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_11

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    :cond_11
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1b

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    :cond_1b
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_25

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, v0, Landroid/content/res/Configuration;->mnc:I

    :cond_25
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_3d
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_47

    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, v0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_47
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_51

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    :cond_51
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_5b

    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_5b
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_65

    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    iput v1, v0, Landroid/content/res/Configuration;->navigation:I

    :cond_65
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_6f

    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_6f
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_79

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    :cond_79
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_8c

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_8c
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_9f

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_9f
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_b2

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_b2
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    if-eq v1, v2, :cond_c5

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_c5
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eq v1, v2, :cond_d8

    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    :cond_d8
    iget v1, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eq v1, v2, :cond_eb

    iget v1, v0, Landroid/content/res/Configuration;->colorMode:I

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->colorMode:I

    :cond_eb
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_fe

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    :cond_fe
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_111

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    :cond_111
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_11b

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_11b
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_125

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_125
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_12f

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_12f
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_139

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_139
    iget v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v1, v2, :cond_143

    iget v1, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    :cond_143
    iget-object v1, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {v1, v2}, Landroid/content/res/MiuiConfiguration;->compareTo(Landroid/content/res/MiuiConfiguration;)I

    move-result v1

    if-eqz v1, :cond_154

    iget-object v1, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-object v2, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {v1, v2}, Landroid/content/res/MiuiConfiguration;->setTo(Landroid/content/res/MiuiConfiguration;)V

    :cond_154
    return-object v0
.end method

.method private static getScreenLayoutNoDirection(I)I
    .registers 2

    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;
    .registers 11

    const/4 v9, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v1, v7, :cond_a0

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1e

    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_42

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    if-ne v2, v9, :cond_64

    if-nez v4, :cond_64

    if-eqz v0, :cond_4a

    if-ne v0, v9, :cond_64

    :cond_4a
    if-nez v6, :cond_64

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v9, :cond_1b

    const-string/jumbo v7, "-r"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_64
    const-string/jumbo v7, "b+"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_80

    const-string/jumbo v7, "+"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_80
    if-eqz v0, :cond_8f

    const-string/jumbo v7, "+"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8f
    if-eqz v6, :cond_1b

    const-string/jumbo v7, "+"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1b

    :cond_a0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static needNewResources(II)Z
    .registers 4

    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    or-int p1, v0, v1

    and-int v0, p0, p1

    if-nez v0, :cond_10

    invoke-static {p0}, Landroid/content/res/MiuiConfiguration;->needNewResources(I)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v1, "fs"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const-string/jumbo v1, "mcc"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->mcc:I

    const-string/jumbo v1, "mnc"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->mnc:I

    const-string/jumbo v1, "locales"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string/jumbo v1, "touch"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    const-string/jumbo v1, "key"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->keyboard:I

    const-string/jumbo v1, "keyHid"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    const-string/jumbo v1, "hardKeyHid"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const-string/jumbo v1, "nav"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->navigation:I

    const-string/jumbo v1, "navHid"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    const-string/jumbo v1, "ori"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->orientation:I

    const-string/jumbo v1, "scrLay"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    const-string/jumbo v1, "clrMod"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->colorMode:I

    const-string/jumbo v1, "ui"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->uiMode:I

    const-string/jumbo v1, "width"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const-string/jumbo v1, "height"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    const-string/jumbo v1, "sw"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string/jumbo v1, "density"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    const-string/jumbo v1, "app_bounds"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public static reduceScreenLayout(III)I
    .registers 9

    const/16 v4, 0x1d6

    if-ge p1, v4, :cond_1b

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_7
    if-nez v2, :cond_d

    and-int/lit8 v4, p0, -0x31

    or-int/lit8 p0, v4, 0x10

    :cond_d
    if-eqz v1, :cond_12

    const/high16 v4, 0x10000000

    or-int/2addr p0, v4

    :cond_12
    and-int/lit8 v0, p0, 0xf

    if-ge v3, v0, :cond_1a

    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v3

    :cond_1a
    return p0

    :cond_1b
    const/16 v4, 0x3c0

    if-lt p1, v4, :cond_37

    const/16 v4, 0x2d0

    if-lt p2, v4, :cond_37

    const/4 v3, 0x4

    :goto_24
    const/16 v4, 0x141

    if-gt p2, v4, :cond_2c

    const/16 v4, 0x23a

    if-le p1, v4, :cond_43

    :cond_2c
    const/4 v1, 0x1

    :goto_2d
    mul-int/lit8 v4, p1, 0x3

    div-int/lit8 v4, v4, 0x5

    add-int/lit8 v5, p2, -0x1

    if-lt v4, v5, :cond_45

    const/4 v2, 0x1

    goto :goto_7

    :cond_37
    const/16 v4, 0x280

    if-lt p1, v4, :cond_41

    const/16 v4, 0x1e0

    if-lt p2, v4, :cond_41

    const/4 v3, 0x3

    goto :goto_24

    :cond_41
    const/4 v3, 0x2

    goto :goto_24

    :cond_43
    const/4 v1, 0x0

    goto :goto_2d

    :cond_45
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public static resetScreenLayout(I)I
    .registers 2

    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public static resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mnc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v2}, Landroid/content/res/Configuration;->localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    sparse-switch v2, :sswitch_data_2d0

    :goto_5d
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_81

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "dp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_a5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "dp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a5
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_c9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "dp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c9
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_2da

    :goto_d0
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_2e6

    :goto_d7
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    sparse-switch v2, :sswitch_data_2f0

    :goto_de
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    sparse-switch v2, :sswitch_data_2fa

    :goto_e5
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_304

    :goto_ec
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_30c

    :goto_f1
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_314

    :goto_f8
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_324

    :goto_ff
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    sparse-switch v2, :sswitch_data_32e

    :goto_104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "dpi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11d
    :sswitch_11d
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_358

    :goto_122
    :pswitch_122
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_362

    :goto_127
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_36c

    :goto_12c
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_376

    :goto_131
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_37e

    :goto_136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "-"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_157
    const-string/jumbo v2, "ldltr"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5d

    :sswitch_15f
    const-string/jumbo v2, "ldrtl"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5d

    :pswitch_167
    const-string/jumbo v2, "small"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d0

    :pswitch_16f
    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d0

    :pswitch_177
    const-string/jumbo v2, "large"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d0

    :pswitch_17f
    const-string/jumbo v2, "xlarge"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d0

    :sswitch_187
    const-string/jumbo v2, "long"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d7

    :sswitch_18f
    const-string/jumbo v2, "notlong"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d7

    :sswitch_197
    const-string/jumbo v2, "round"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_de

    :sswitch_19f
    const-string/jumbo v2, "notround"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_de

    :sswitch_1a7
    const-string/jumbo v2, "highdr"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e5

    :sswitch_1af
    const-string/jumbo v2, "lowdr"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e5

    :pswitch_1b7
    const-string/jumbo v2, "widecg"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ec

    :pswitch_1bf
    const-string/jumbo v2, "nowidecg"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ec

    :pswitch_1c7
    const-string/jumbo v2, "land"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f1

    :pswitch_1cf
    const-string/jumbo v2, "port"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f1

    :pswitch_1d7
    const-string/jumbo v2, "appliance"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f8

    :pswitch_1df
    const-string/jumbo v2, "desk"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f8

    :pswitch_1e7
    const-string/jumbo v2, "television"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f8

    :pswitch_1ef
    const-string/jumbo v2, "car"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f8

    :pswitch_1f7
    const-string/jumbo v2, "watch"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f8

    :pswitch_1ff
    const-string/jumbo v2, "vrheadset"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f8

    :sswitch_207
    const-string/jumbo v2, "night"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ff

    :sswitch_20f
    const-string/jumbo v2, "notnight"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ff

    :sswitch_217
    const-string/jumbo v2, "ldpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11d

    :sswitch_21f
    const-string/jumbo v2, "mdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11d

    :sswitch_227
    const-string/jumbo v2, "tvdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11d

    :sswitch_22f
    const-string/jumbo v2, "hdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11d

    :sswitch_237
    const-string/jumbo v2, "xhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11d

    :sswitch_23f
    const-string/jumbo v2, "xxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11d

    :sswitch_247
    const-string/jumbo v2, "xxxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11d

    :sswitch_24f
    const-string/jumbo v2, "anydpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11d

    :sswitch_257
    const-string/jumbo v2, "nodpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_104

    :pswitch_25f
    const-string/jumbo v2, "notouch"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_122

    :pswitch_267
    const-string/jumbo v2, "finger"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_122

    :pswitch_26f
    const-string/jumbo v2, "keysexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_127

    :pswitch_277
    const-string/jumbo v2, "keyshidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_127

    :pswitch_27f
    const-string/jumbo v2, "keyssoft"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_127

    :pswitch_287
    const-string/jumbo v2, "nokeys"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12c

    :pswitch_28f
    const-string/jumbo v2, "qwerty"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12c

    :pswitch_297
    const-string/jumbo v2, "12key"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12c

    :pswitch_29f
    const-string/jumbo v2, "navexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_131

    :pswitch_2a7
    const-string/jumbo v2, "navhidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_131

    :pswitch_2af
    const-string/jumbo v2, "nonav"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_136

    :pswitch_2b7
    const-string/jumbo v2, "dpad"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_136

    :pswitch_2bf
    const-string/jumbo v2, "trackball"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_136

    :pswitch_2c7
    const-string/jumbo v2, "wheel"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_136

    nop

    :sswitch_data_2d0
    .sparse-switch
        0x40 -> :sswitch_157
        0x80 -> :sswitch_15f
    .end sparse-switch

    :pswitch_data_2da
    .packed-switch 0x1
        :pswitch_167
        :pswitch_16f
        :pswitch_177
        :pswitch_17f
    .end packed-switch

    :sswitch_data_2e6
    .sparse-switch
        0x10 -> :sswitch_18f
        0x20 -> :sswitch_187
    .end sparse-switch

    :sswitch_data_2f0
    .sparse-switch
        0x100 -> :sswitch_19f
        0x200 -> :sswitch_197
    .end sparse-switch

    :sswitch_data_2fa
    .sparse-switch
        0x4 -> :sswitch_1af
        0x8 -> :sswitch_1a7
    .end sparse-switch

    :pswitch_data_304
    .packed-switch 0x1
        :pswitch_1bf
        :pswitch_1b7
    .end packed-switch

    :pswitch_data_30c
    .packed-switch 0x1
        :pswitch_1cf
        :pswitch_1c7
    .end packed-switch

    :pswitch_data_314
    .packed-switch 0x2
        :pswitch_1df
        :pswitch_1ef
        :pswitch_1e7
        :pswitch_1d7
        :pswitch_1f7
        :pswitch_1ff
    .end packed-switch

    :sswitch_data_324
    .sparse-switch
        0x10 -> :sswitch_20f
        0x20 -> :sswitch_207
    .end sparse-switch

    :sswitch_data_32e
    .sparse-switch
        0x0 -> :sswitch_11d
        0x78 -> :sswitch_217
        0xa0 -> :sswitch_21f
        0xd5 -> :sswitch_227
        0xf0 -> :sswitch_22f
        0x140 -> :sswitch_237
        0x1e0 -> :sswitch_23f
        0x280 -> :sswitch_247
        0xfffe -> :sswitch_24f
        0xffff -> :sswitch_257
    .end sparse-switch

    :pswitch_data_358
    .packed-switch 0x1
        :pswitch_25f
        :pswitch_122
        :pswitch_267
    .end packed-switch

    :pswitch_data_362
    .packed-switch 0x1
        :pswitch_26f
        :pswitch_277
        :pswitch_27f
    .end packed-switch

    :pswitch_data_36c
    .packed-switch 0x1
        :pswitch_287
        :pswitch_28f
        :pswitch_297
    .end packed-switch

    :pswitch_data_376
    .packed-switch 0x1
        :pswitch_29f
        :pswitch_2a7
    .end packed-switch

    :pswitch_data_37e
    .packed-switch 0x1
        :pswitch_2af
        :pswitch_2b7
        :pswitch_2bf
        :pswitch_2c7
    .end packed-switch
.end method

.method public static writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "fs"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v0, :cond_18

    const-string/jumbo v0, "mcc"

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_18
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v0, :cond_24

    const-string/jumbo v0, "mnc"

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_24
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    const-string/jumbo v0, "locales"

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_3b
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v0, :cond_47

    const-string/jumbo v0, "touch"

    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_47
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v0, :cond_53

    const-string/jumbo v0, "key"

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_53
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v0, :cond_5f

    const-string/jumbo v0, "keyHid"

    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_5f
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v0, :cond_6b

    const-string/jumbo v0, "hardKeyHid"

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_6b
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v0, :cond_77

    const-string/jumbo v0, "nav"

    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_77
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v0, :cond_83

    const-string/jumbo v0, "navHid"

    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_83
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v0, :cond_8f

    const-string/jumbo v0, "ori"

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_8f
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v0, :cond_9b

    const-string/jumbo v0, "scrLay"

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_9b
    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    if-eqz v0, :cond_a7

    const-string/jumbo v0, "clrMod"

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_a7
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v0, :cond_b3

    const-string/jumbo v0, "ui"

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_b3
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v0, :cond_bf

    const-string/jumbo v0, "width"

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_bf
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v0, :cond_cb

    const-string/jumbo v0, "height"

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_cb
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v0, :cond_d7

    const-string/jumbo v0, "sw"

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_d7
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_e3

    const-string/jumbo v0, "density"

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_e3
    iget-object v0, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_f3

    const-string/jumbo v0, "app_bounds"

    iget-object v1, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_f3
    return-void
.end method


# virtual methods
.method public clearLocales()V
    .registers 2

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-void
.end method

.method public compareTo(Landroid/content/res/Configuration;)I
    .registers 13

    const/4 v10, 0x1

    const/4 v9, -0x1

    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpg-float v7, v0, v1

    if-gez v7, :cond_b

    return v9

    :cond_b
    cmpl-float v7, v0, v1

    if-lez v7, :cond_10

    return v10

    :cond_10
    iget v7, p0, Landroid/content/res/Configuration;->mcc:I

    iget v8, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_19

    return v4

    :cond_19
    iget v7, p0, Landroid/content/res/Configuration;->mnc:I

    iget v8, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_22

    return v4

    :cond_22
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_39

    iget-object v7, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b1

    return v10

    :cond_39
    iget-object v7, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_42

    return v9

    :cond_42
    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    iget-object v8, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v8}, Landroid/os/LocaleList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v2, 0x0

    :goto_53
    if-ge v2, v3, :cond_a0

    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    iget-object v7, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_70

    return v4

    :cond_70
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7f

    return v4

    :cond_7f
    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_8e

    return v4

    :cond_8e
    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_9d

    return v4

    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_a0
    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    iget-object v8, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v8}, Landroid/os/LocaleList;->size()I

    move-result v8

    sub-int v4, v7, v8

    if-eqz v4, :cond_b1

    return v4

    :cond_b1
    iget v7, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v8, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_ba

    return v4

    :cond_ba
    iget v7, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v8, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_c3

    return v4

    :cond_c3
    iget v7, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v8, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_cc

    return v4

    :cond_cc
    iget v7, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v8, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_d5

    return v4

    :cond_d5
    iget v7, p0, Landroid/content/res/Configuration;->navigation:I

    iget v8, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_de

    return v4

    :cond_de
    iget v7, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v8, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_e7

    return v4

    :cond_e7
    iget v7, p0, Landroid/content/res/Configuration;->orientation:I

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_f0

    return v4

    :cond_f0
    iget v7, p0, Landroid/content/res/Configuration;->colorMode:I

    iget v8, p1, Landroid/content/res/Configuration;->colorMode:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_f9

    return v4

    :cond_f9
    iget v7, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v8, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_102

    return v4

    :cond_102
    iget v7, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v8, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_10b

    return v4

    :cond_10b
    iget v7, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v8, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_114

    return v4

    :cond_114
    iget v7, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v8, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_11d

    return v4

    :cond_11d
    iget v7, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v8, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_126

    return v4

    :cond_126
    iget v7, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v8, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_12f

    return v4

    :cond_12f
    iget v7, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v8, p1, Landroid/content/res/Configuration;->assetsSeq:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_138

    return v4

    :cond_138
    iget-object v7, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-nez v7, :cond_141

    iget-object v7, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_141

    return v10

    :cond_141
    iget-object v7, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_14a

    iget-object v7, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-nez v7, :cond_14a

    return v9

    :cond_14a
    iget-object v7, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_186

    iget-object v7, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_186

    iget-object v7, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_15f

    return v4

    :cond_15f
    iget-object v7, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_16c

    return v4

    :cond_16c
    iget-object v7, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_179

    return v4

    :cond_179
    iget-object v7, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_186

    return v4

    :cond_186
    if-nez v4, :cond_190

    iget-object v7, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-object v8, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {v7, v8}, Landroid/content/res/MiuiConfiguration;->compareTo(Landroid/content/res/MiuiConfiguration;)I

    move-result v4

    :cond_190
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;ZZ)I
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_a

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_14

    :cond_a
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_14

    const/high16 v0, 0x40000000    # 2.0f

    :cond_14
    if-nez p2, :cond_1a

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_22

    :cond_1a
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v3, :cond_22

    or-int/lit8 v0, v0, 0x1

    :cond_22
    if-nez p2, :cond_28

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_30

    :cond_28
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v3, :cond_30

    or-int/lit8 v0, v0, 0x2

    :cond_30
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    if-nez p2, :cond_42

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_52

    :cond_42
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_52

    or-int/lit8 v0, v0, 0x4

    or-int/lit16 v0, v0, 0x2000

    :cond_52
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v2, 0xc0

    if-nez p2, :cond_5a

    if-eqz v1, :cond_62

    :cond_5a
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_62

    or-int/lit16 v0, v0, 0x2000

    :cond_62
    if-nez p2, :cond_68

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_70

    :cond_68
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_70

    or-int/lit8 v0, v0, 0x8

    :cond_70
    if-nez p2, :cond_76

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_7e

    :cond_76
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_7e

    or-int/lit8 v0, v0, 0x10

    :cond_7e
    if-nez p2, :cond_84

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_8c

    :cond_84
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_8c

    or-int/lit8 v0, v0, 0x20

    :cond_8c
    if-nez p2, :cond_92

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_9a

    :cond_92
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_9a

    or-int/lit8 v0, v0, 0x20

    :cond_9a
    if-nez p2, :cond_a0

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_a8

    :cond_a0
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_a8

    or-int/lit8 v0, v0, 0x40

    :cond_a8
    if-nez p2, :cond_ae

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_b6

    :cond_ae
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_b6

    or-int/lit8 v0, v0, 0x20

    :cond_b6
    if-nez p2, :cond_bc

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_c4

    :cond_bc
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_c4

    or-int/lit16 v0, v0, 0x80

    :cond_c4
    if-nez p2, :cond_ce

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eqz v2, :cond_de

    :cond_ce
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eq v2, v3, :cond_de

    or-int/lit16 v0, v0, 0x100

    :cond_de
    if-nez p2, :cond_e6

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_f2

    :cond_e6
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    if-eq v2, v3, :cond_f2

    or-int/lit16 v0, v0, 0x4000

    :cond_f2
    if-nez p2, :cond_fa

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_106

    :cond_fa
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    if-eq v2, v3, :cond_106

    or-int/lit16 v0, v0, 0x4000

    :cond_106
    if-nez p2, :cond_10c

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_114

    :cond_10c
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v3, :cond_114

    or-int/lit16 v0, v0, 0x200

    :cond_114
    if-nez p2, :cond_11a

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_122

    :cond_11a
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v3, :cond_122

    or-int/lit16 v0, v0, 0x400

    :cond_122
    if-nez p2, :cond_128

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_130

    :cond_128
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v3, :cond_130

    or-int/lit16 v0, v0, 0x400

    :cond_130
    if-nez p2, :cond_136

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_13e

    :cond_136
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v3, :cond_13e

    or-int/lit16 v0, v0, 0x800

    :cond_13e
    if-nez p2, :cond_144

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_14c

    :cond_144
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_14c

    or-int/lit16 v0, v0, 0x1000

    :cond_14c
    if-nez p2, :cond_152

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v2, :cond_15b

    :cond_152
    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v2, v3, :cond_15b

    const/high16 v2, -0x80000000

    or-int/2addr v0, v2

    :cond_15b
    if-nez p2, :cond_161

    iget-object v2, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_199

    :cond_161
    iget-object v2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eq v2, v3, :cond_199

    iget-object v2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_197

    if-nez p3, :cond_179

    iget-object v2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_197

    :cond_179
    if-eqz p3, :cond_199

    iget-object v2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_197

    iget-object v2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_199

    :cond_197
    or-int/lit16 v0, v0, 0x400

    :cond_199
    iget-object v2, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-object v3, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {v2, v3}, Landroid/content/res/MiuiConfiguration;->diff(Landroid/content/res/MiuiConfiguration;)I

    move-result v2

    or-int/2addr v0, v2

    return v0
.end method

.method public diffPublicOnly(Landroid/content/res/Configuration;)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;ZZ)I

    move-result v0

    return v0
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    return v1

    :cond_5
    if-ne p1, p0, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    :try_start_0
    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public getLayoutDirection()I
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getLocales()Landroid/os/LocaleList;
    .registers 2

    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {v2}, Landroid/content/res/MiuiConfiguration;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public isLayoutSizeAtLeast(I)Z
    .registers 5

    const/4 v1, 0x0

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v2, 0xf

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-lt v0, p1, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    return v2

    :cond_5
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    if-nez v3, :cond_a

    return v1

    :cond_a
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    if-nez v3, :cond_f

    return v1

    :cond_f
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    iget v4, p0, Landroid/content/res/Configuration;->seq:I

    sub-int v0, v3, v4

    const/high16 v3, 0x10000

    if-le v0, v3, :cond_1a

    return v2

    :cond_1a
    if-lez v0, :cond_1d

    :goto_1c
    return v1

    :cond_1d
    move v1, v2

    goto :goto_1c
.end method

.method public isScreenHdr()Z
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isScreenRound()Z
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0x300

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isScreenWideColorGamut()Z
    .registers 3

    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public makeDefault()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v1, v2, [Ljava/util/Locale;

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v2, :cond_2a

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2a
    new-instance v5, Landroid/os/LocaleList;

    invoke-direct {v5, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v5, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v5, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v5, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    iput-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v3, :cond_c2

    :goto_3f
    iput-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->seq:I

    iget-object v3, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {v3, p1}, Landroid/content/res/MiuiConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-void

    :cond_c2
    move v3, v4

    goto/16 :goto_3f
.end method

.method public setAppBounds(IIII)V
    .registers 6

    iget-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    :cond_b
    iget-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setAppBounds(Landroid/graphics/Rect;)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_6

    iput-object v0, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    return-void

    :cond_6
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/res/Configuration;->setAppBounds(IIII)V

    return-void
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 5

    if-nez p1, :cond_a

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    return-void

    :cond_a
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    goto :goto_6
.end method

.method public setLocales(Landroid/os/LocaleList;)V
    .registers 4

    if-nez p1, :cond_6

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p1

    :cond_6
    iput-object p1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .registers 4

    const/4 v0, 0x0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v1, :cond_77

    :goto_11
    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v0, p0, Landroid/content/res/Configuration;->colorMode:I

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iget-object v0, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setAppBounds(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v0, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-object v1, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {v0, v1}, Landroid/content/res/MiuiConfiguration;->setTo(Landroid/content/res/MiuiConfiguration;)V

    return-void

    :cond_77
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    goto :goto_11
.end method

.method public setToDefaults()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, p0, Landroid/content/res/Configuration;->colorMode:I

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Landroid/content/res/Configuration;->assetsSeq:I

    iput-object v2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {v0}, Landroid/content/res/MiuiConfiguration;->setToDefaults()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_1dc

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_1e4

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_36
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1ec

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_4c
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v2, 0xc0

    sparse-switch v0, :sswitch_data_39c

    const-string/jumbo v2, " layoutDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_5e
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_20c

    const-string/jumbo v2, " sw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_73
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_214

    const-string/jumbo v2, " w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_88
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_21c

    const-string/jumbo v2, " h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9d
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_224

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b2
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_3aa

    const-string/jumbo v2, " layoutSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_c6
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_3b8

    const-string/jumbo v2, " layoutLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_da
    :sswitch_da
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    sparse-switch v2, :sswitch_data_3c6

    const-string/jumbo v2, " dynamicRange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_ee
    :sswitch_ee
    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_3d4

    const-string/jumbo v2, " wideColorGamut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_102
    :pswitch_102
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_3de

    const-string/jumbo v2, " orien="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_112
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_3e8

    const-string/jumbo v2, " uimode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_126
    :pswitch_126
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_3fc

    const-string/jumbo v2, " night="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_13a
    :sswitch_13a
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_40a

    const-string/jumbo v2, " touch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_14a
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_416

    const-string/jumbo v2, " keys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_15a
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_422

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_16a
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v2, :pswitch_data_42e

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_17a
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_438

    const-string/jumbo v2, " nav="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_18a
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_446

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_19a
    iget-object v2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1a9

    const-string/jumbo v2, " appBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1a9
    iget v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v2, :cond_1b9

    const-string/jumbo v2, " as."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1b9
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_1c9

    const-string/jumbo v2, " s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1c9
    iget-object v2, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {v2}, Landroid/content/res/MiuiConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1dc
    const-string/jumbo v2, "?mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :cond_1e4
    const-string/jumbo v2, "?mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_36

    :cond_1ec
    const-string/jumbo v2, " ?localeList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4c

    :sswitch_1f4
    const-string/jumbo v2, " ?layoutDir"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5e

    :sswitch_1fc
    const-string/jumbo v2, " ldltr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5e

    :sswitch_204
    const-string/jumbo v2, " ldrtl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5e

    :cond_20c
    const-string/jumbo v2, " ?swdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_73

    :cond_214
    const-string/jumbo v2, " ?wdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_88

    :cond_21c
    const-string/jumbo v2, " ?hdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9d

    :cond_224
    const-string/jumbo v2, " ?density"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    :pswitch_22c
    const-string/jumbo v2, " ?lsize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c6

    :pswitch_234
    const-string/jumbo v2, " smll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c6

    :pswitch_23c
    const-string/jumbo v2, " nrml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c6

    :pswitch_244
    const-string/jumbo v2, " lrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c6

    :pswitch_24c
    const-string/jumbo v2, " xlrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c6

    :sswitch_254
    const-string/jumbo v2, " ?long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_da

    :sswitch_25c
    const-string/jumbo v2, " long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_da

    :sswitch_264
    const-string/jumbo v2, " ?ldr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ee

    :sswitch_26c
    const-string/jumbo v2, " hdr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ee

    :pswitch_274
    const-string/jumbo v2, " ?wideColorGamut"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_102

    :pswitch_27c
    const-string/jumbo v2, " widecg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_102

    :pswitch_284
    const-string/jumbo v2, " ?orien"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_112

    :pswitch_28c
    const-string/jumbo v2, " land"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_112

    :pswitch_294
    const-string/jumbo v2, " port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_112

    :pswitch_29c
    const-string/jumbo v2, " ?uimode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_126

    :pswitch_2a4
    const-string/jumbo v2, " desk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_126

    :pswitch_2ac
    const-string/jumbo v2, " car"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_126

    :pswitch_2b4
    const-string/jumbo v2, " television"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_126

    :pswitch_2bc
    const-string/jumbo v2, " appliance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_126

    :pswitch_2c4
    const-string/jumbo v2, " watch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_126

    :pswitch_2cc
    const-string/jumbo v2, " vrheadset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_126

    :sswitch_2d4
    const-string/jumbo v2, " ?night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13a

    :sswitch_2dc
    const-string/jumbo v2, " night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_13a

    :pswitch_2e4
    const-string/jumbo v2, " ?touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_14a

    :pswitch_2ec
    const-string/jumbo v2, " -touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_14a

    :pswitch_2f4
    const-string/jumbo v2, " stylus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_14a

    :pswitch_2fc
    const-string/jumbo v2, " finger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_14a

    :pswitch_304
    const-string/jumbo v2, " ?keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_15a

    :pswitch_30c
    const-string/jumbo v2, " -keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_15a

    :pswitch_314
    const-string/jumbo v2, " qwerty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_15a

    :pswitch_31c
    const-string/jumbo v2, " 12key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_15a

    :pswitch_324
    const-string/jumbo v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_16a

    :pswitch_32c
    const-string/jumbo v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_16a

    :pswitch_334
    const-string/jumbo v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_16a

    :pswitch_33c
    const-string/jumbo v2, "/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_16a

    :pswitch_344
    const-string/jumbo v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17a

    :pswitch_34c
    const-string/jumbo v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17a

    :pswitch_354
    const-string/jumbo v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17a

    :pswitch_35c
    const-string/jumbo v2, " ?nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18a

    :pswitch_364
    const-string/jumbo v2, " -nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18a

    :pswitch_36c
    const-string/jumbo v2, " dpad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18a

    :pswitch_374
    const-string/jumbo v2, " tball"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18a

    :pswitch_37c
    const-string/jumbo v2, " wheel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18a

    :pswitch_384
    const-string/jumbo v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_19a

    :pswitch_38c
    const-string/jumbo v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_19a

    :pswitch_394
    const-string/jumbo v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_19a

    :sswitch_data_39c
    .sparse-switch
        0x0 -> :sswitch_1f4
        0x40 -> :sswitch_1fc
        0x80 -> :sswitch_204
    .end sparse-switch

    :pswitch_data_3aa
    .packed-switch 0x0
        :pswitch_22c
        :pswitch_234
        :pswitch_23c
        :pswitch_244
        :pswitch_24c
    .end packed-switch

    :sswitch_data_3b8
    .sparse-switch
        0x0 -> :sswitch_254
        0x10 -> :sswitch_da
        0x20 -> :sswitch_25c
    .end sparse-switch

    :sswitch_data_3c6
    .sparse-switch
        0x0 -> :sswitch_264
        0x4 -> :sswitch_ee
        0x8 -> :sswitch_26c
    .end sparse-switch

    :pswitch_data_3d4
    .packed-switch 0x0
        :pswitch_274
        :pswitch_102
        :pswitch_27c
    .end packed-switch

    :pswitch_data_3de
    .packed-switch 0x0
        :pswitch_284
        :pswitch_294
        :pswitch_28c
    .end packed-switch

    :pswitch_data_3e8
    .packed-switch 0x0
        :pswitch_29c
        :pswitch_126
        :pswitch_2a4
        :pswitch_2ac
        :pswitch_2b4
        :pswitch_2bc
        :pswitch_2c4
        :pswitch_2cc
    .end packed-switch

    :sswitch_data_3fc
    .sparse-switch
        0x0 -> :sswitch_2d4
        0x10 -> :sswitch_13a
        0x20 -> :sswitch_2dc
    .end sparse-switch

    :pswitch_data_40a
    .packed-switch 0x0
        :pswitch_2e4
        :pswitch_2ec
        :pswitch_2f4
        :pswitch_2fc
    .end packed-switch

    :pswitch_data_416
    .packed-switch 0x0
        :pswitch_304
        :pswitch_30c
        :pswitch_314
        :pswitch_31c
    .end packed-switch

    :pswitch_data_422
    .packed-switch 0x0
        :pswitch_324
        :pswitch_32c
        :pswitch_334
        :pswitch_33c
    .end packed-switch

    :pswitch_data_42e
    .packed-switch 0x0
        :pswitch_344
        :pswitch_34c
        :pswitch_354
    .end packed-switch

    :pswitch_data_438
    .packed-switch 0x0
        :pswitch_35c
        :pswitch_364
        :pswitch_36c
        :pswitch_374
        :pswitch_37c
    .end packed-switch

    :pswitch_data_446
    .packed-switch 0x0
        :pswitch_384
        :pswitch_38c
        :pswitch_394
    .end packed-switch
.end method

.method public unset()V
    .registers 2

    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    return-void
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .registers 7

    const/high16 v4, 0x10000000

    const/4 v0, 0x0

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_18

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_18

    const/high16 v0, 0x40000000    # 2.0f

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Landroid/content/res/Configuration;->fontScale:F

    :cond_18
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_28

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v3, :cond_28

    or-int/lit8 v0, v0, 0x1

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    iput v2, p0, Landroid/content/res/Configuration;->mcc:I

    :cond_28
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_38

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v3, :cond_38

    or-int/lit8 v0, v0, 0x2

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    iput v2, p0, Landroid/content/res/Configuration;->mnc:I

    :cond_38
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_73

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_73

    or-int/lit8 v0, v0, 0x4

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    iput-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    or-int/lit16 v0, v0, 0x2000

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    :cond_73
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v2, 0xc0

    if-eqz v1, :cond_88

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_88

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, -0xc1

    or-int/2addr v2, v1

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    or-int/lit16 v0, v0, 0x2000

    :cond_88
    iget-boolean v2, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_99

    iget-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_94

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_99

    :cond_94
    or-int/lit8 v0, v0, 0x4

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    :cond_99
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_a9

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_a9

    or-int/lit8 v0, v0, 0x8

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_a9
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_b9

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_b9

    or-int/lit8 v0, v0, 0x10

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v2, p0, Landroid/content/res/Configuration;->keyboard:I

    :cond_b9
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_c9

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_c9

    or-int/lit8 v0, v0, 0x20

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_c9
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_d9

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_d9

    or-int/lit8 v0, v0, 0x20

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    :cond_d9
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_e9

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_e9

    or-int/lit8 v0, v0, 0x40

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    iput v2, p0, Landroid/content/res/Configuration;->navigation:I

    :cond_e9
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_f9

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_f9

    or-int/lit8 v0, v0, 0x20

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_f9
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_109

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_109

    or-int/lit16 v0, v0, 0x80

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Landroid/content/res/Configuration;->orientation:I

    :cond_109
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_126

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    if-eq v2, v3, :cond_126

    or-int/lit16 v0, v0, 0x100

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, -0x10

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_126
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    if-eqz v2, :cond_143

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x30

    if-eq v2, v3, :cond_143

    or-int/lit16 v0, v0, 0x100

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, -0x31

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_143
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    if-eqz v2, :cond_160

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0x300

    if-eq v2, v3, :cond_160

    or-int/lit16 v0, v0, 0x100

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, -0x301

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0x300

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_160
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/2addr v2, v4

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/2addr v3, v4

    if-eq v2, v3, :cond_17a

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v2, :cond_17a

    or-int/lit16 v0, v0, 0x100

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    const v3, -0x10000001

    and-int/2addr v2, v3

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_17a
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_197

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    if-eq v2, v3, :cond_197

    or-int/lit16 v0, v0, 0x4000

    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, -0x4

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->colorMode:I

    :cond_197
    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_1b4

    iget v2, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    if-eq v2, v3, :cond_1b4

    or-int/lit16 v0, v0, 0x4000

    iget v2, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, -0xd

    iget v3, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->colorMode:I

    :cond_1b4
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_1e2

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v3, :cond_1e2

    or-int/lit16 v0, v0, 0x200

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_1d1

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x10

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_1d1
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eqz v2, :cond_1e2

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_1e2
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_1f2

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v3, :cond_1f2

    or-int/lit16 v0, v0, 0x400

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_1f2
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_202

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v3, :cond_202

    or-int/lit16 v0, v0, 0x400

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_202
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_212

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v3, :cond_212

    or-int/lit16 v0, v0, 0x800

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_212
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_222

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_222

    or-int/lit16 v0, v0, 0x1000

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_222
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v2, :cond_22a

    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    :cond_22a
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v2, :cond_232

    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    :cond_232
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v2, :cond_23a

    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    :cond_23a
    iget-object v2, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_251

    iget-object v2, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_251

    or-int/lit16 v0, v0, 0x400

    iget-object v2, p1, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/content/res/Configuration;->setAppBounds(Landroid/graphics/Rect;)V

    :cond_251
    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-eqz v2, :cond_262

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iget v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    if-eq v2, v3, :cond_262

    const/high16 v2, -0x80000000

    or-int/2addr v0, v2

    iget v2, p1, Landroid/content/res/Configuration;->assetsSeq:I

    iput v2, p0, Landroid/content/res/Configuration;->assetsSeq:I

    :cond_262
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_26a

    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    iput v2, p0, Landroid/content/res/Configuration;->seq:I

    :cond_26a
    iget-object v2, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-object v3, p1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {v2, v3}, Landroid/content/res/MiuiConfiguration;->updateFrom(Landroid/content/res/MiuiConfiguration;)I

    move-result v2

    or-int/2addr v0, v2

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget v3, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v3, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v2, :cond_2e

    iget-object v3, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2e
    iget-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v3, :cond_a0

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_36
    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->colorMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget v3, p0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {v3, p1, p2}, Landroid/content/res/MiuiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_a0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36
.end method
