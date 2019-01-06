.class public Lcom/android/server/HandyMode;
.super Ljava/lang/Object;
.source "HandyMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HandyMode$1;,
        Lcom/android/server/HandyMode$2;,
        Lcom/android/server/HandyMode$RotationWatcher;
    }
.end annotation


# static fields
.field private static final ACTION_CHANGEMODE:Ljava/lang/String; = "miui.action.handymode.changemode"

.field public static final ACTION_HANDYMODE_CHANGE:Ljava/lang/String; = "miui.action.handymode_change"

.field private static BLURED_WALLPAPER_FILE:Ljava/lang/String; = null

.field public static final COMBINATION_CLICK_TIMEOUT:I

.field public static final HANDYMODE:Ljava/lang/String; = "handymode"

.field public static final HANDYMODETIME:Ljava/lang/String; = "handymodetime"

.field public static final MODE_LEFT:I = 0x1

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_RIGHT:I = 0x2

.field private static SETTING_ICON_FILE:Ljava/lang/String;

.field private static TITLE_IMAGE_FILE:Ljava/lang/String;

.field private static isdDisplayOled:Z

.field private static sAlertDialog:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field static sBootCompleted:Z

.field static sContext:Landroid/content/Context;

.field static sDeviceProvisioned:Z

.field static sEnable:Z

.field static sFiledTitleLanguage:Ljava/lang/String;

.field static sHandler:Landroid/os/Handler;

.field static sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

.field static sHandyModeUtils:Lmiui/util/HandyModeUtils;

.field static sIconHeight:I

.field static sIconWidth:I

.field static sInputManager:Lcom/android/server/input/InputManagerService;

.field private static sMode:I

.field static sPowerManager:Landroid/os/PowerManager;

.field static sReceiver:Landroid/content/BroadcastReceiver;

.field static sRegistered:Z

.field static sRotation:I

.field static sRotationWatcher:Lcom/android/server/HandyMode$RotationWatcher;

.field static sScale:F

.field static sScreenHeight:I

.field static sScreenWidth:I

.field static sSettingClickListener:Ljava/lang/Runnable;

.field static sSettingIconPadding:I

.field static sTimeEnter:J

.field static sWallpaperManager:Landroid/app/WallpaperManager;

.field static sWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0()I
    .registers 1

    sget v0, Lcom/android/server/HandyMode;->sMode:I

    return v0
.end method

.method static synthetic -wrap0()V
    .registers 0

    invoke-static {}, Lcom/android/server/HandyMode;->destroyBluredWallpaper()V

    return-void
.end method

.method static synthetic -wrap1()V
    .registers 0

    invoke-static {}, Lcom/android/server/HandyMode;->refreshStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "/data/system/blured_wallpaper.png"

    sput-object v0, Lcom/android/server/HandyMode;->BLURED_WALLPAPER_FILE:Ljava/lang/String;

    const-string/jumbo v0, "/data/system/setting_icon_for_handymode.png"

    sput-object v0, Lcom/android/server/HandyMode;->SETTING_ICON_FILE:Ljava/lang/String;

    const-string/jumbo v0, "/data/system/title_image_for_handymode.png"

    sput-object v0, Lcom/android/server/HandyMode;->TITLE_IMAGE_FILE:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/HandyMode;->sMode:I

    const-string/jumbo v0, "persist.sys.handy_mode_cct"

    const/16 v1, 0x50

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/HandyMode;->COMBINATION_CLICK_TIMEOUT:I

    const-string/jumbo v0, "oled"

    const-string/jumbo v1, "ro.display.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/HandyMode;->isdDisplayOled:Z

    new-instance v0, Lcom/android/server/HandyMode$1;

    invoke-direct {v0}, Lcom/android/server/HandyMode$1;-><init>()V

    sput-object v0, Lcom/android/server/HandyMode;->sSettingClickListener:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/HandyMode$2;

    invoke-direct {v0}, Lcom/android/server/HandyMode$2;-><init>()V

    sput-object v0, Lcom/android/server/HandyMode;->sReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alertToEnter(I)V
    .registers 7

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/HandyMode;->canEnterHandyMode()Z

    move-result v2

    if-nez v2, :cond_8

    return-void

    :cond_8
    sget-object v2, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1a

    return-void

    :cond_1a
    sget-object v2, Lcom/android/server/HandyMode;->sAlertDialog:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_68

    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_67

    :cond_29
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    sget-object v3, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x11090098

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x11090099

    invoke-virtual {v2, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/server/HandyMode$8;

    invoke-direct {v3, p0}, Lcom/android/server/HandyMode$8;-><init>(I)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/server/HandyMode;->sAlertDialog:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_67
    return-void

    :cond_68
    sget-object v2, Lcom/android/server/HandyMode;->sAlertDialog:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    goto :goto_1f
.end method

.method private static buildBluredWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 15

    const/4 v13, 0x1

    const/4 v12, 0x0

    sget v10, Lcom/android/server/HandyMode;->sScreenWidth:I

    sget v11, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    div-int/2addr v10, v11

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget v10, Lcom/android/server/HandyMode;->sScreenHeight:I

    sget v11, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    div-int/2addr v10, v11

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v12, v12, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/2addr v11, v0

    if-le v10, v11, :cond_84

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v0

    div-float/2addr v10, v11

    int-to-float v11, v2

    mul-float/2addr v10, v11

    float-to-int v8, v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v10, v8

    div-int/lit8 v3, v10, 0x2

    add-int v10, v3, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v7, v3, v12, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    :goto_4f
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v5, p0, v7, v1, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sget v10, Lmiui/util/ScreenshotUtils;->REAL_BLUR_BLACK:F

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v10, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    sget-object v10, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget-boolean v10, Lcom/android/server/HandyMode;->isdDisplayOled:Z

    if-eqz v10, :cond_9f

    const v10, 0x11070011

    :goto_72
    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v10, v11, :cond_a3

    invoke-static {v4}, Lcom/android/server/HandyMode;->fastBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    return-object v10

    :cond_84
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v2

    div-float/2addr v10, v11

    int-to-float v11, v0

    mul-float/2addr v10, v11

    float-to-int v6, v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v10, v6

    div-int/lit8 v9, v10, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int v11, v9, v6

    invoke-virtual {v7, v12, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4f

    :cond_9f
    const v10, 0x11070010

    goto :goto_72

    :cond_a3
    sget v10, Lmiui/util/ScreenshotUtils;->REAL_BLUR_RADIUS:I

    int-to-float v10, v10

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v4, v10}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    return-object v10
.end method

.method static canEnterHandyMode()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    sget-boolean v1, Lcom/android/server/HandyMode;->sBootCompleted:Z

    if-nez v1, :cond_1b

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/HandyMode;->sBootCompleted:Z

    sget-boolean v1, Lcom/android/server/HandyMode;->sBootCompleted:Z

    if-nez v1, :cond_1b

    return v3

    :cond_1b
    sget-boolean v1, Lcom/android/server/HandyMode;->sDeviceProvisioned:Z

    if-nez v1, :cond_38

    sget-object v1, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "device_provisioned"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_36

    move v1, v2

    :goto_2f
    sput-boolean v1, Lcom/android/server/HandyMode;->sDeviceProvisioned:Z

    sget-boolean v1, Lcom/android/server/HandyMode;->sDeviceProvisioned:Z

    if-nez v1, :cond_38

    return v3

    :cond_36
    move v1, v3

    goto :goto_2f

    :cond_38
    :try_start_38
    sget-object v1, Lcom/android/server/HandyMode;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3d} :catch_41

    move-result v1

    if-eqz v1, :cond_43

    return v3

    :catch_41
    move-exception v0

    return v3

    :cond_43
    return v2
.end method

.method public static changeMode(I)V
    .registers 19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/server/HandyMode;->sHandler:Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_29

    sget-object v12, Lcom/android/server/HandyMode;->sHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/HandyMode$9;

    move/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/HandyMode$9;-><init>(I)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_29
    sget-object v12, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v12}, Lmiui/util/HandyModeUtils;->getScale()F

    move-result v12

    sput v12, Lcom/android/server/HandyMode;->sScale:F

    if-eqz p0, :cond_3c

    invoke-static {}, Lcom/android/server/HandyMode;->canEnterHandyMode()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_3c

    return-void

    :cond_3c
    sget-object v12, Lcom/android/server/HandyMode;->sPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/4 v13, 0x0

    invoke-virtual {v12, v14, v15, v13}, Landroid/os/PowerManager;->userActivity(JZ)V

    if-eqz p0, :cond_53

    sget v12, Lcom/android/server/HandyMode;->sMode:I

    move/from16 v0, p0

    if-ne v0, v12, :cond_53

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/server/HandyMode;->changeMode(I)V

    return-void

    :cond_53
    sput p0, Lcom/android/server/HandyMode;->sMode:I

    sget-object v12, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    sget-object v13, Lcom/android/server/HandyMode;->sSettingClickListener:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Lcom/android/server/MiuiInputFilter;->removeOutsideClickableRect(Ljava/lang/Runnable;)V

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v12, "miui.action.handymode_change"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "handymode"

    sget v13, Lcom/android/server/HandyMode;->sMode:I

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p0, :cond_155

    sget-object v12, Lcom/android/server/HandyMode;->sWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v12, :cond_7f

    sget-object v12, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    const-string/jumbo v13, "wallpaper"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/WallpaperManager;

    sput-object v12, Lcom/android/server/HandyMode;->sWallpaperManager:Landroid/app/WallpaperManager;

    :cond_7f
    sget-boolean v12, Lcom/android/server/HandyMode;->sRegistered:Z

    if-nez v12, :cond_b1

    sget-object v12, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    sget-object v13, Lcom/android/server/HandyMode;->sReceiver:Landroid/content/BroadcastReceiver;

    new-instance v14, Landroid/content/IntentFilter;

    const-string/jumbo v15, "android.intent.action.SCREEN_OFF"

    invoke-direct {v14, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v12, Lcom/android/server/HandyMode;->sRotationWatcher:Lcom/android/server/HandyMode$RotationWatcher;

    if-nez v12, :cond_9d

    new-instance v12, Lcom/android/server/HandyMode$RotationWatcher;

    invoke-direct {v12}, Lcom/android/server/HandyMode$RotationWatcher;-><init>()V

    sput-object v12, Lcom/android/server/HandyMode;->sRotationWatcher:Lcom/android/server/HandyMode$RotationWatcher;

    :cond_9d
    :try_start_9d
    sget-object v12, Lcom/android/server/HandyMode;->sWindowManager:Landroid/view/IWindowManager;

    sget-object v13, Lcom/android/server/HandyMode;->sRotationWatcher:Lcom/android/server/HandyMode$RotationWatcher;

    sget-object v14, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    invoke-interface {v12, v13, v14}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_ae} :catch_141

    :goto_ae
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/server/HandyMode;->sRegistered:Z

    :cond_b1
    invoke-static {}, Lcom/android/server/HandyMode;->ensureAllImages()V

    invoke-static {}, Lcom/android/server/HandyMode;->ensureBluredWallpaper()V

    sget v12, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v12, v12

    sget v13, Lcom/android/server/HandyMode;->sScale:F

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v13, v14, v13

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    sget v13, Lcom/android/server/HandyMode;->sIconWidth:I

    sub-int/2addr v12, v13

    div-int/lit8 v6, v12, 0x2

    sget v12, Lcom/android/server/HandyMode;->sMode:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_147

    move v9, v6

    :goto_d0
    sget v12, Lcom/android/server/HandyMode;->sIconWidth:I

    add-int v10, v9, v12

    sget v12, Lcom/android/server/HandyMode;->sScreenHeight:I

    sub-int/2addr v12, v6

    sget v13, Lcom/android/server/HandyMode;->sIconHeight:I

    sub-int v11, v12, v13

    sget v12, Lcom/android/server/HandyMode;->sIconHeight:I

    add-int v2, v11, v12

    sget-object v12, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    new-instance v13, Landroid/graphics/Rect;

    sget v14, Lcom/android/server/HandyMode;->sSettingIconPadding:I

    sub-int v14, v9, v14

    sget v15, Lcom/android/server/HandyMode;->sSettingIconPadding:I

    sub-int v15, v11, v15

    sget v16, Lcom/android/server/HandyMode;->sSettingIconPadding:I

    add-int v16, v16, v10

    sget v17, Lcom/android/server/HandyMode;->sSettingIconPadding:I

    add-int v17, v17, v2

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v14, Lcom/android/server/HandyMode;->sSettingClickListener:Ljava/lang/Runnable;

    invoke-virtual {v12, v13, v14}, Lcom/android/server/MiuiInputFilter;->addOutsideClickableRect(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    sget-object v12, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v12}, Lmiui/util/HandyModeUtils;->hasShowed()Z

    move-result v12

    xor-int/lit8 v8, v12, 0x1

    if-eqz v8, :cond_10e

    sget-object v12, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lmiui/util/HandyModeUtils;->setEnterDirect(Z)V

    invoke-static {}, Lcom/android/server/HandyMode;->gotoHandyModeSetting()V

    :cond_10e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sput-wide v12, Lcom/android/server/HandyMode;->sTimeEnter:J

    :goto_114
    sget-object v12, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :try_start_119
    const-string/jumbo v12, "SurfaceFlinger"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_140

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const-string/jumbo v12, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget v12, Lcom/android/server/HandyMode;->sScale:F

    invoke-virtual {v3, v12}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 v12, 0x44a

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v5, v12, v3, v13, v14}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_140
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_140} :catch_17e

    :cond_140
    return-void

    :catch_141
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_ae

    :cond_147
    sget v12, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v12, v12

    sget v13, Lcom/android/server/HandyMode;->sScale:F

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int v9, v12, v6

    goto/16 :goto_d0

    :cond_155
    sget-boolean v12, Lcom/android/server/HandyMode;->sRegistered:Z

    if-eqz v12, :cond_16a

    sget-object v12, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    sget-object v13, Lcom/android/server/HandyMode;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v12, v13}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_start_160
    sget-object v12, Lcom/android/server/HandyMode;->sWindowManager:Landroid/view/IWindowManager;

    sget-object v13, Lcom/android/server/HandyMode;->sRotationWatcher:Lcom/android/server/HandyMode$RotationWatcher;

    invoke-interface {v12, v13}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_167
    .catch Landroid/os/RemoteException; {:try_start_160 .. :try_end_167} :catch_179

    :goto_167
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/server/HandyMode;->sRegistered:Z

    :cond_16a
    const-string/jumbo v12, "handymodetime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sget-wide v16, Lcom/android/server/HandyMode;->sTimeEnter:J

    sub-long v14, v14, v16

    invoke-virtual {v7, v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_114

    :catch_179
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_167

    :catch_17e
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method private static destroyBluredWallpaper()V
    .registers 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/HandyMode;->BLURED_WALLPAPER_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    return-void
.end method

.method private static ensureAllImages()V
    .registers 2

    sget-object v0, Lcom/android/server/HandyMode;->SETTING_ICON_FILE:Ljava/lang/String;

    const v1, 0x11020035

    invoke-static {v0, v1}, Lcom/android/server/HandyMode;->ensureIcon(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/HandyMode;->ensureTitleImage()V

    return-void
.end method

.method private static ensureBluredWallpaper()V
    .registers 4

    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/android/server/HandyMode;->BLURED_WALLPAPER_FILE:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/HandyMode;->sWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_18
    return-void

    :cond_19
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_20

    return-void

    :cond_20
    sget-object v3, Lcom/android/server/HandyMode;->sWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_29

    return-void

    :cond_29
    invoke-static {v2}, Lcom/android/server/HandyMode;->buildBluredWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/HandyMode;->saveBitmapToPNG(Landroid/graphics/Bitmap;Ljava/io/File;)V

    sget-object v3, Lcom/android/server/HandyMode;->sWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    return-void
.end method

.method private static ensureIcon(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    sget-object v2, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_1b
    return-void
.end method

.method private static ensureTitleImage()V
    .registers 15

    const/4 v14, 0x0

    new-instance v3, Ljava/io/File;

    sget-object v11, Lcom/android/server/HandyMode;->TITLE_IMAGE_FILE:Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_28

    sget-object v11, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/server/HandyMode;->sFiledTitleLanguage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_a6

    :cond_28
    sget-object v11, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/server/HandyMode;->sFiledTitleLanguage:Ljava/lang/String;

    sget-object v11, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x1103000a

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    sget-object v11, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x42700000    # 60.0f

    mul-float/2addr v11, v12

    float-to-int v5, v11

    sget-object v11, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v11, v5, 0x2

    sub-int v11, v7, v11

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v14, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v6, v10, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v6, v14, v14, v11, v12}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 v8, 0x0

    :try_start_97
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9c} :catch_a7
    .catchall {:try_start_97 .. :try_end_9c} :catchall_af

    :try_start_9c
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v0, v11, v12, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a3} :catch_b7
    .catchall {:try_start_9c .. :try_end_a3} :catchall_b4

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_a6
    :goto_a6
    return-void

    :catch_a7
    move-exception v2

    :goto_a8
    :try_start_a8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_af

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_a6

    :catchall_af
    move-exception v11

    :goto_b0
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v11

    :catchall_b4
    move-exception v11

    move-object v8, v9

    goto :goto_b0

    :catch_b7
    move-exception v2

    move-object v8, v9

    goto :goto_a8
.end method

.method private static fastBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v4, 0x1

    sget-object v2, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-boolean v2, Lcom/android/server/HandyMode;->isdDisplayOled:Z

    if-eqz v2, :cond_1f

    const v2, 0x11070011

    :goto_e
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {p0, v4, v4, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    return-object p0

    :cond_1f
    const v2, 0x11070010

    goto :goto_e
.end method

.method public static getMode()I
    .registers 1

    sget v0, Lcom/android/server/HandyMode;->sMode:I

    return v0
.end method

.method static gotoHandyModeSetting()V
    .registers 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, ":android:show_fragment"

    const-string/jumbo v2, "com.android.settings.display.HandyModeFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 13

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    sget-object v5, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    if-eqz v5, :cond_8

    return-void

    :cond_8
    sput-object p0, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v5, Lcom/android/server/HandyMode;->sHandler:Landroid/os/Handler;

    invoke-static {p0}, Lmiui/util/HandyModeUtils;->getInstance(Landroid/content/Context;)Lmiui/util/HandyModeUtils;

    move-result-object v5

    sput-object v5, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    sput-object p1, Lcom/android/server/HandyMode;->sInputManager:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    sput-object v5, Lcom/android/server/HandyMode;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v5, Lcom/android/server/MiuiInputFilter;

    invoke-direct {v5, p0}, Lcom/android/server/MiuiInputFilter;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    const-string/jumbo v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    sput-object v5, Lcom/android/server/HandyMode;->sPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sput v5, Lcom/android/server/HandyMode;->sScreenWidth:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sput v5, Lcom/android/server/HandyMode;->sScreenHeight:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/HandyMode;->sSettingIconPadding:I

    sget-object v5, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v5}, Lmiui/util/HandyModeUtils;->isEnable()Z

    move-result v5

    sput-boolean v5, Lcom/android/server/HandyMode;->sEnable:Z

    sget-object v5, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v5}, Lmiui/util/HandyModeUtils;->getScale()F

    move-result v5

    sput v5, Lcom/android/server/HandyMode;->sScale:F

    sget-boolean v5, Lcom/android/server/HandyMode;->sEnable:Z

    if-eqz v5, :cond_93

    sget-object v5, Lcom/android/server/HandyMode;->sInputManager:Lcom/android/server/input/InputManagerService;

    sget-object v6, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    invoke-virtual {v5, v6}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    :cond_93
    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v5

    if-nez v5, :cond_9a

    return-void

    :cond_9a
    new-instance v1, Lcom/android/server/HandyMode$3;

    new-instance v5, Landroid/os/Handler;

    sget-object v6, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v5}, Lcom/android/server/HandyMode$3;-><init>(Landroid/os/Handler;)V

    sget-object v5, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "handy_mode_size"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v1, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object v5, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "handy_mode_state"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v7, v1, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object v5, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "auto_test_mode_on"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Lcom/android/server/HandyMode$4;

    sget-object v8, Lcom/android/server/HandyMode;->sHandler:Landroid/os/Handler;

    invoke-direct {v7, v8}, Lcom/android/server/HandyMode$4;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v5, v6, v10, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object v5, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/HandyMode$5;

    invoke-direct {v6}, Lcom/android/server/HandyMode$5;-><init>()V

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v8, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v5, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/HandyMode$6;

    invoke-direct {v6}, Lcom/android/server/HandyMode$6;-><init>()V

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v8, "miui.action.handymode.changemode"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/server/HandyMode;->SETTING_ICON_FILE:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_115

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_115
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/server/HandyMode;->TITLE_IMAGE_FILE:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_125

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_125
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v10, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v5, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11020034

    invoke-static {v5, v6, v2}, Lmiui/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sput v5, Lcom/android/server/HandyMode;->sIconWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sput v5, Lcom/android/server/HandyMode;->sIconHeight:I

    return-void
.end method

.method private static refreshStatus()V
    .registers 6

    const/4 v4, 0x0

    sget-boolean v2, Lcom/android/server/HandyMode;->sEnable:Z

    sget-object v3, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v3}, Lmiui/util/HandyModeUtils;->isEnable()Z

    move-result v3

    if-eq v2, v3, :cond_1e

    sget-object v2, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v2}, Lmiui/util/HandyModeUtils;->isEnable()Z

    move-result v2

    sput-boolean v2, Lcom/android/server/HandyMode;->sEnable:Z

    sget-boolean v2, Lcom/android/server/HandyMode;->sEnable:Z

    if-nez v2, :cond_1e

    sget v2, Lcom/android/server/HandyMode;->sMode:I

    if-eqz v2, :cond_1e

    invoke-static {v4}, Lcom/android/server/HandyMode;->changeMode(I)V

    :cond_1e
    sget v2, Lcom/android/server/HandyMode;->sScale:F

    sget-object v3, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v3}, Lmiui/util/HandyModeUtils;->getScale()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_50

    sget-object v2, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v2}, Lmiui/util/HandyModeUtils;->getScale()F

    move-result v2

    sput v2, Lcom/android/server/HandyMode;->sScale:F

    sget v2, Lcom/android/server/HandyMode;->sMode:I

    if-eqz v2, :cond_50

    sget v1, Lcom/android/server/HandyMode;->sMode:I

    invoke-static {v4}, Lcom/android/server/HandyMode;->changeMode(I)V

    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/server/HandyMode$7;

    invoke-direct {v2, v1}, Lcom/android/server/HandyMode$7;-><init>(I)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_50
    return-void
.end method

.method private static saveBitmapToPNG(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .registers 6

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method
