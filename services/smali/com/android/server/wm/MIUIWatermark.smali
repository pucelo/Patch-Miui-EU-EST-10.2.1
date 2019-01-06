.class Lcom/android/server/wm/MIUIWatermark;
.super Ljava/lang/Object;
.source "MIUIWatermark.java"


# static fields
.field private static mDrawNeeded:Z

.field private static volatile mIMEI:Ljava/lang/String;

.field private static mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

.field private static mSurfaceControl:Landroid/view/SurfaceControl;

.field private static mTextSize:I

.field private static textSize:I


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private final degree:I

.field private mAccountName:Ljava/lang/String;

.field private final mDisplay:Landroid/view/Display;

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/wm/MIUIWatermark;->getImeiID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/MIUIWatermark;->setImei(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xd

    sput v0, Lcom/android/server/wm/MIUIWatermark;->textSize:I

    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/MIUIWatermark;->mTextSize:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/server/wm/MIUIWatermark;->degree:I

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->mSurface:Landroid/view/Surface;

    iput v4, p0, Lcom/android/server/wm/MIUIWatermark;->mLastDW:I

    iput v4, p0, Lcom/android/server/wm/MIUIWatermark;->mLastDH:I

    iput-boolean v4, p0, Lcom/android/server/wm/MIUIWatermark;->DEBUG:Z

    const-string/jumbo v1, "Watermark"

    iput-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/wm/MIUIWatermark;->DEBUG:Z

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "accountName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "imei"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    iput-object p3, p0, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    sput-object p4, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->mDisplay:Landroid/view/Display;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/server/wm/MIUIWatermark;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x50ffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x50000000

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v7, 0x0

    :try_start_7b
    new-instance v0, Landroid/view/SurfaceControl;

    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    const-string/jumbo v2, "WatermarkSurface"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_8c
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_7b .. :try_end_8c} :catch_ab

    :try_start_8c
    iget-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    iget-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_a8
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_8c .. :try_end_a8} :catch_c7

    :goto_a8
    sput-object v0, Lcom/android/server/wm/MIUIWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void

    :catch_ab
    move-exception v8

    move-object v0, v7

    :goto_ad
    iget-object v1, p0, Lcom/android/server/wm/MIUIWatermark;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createrSurface e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :catch_c7
    move-exception v8

    goto :goto_ad
.end method

.method private static createMIUIWatermarkInTransaction(Lcom/android/server/wm/WindowManagerService;)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-static {p0}, Lcom/android/server/wm/MIUIWatermark;->loadAccountId(Lcom/android/server/wm/WindowManagerService;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_14

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "account is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/wm/MIUIWatermark;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/server/wm/MIUIWatermark;

    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_22

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_22
    invoke-direct {v4, v1, v5, v3, v2}, Lcom/android/server/wm/MIUIWatermark;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    return-void
.end method

.method private static dp2px(Landroid/content/Context;F)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/wm/MIUIWatermark;->getImeiInfo(Landroid/content/Context;)V

    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    return-object v0
.end method

.method private static getImeiID(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getImeiInfo(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Lcom/android/server/wm/MIUIWatermark;->getImeiID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v1, Lcom/android/server/wm/MIUIWatermark$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MIUIWatermark$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/server/wm/MIUIWatermark$1;->start()V

    :goto_e
    return-void

    :cond_f
    invoke-static {v0}, Lcom/android/server/wm/MIUIWatermark;->setImei(Ljava/lang/String;)V

    goto :goto_e
.end method

.method private static init(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/MIUIWatermark;
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_c

    return-object v2

    :cond_c
    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/server/wm/MIUIWatermark;->textSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/server/wm/MIUIWatermark;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/android/server/wm/MIUIWatermark;->mTextSize:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_21
    invoke-static {p0}, Lcom/android/server/wm/MIUIWatermark;->createMIUIWatermarkInTransaction(Lcom/android/server/wm/WindowManagerService;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    return-object v0

    :catchall_2a
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction()V

    throw v0
.end method

.method public static initWatermark(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/MIUIWatermark;
    .registers 3

    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    if-nez v0, :cond_12

    const-class v1, Lcom/android/server/wm/MIUIWatermark;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/android/server/wm/MIUIWatermark;->init(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/MIUIWatermark;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit v1

    :cond_12
    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mMIUIWatermark:Lcom/android/server/wm/MIUIWatermark;

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static loadAccountId(Lcom/android/server/wm/WindowManagerService;)Landroid/accounts/Account;
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_17

    array-length v1, v0

    if-lez v1, :cond_17

    aget-object v1, v0, v3

    return-object v1

    :cond_17
    return-object v4
.end method

.method private static setImei(Ljava/lang/String;)V
    .registers 2

    sput-object p0, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/MIUIWatermark;->mDrawNeeded:Z

    return-void
.end method


# virtual methods
.method drawIfNeeded()V
    .registers 29

    sget-boolean v21, Lcom/android/server/wm/MIUIWatermark;->mDrawNeeded:Z

    if-eqz v21, :cond_21d

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/wm/MIUIWatermark;->mLastDW:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/MIUIWatermark;->mLastDH:I

    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/server/wm/MIUIWatermark;->mDrawNeeded:Z

    new-instance v10, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v10, v0, v1, v11, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MIUIWatermark;->mSurface:Landroid/view/Surface;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_29} :catch_21e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1e .. :try_end_29} :catch_221

    move-result-object v5

    :goto_2a
    if-eqz v5, :cond_21d

    sget-object v21, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const-wide/high16 v22, 0x403e000000000000L    # 30.0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    int-to-double v0, v11

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe3333333333333L    # 0.6

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v17, v0

    int-to-double v0, v9

    move-wide/from16 v22, v0

    const-wide v24, 0x3fa999999999999aL    # 0.05

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v20, v0

    if-le v11, v9, :cond_6c

    int-to-double v0, v11

    move-wide/from16 v22, v0

    const-wide v24, 0x3fd3333333333333L    # 0.3

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v17, v0

    :cond_6c
    sget v21, Lcom/android/server/wm/MIUIWatermark;->mTextSize:I

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->tan(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v15, v0

    sget v21, Lcom/android/server/wm/MIUIWatermark;->mTextSize:I

    mul-int/lit8 v16, v21, -0x1

    div-int/lit8 v6, v11, 0x2

    int-to-double v0, v9

    move-wide/from16 v22, v0

    const-wide v24, 0x3fc1cac083126e98L    # 0.139

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v7, v0

    int-to-double v0, v9

    move-wide/from16 v22, v0

    const-wide v24, 0x3fceb851eb851eb8L    # 0.24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v8, v0

    const/16 v4, 0xa

    const/high16 v21, 0x43a50000    # 330.0f

    div-int/lit8 v22, v11, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-int/lit8 v23, v9, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v14, 0x0

    :goto_b8
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v14, v0, :cond_212

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1a8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v21, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    if-eqz v21, :cond_122

    sget-object v21, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    sget-object v22, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    sub-int v22, v22, v4

    mul-int v22, v22, v15

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v17, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-int v23, v20, v16

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_122
    :goto_122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1db

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    move-object/from16 v21, v0

    add-int v22, v17, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-int v23, v20, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v21, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    if-eqz v21, :cond_184

    sget-object v21, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    add-int v22, v17, v6

    sget-object v23, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    sub-int v23, v23, v4

    mul-int v23, v23, v15

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-int v23, v20, v7

    sub-int v23, v23, v16

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_184
    :goto_184
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    int-to-double v0, v9

    move-wide/from16 v24, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->tan(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    div-int v21, v9, v8

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v17, v0

    add-int v20, v20, v8

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_b8

    :cond_1a8
    sget-object v21, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    if-eqz v21, :cond_122

    sget-object v21, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    sget-object v22, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    sub-int v22, v22, v4

    mul-int v22, v22, v15

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v17, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-int v23, v20, v16

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_122

    :cond_1db
    sget-object v21, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    if-eqz v21, :cond_184

    sget-object v21, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    add-int v22, v17, v6

    sget-object v23, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    sub-int v23, v23, v4

    mul-int v23, v23, v15

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-int v23, v20, v7

    sub-int v23, v23, v16

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MIUIWatermark;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_184

    :cond_212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/MIUIWatermark;->mSurface:Landroid/view/Surface;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_21d
    return-void

    :catch_21e
    move-exception v13

    goto/16 :goto_2a

    :catch_221
    move-exception v12

    goto/16 :goto_2a
.end method

.method hideWaterMarker()V
    .registers 2

    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    return-void
.end method

.method positionSurface(II)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/MIUIWatermark;->mLastDW:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/MIUIWatermark;->mLastDH:I

    if-eq v0, p2, :cond_14

    :cond_8
    iput p1, p0, Lcom/android/server/wm/MIUIWatermark;->mLastDW:I

    iput p2, p0, Lcom/android/server/wm/MIUIWatermark;->mLastDH:I

    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/MIUIWatermark;->mDrawNeeded:Z

    :cond_14
    return-void
.end method

.method showWaterMarker()V
    .registers 2

    sget-object v0, Lcom/android/server/wm/MIUIWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    return-void
.end method

.method updateText(Lcom/android/server/wm/WindowManagerService;)V
    .registers 7

    invoke-static {p1}, Lcom/android/server/wm/MIUIWatermark;->loadAccountId(Lcom/android/server/wm/WindowManagerService;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    :cond_a
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/wm/MIUIWatermark;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    sput-object v1, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    :cond_14
    iget-boolean v2, p0, Lcom/android/server/wm/MIUIWatermark;->DEBUG:Z

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/server/wm/MIUIWatermark;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateText account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/MIUIWatermark;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "imei: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/wm/MIUIWatermark;->mIMEI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/wm/MIUIWatermark;->mDrawNeeded:Z

    return-void
.end method
