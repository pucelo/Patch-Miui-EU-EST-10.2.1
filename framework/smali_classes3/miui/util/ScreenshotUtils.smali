.class public Lmiui/util/ScreenshotUtils;
.super Ljava/lang/Object;
.source "ScreenshotUtils.java"


# static fields
.field private static final ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

.field private static final ACTIVITY_SCREENSHOT_FOLDER_PATH:Ljava/lang/String; = "/data/system/app_screenshot"

.field public static final BLUR_SCALE_RATIO:F = 0.33333334f

.field public static final DEFAULT_SCREENSHOT_COLOR:I = -0x55000001

.field public static final DEFAULT_SCREEN_BLUR_RADIUS:I

.field public static final REAL_BLUR_BLACK:F

.field public static final REAL_BLUR_MINIFY:I

.field public static final REAL_BLUR_RADIUS:I

.field private static final TAG:Ljava/lang/String; = "ScreenshotUtils"

.field private static sCacheBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisplay:Landroid/view/Display;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sKeyguardManager:Landroid/app/KeyguardManager;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sScreenHeight:I

.field private static sScreenWidth:I

.field private static sSizeBuf:Landroid/graphics/Point;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;IZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lmiui/util/ScreenshotUtils;->screenShotAndSave(Ljava/lang/String;IZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->DEFAULT_SCREEN_BLUR_RADIUS:I

    const-string/jumbo v0, "persist.sys.real_blur_black"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_BLACK:F

    const-string/jumbo v0, "persist.sys.real_blur_minify"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    const-string/jumbo v0, "persist.sys.real_blur_radius"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_RADIUS:I

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/app_screenshot"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/util/ScreenshotUtils;->captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 12

    const/4 v7, 0x0

    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    sget-object v6, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_d

    return-void

    :cond_d
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->disallowTaskManagerScreenshotMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string/jumbo v6, "persist.sys.screenshot_mode"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_35

    :cond_1e
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2a

    return-void

    :cond_2a
    invoke-static {p1, v7}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_35

    return-void

    :cond_35
    sget-object v6, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v5

    if-eqz v5, :cond_40

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8b

    :cond_40
    const/4 v3, 0x1

    :goto_41
    sget-object v6, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    if-nez v6, :cond_69

    const-class v7, Lmiui/util/ScreenshotUtils;

    monitor-enter v7

    :try_start_48
    sget-object v6, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    if-nez v6, :cond_68

    new-instance v6, Landroid/os/HandlerThread;

    const-string/jumbo v8, "ScreenshotUtils"

    invoke-direct {v6, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v6, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v6, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    new-instance v6, Landroid/os/Handler;

    sget-object v8, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v6, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;
    :try_end_68
    .catchall {:try_start_48 .. :try_end_68} :catchall_8d

    :cond_68
    monitor-exit v7

    :cond_69
    const/4 v2, 0x0

    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    :try_start_75
    invoke-interface {v4}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_78} :catch_90

    move-result v2

    :goto_79
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_95

    move v1, v2

    sget-object v6, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    new-instance v7, Lmiui/util/ScreenshotUtils$1;

    invoke-direct {v7, p1, v5, v3, v1}, Lmiui/util/ScreenshotUtils$1;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_8a
    return-void

    :cond_8b
    const/4 v3, 0x0

    goto :goto_41

    :catchall_8d
    move-exception v6

    monitor-exit v7

    throw v6

    :catch_90
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_79

    :cond_95
    invoke-static {p1, v5, v3, v2}, Lmiui/util/ScreenshotUtils;->screenShotAndSave(Ljava/lang/String;IZZ)V

    goto :goto_8a
.end method

.method public static disallowTaskManagerScreenshotMode(Landroid/content/Context;)Z
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->isLiteMode()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string/jumbo v0, "enable_miui_lite"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;
    .registers 8

    new-instance v1, Ljava/io/File;

    sget-object v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    const-string/jumbo v3, "%s--%s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v0, 0x2f

    const/16 v5, 0x2d

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    if-eqz p1, :cond_25

    const-string/jumbo v0, "p"

    :goto_1a
    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_25
    const-string/jumbo v0, "l"

    goto :goto_1a
.end method

.method public static getActivityScreenshotSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 6

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110b0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public static getBlurBackground(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v3, 0x0

    const v2, 0x3eaaaaab

    invoke-static {p0, v2, v3, v3, v3}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, p1}, Lmiui/util/ScreenshotUtils;->getBlurBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static getBlurBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    if-eqz p0, :cond_11

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110b0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {p0, p1, v1}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_11
    if-eqz p1, :cond_25

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiui/system/R$color;->blur_background_mask:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_25
    return-object p1
.end method

.method private static getCacheBitmap(Z)Ljava/lang/ref/SoftReference;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_5

    sget-object v4, Lmiui/util/ScreenshotUtils;->sCacheBitmap:Ljava/lang/ref/SoftReference;

    return-object v4

    :cond_5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    sget-object v4, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v4, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v4, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    :cond_1a
    const/4 v2, 0x1

    :goto_1b
    if-eqz v2, :cond_28

    iget v0, v1, Landroid/graphics/Point;->y:I

    :goto_1f
    sget v4, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    if-ne v0, v4, :cond_2b

    sget-object v4, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;

    :goto_25
    return-object v4

    :cond_26
    const/4 v2, 0x0

    goto :goto_1b

    :cond_28
    iget v0, v1, Landroid/graphics/Point;->x:I

    goto :goto_1f

    :cond_2b
    sget-object v4, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;

    goto :goto_25
.end method

.method public static getScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v2, v1}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;
    .registers 26

    invoke-static/range {p0 .. p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    sget v17, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    sget v17, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v12, v0

    if-nez p2, :cond_e7

    if-nez p3, :cond_e7

    invoke-static {v13, v12}, Lmiui/util/CompatibilityHelper;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v11

    :goto_2b
    if-eqz v11, :cond_e6

    sget-object v17, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eqz v3, :cond_3b

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v3, v0, :cond_f1

    :cond_3b
    const/4 v7, 0x1

    :goto_3c
    if-eqz p4, :cond_f4

    sget-object v17, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v18, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-virtual/range {v17 .. v18}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_45
    sget-object v17, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    sget-object v17, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    if-ne v13, v15, :cond_75

    if-eq v12, v14, :cond_177

    :cond_75
    :goto_75
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v3, :cond_c8

    neg-int v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    neg-int v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-int/lit8 v17, v3, 0x5a

    move/from16 v0, v17

    rsub-int v0, v0, 0x168

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    if-eqz v7, :cond_17b

    int-to-float v0, v13

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v18, v17

    :goto_b8
    if-eqz v7, :cond_186

    int-to-float v0, v12

    move/from16 v17, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v17, v17, v19

    :goto_c1
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_c8
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    invoke-static {v15, v14, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v11, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v11, v16

    :cond_e6
    return-object v11

    :cond_e7
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v12, v0, v1}, Lmiui/util/CompatibilityHelper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    goto/16 :goto_2b

    :cond_f1
    const/4 v7, 0x0

    goto/16 :goto_3c

    :cond_f4
    const/4 v5, 0x0

    const/4 v9, 0x0

    :try_start_f6
    const-string/jumbo v17, "window"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v5

    if-eqz v5, :cond_115

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "force_fsg_nav_bar"

    invoke-static/range {v17 .. v18}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_115

    const/4 v5, 0x0

    :cond_115
    if-eqz v5, :cond_134

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string/jumbo v18, "navigation_bar_size"

    const-string/jumbo v19, "dimen"

    const-string/jumbo v20, "android"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_134

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_133
    .catch Landroid/os/RemoteException; {:try_start_f6 .. :try_end_133} :catch_18f

    move-result v9

    :cond_134
    :goto_134
    sget-object v17, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v18, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-virtual/range {v17 .. v18}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-boolean v17, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v17, :cond_151

    sget-object v17, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    sub-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_45

    :cond_151
    if-eqz v7, :cond_165

    sget-object v17, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    sub-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto/16 :goto_45

    :cond_165
    sget-object v17, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    sub-int v18, v18, v9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    goto/16 :goto_45

    :cond_177
    if-eqz v3, :cond_e6

    goto/16 :goto_75

    :cond_17b
    int-to-float v0, v12

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v18, v17

    goto/16 :goto_b8

    :cond_186
    int-to-float v0, v13

    move/from16 v17, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v17, v17, v19

    goto/16 :goto_c1

    :catch_18f
    move-exception v4

    goto :goto_134
.end method

.method private static initializeIfNeed(Landroid/content/Context;)V
    .registers 6

    const/4 v4, -0x1

    sget-object v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    sget-object v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1c
    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    if-nez v2, :cond_2f

    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    sput-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    :cond_2f
    sget-object v2, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v2, :cond_3e

    const-string/jumbo v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    sput-object v2, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    :cond_3e
    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    if-eqz v2, :cond_65

    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v2, 0x2

    if-ne v0, v2, :cond_66

    :cond_4d
    const/4 v1, 0x1

    :goto_4e
    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v3, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-static {v2, v3}, Lmiui/util/CustomizeUtil;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    if-eqz v1, :cond_68

    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    :goto_5b
    sput v2, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    if-eqz v1, :cond_6d

    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    :goto_63
    sput v2, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    :cond_65
    return-void

    :cond_66
    const/4 v1, 0x0

    goto :goto_4e

    :cond_68
    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_5b

    :cond_6d
    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    goto :goto_63
.end method

.method private static screenShotAndSave(Ljava/lang/String;IZZ)V
    .registers 26

    const/16 v12, 0x7530

    :try_start_2
    sget v18, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    sget v19, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v12}, Lmiui/util/CompatibilityHelper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v16

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    sget-object v18, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    if-eqz p2, :cond_164

    iget v10, v9, Landroid/graphics/Point;->x:I

    :goto_22
    if-eqz p2, :cond_168

    iget v8, v9, Landroid/graphics/Point;->y:I

    :goto_26
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x110b0013

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v15

    if-eqz p3, :cond_17d

    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_43

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_16c

    :cond_43
    new-instance v17, Landroid/graphics/Rect;

    sget v18, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    sub-int v18, v18, v8

    sget v19, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_58
    invoke-static/range {p3 .. p3}, Lmiui/util/ScreenshotUtils;->getCacheBitmap(Z)Ljava/lang/ref/SoftReference;

    move-result-object v18

    if-nez v18, :cond_196

    const/4 v14, 0x0

    :goto_5f
    if-nez v14, :cond_a3

    if-eqz p3, :cond_1a2

    move/from16 v18, v10

    :goto_65
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v19, v0

    if-eqz p3, :cond_1a6

    move/from16 v18, v8

    :goto_79
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v18, v18, v20

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    new-instance v18, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-static {v0, v1}, Lmiui/util/ScreenshotUtils;->setCacheBitmap(Ljava/lang/ref/SoftReference;Z)V

    :cond_a3
    sget-object v18, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    if-nez v18, :cond_b0

    new-instance v18, Landroid/graphics/Paint;

    const/16 v19, 0x3

    invoke-direct/range {v18 .. v19}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v18, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    :cond_b0
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_c5

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_ea

    :cond_c5
    const/high16 v18, 0x43340000    # 180.0f

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_ea
    invoke-virtual {v6, v15, v15}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz v16, :cond_1b2

    new-instance v18, Landroid/graphics/Rect;

    if-eqz p3, :cond_1aa

    :goto_f3
    if-eqz p3, :cond_1ae

    :goto_f5
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v19, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    :goto_112
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x5a

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    xor-int/lit8 v18, p2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_163

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_163

    const-string/jumbo v18, "ScreenshotUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "delete failed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_163
    :goto_163
    return-void

    :cond_164
    iget v10, v9, Landroid/graphics/Point;->y:I

    goto/16 :goto_22

    :cond_168
    iget v8, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_26

    :cond_16c
    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_58

    :cond_17d
    new-instance v17, Landroid/graphics/Rect;

    sget v18, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    sget v19, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_58

    :cond_196
    invoke-static/range {p3 .. p3}, Lmiui/util/ScreenshotUtils;->getCacheBitmap(Z)Ljava/lang/ref/SoftReference;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    goto/16 :goto_5f

    :cond_1a2
    sget v18, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    goto/16 :goto_65

    :cond_1a6
    sget v18, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    goto/16 :goto_79

    :cond_1aa
    sget v10, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    goto/16 :goto_f3

    :cond_1ae
    sget v8, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    goto/16 :goto_f5

    :cond_1b2
    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const v19, -0x55000001

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1be} :catch_1c0

    goto/16 :goto_112

    :catch_1c0
    move-exception v11

    const-string/jumbo v18, "ScreenshotUtils"

    const-string/jumbo v19, "screenShotAndSave"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v11}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_163
.end method

.method private static setCacheBitmap(Ljava/lang/ref/SoftReference;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_5

    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmap:Ljava/lang/ref/SoftReference;

    return-void

    :cond_5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    sget-object v4, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v4, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v4, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    :cond_1a
    const/4 v2, 0x1

    :goto_1b
    if-eqz v2, :cond_28

    iget v0, v1, Landroid/graphics/Point;->y:I

    :goto_1f
    sget v4, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    if-ne v0, v4, :cond_2b

    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;

    :goto_25
    return-void

    :cond_26
    const/4 v2, 0x0

    goto :goto_1b

    :cond_28
    iget v0, v1, Landroid/graphics/Point;->x:I

    goto :goto_1f

    :cond_2b
    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;

    goto :goto_25
.end method
