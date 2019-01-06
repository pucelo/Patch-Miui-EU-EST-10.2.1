.class public Lmiui/util/HandyModeUtils;
.super Ljava/lang/Object;
.source "HandyModeUtils.java"


# static fields
.field public static final DEFAULT_IS_ENTER_DIRECT:Z

.field static SUPPORTED:Z

.field private static volatile sInstance:Lmiui/util/HandyModeUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScreenSize:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.miui.has_handy_mode_sf"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/util/HandyModeUtils;->SUPPORTED:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_f

    iput-object p1, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    :cond_f
    invoke-direct {p0}, Lmiui/util/HandyModeUtils;->getScreenSize()F

    move-result v0

    iput v0, p0, Lmiui/util/HandyModeUtils;->mScreenSize:F

    return-void
.end method

.method private calcScreenSizeToScale(F)F
    .registers 3

    iget v0, p0, Lmiui/util/HandyModeUtils;->mScreenSize:F

    div-float v0, p1, v0

    return v0
.end method

.method private getDefaultScreenSize()F
    .registers 3

    invoke-direct {p0}, Lmiui/util/HandyModeUtils;->getScreenSize()F

    move-result v0

    const/high16 v1, 0x40900000    # 4.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    const/high16 v0, 0x40800000    # 4.0f

    :goto_c
    return v0

    :cond_d
    const/high16 v0, 0x40600000    # 3.5f

    goto :goto_c
.end method

.method public static getInstance(Landroid/content/Context;)Lmiui/util/HandyModeUtils;
    .registers 3

    sget-object v0, Lmiui/util/HandyModeUtils;->sInstance:Lmiui/util/HandyModeUtils;

    if-nez v0, :cond_13

    const-class v1, Lmiui/util/HandyModeUtils;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lmiui/util/HandyModeUtils;->sInstance:Lmiui/util/HandyModeUtils;

    if-nez v0, :cond_12

    new-instance v0, Lmiui/util/HandyModeUtils;

    invoke-direct {v0, p0}, Lmiui/util/HandyModeUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/util/HandyModeUtils;->sInstance:Lmiui/util/HandyModeUtils;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit v1

    :cond_13
    sget-object v0, Lmiui/util/HandyModeUtils;->sInstance:Lmiui/util/HandyModeUtils;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getScreenSize()F
    .registers 7

    iget-object v4, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v3, v4, v5

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v0, v4, v5

    mul-float v4, v3, v3

    mul-float v5, v0, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    return v4
.end method

.method public static isFeatureVisible()Z
    .registers 1

    sget-boolean v0, Lmiui/util/HandyModeUtils;->SUPPORTED:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public getScale()F
    .registers 3

    invoke-virtual {p0}, Lmiui/util/HandyModeUtils;->getSize()F

    move-result v0

    invoke-direct {p0, v0}, Lmiui/util/HandyModeUtils;->calcScreenSizeToScale(F)F

    move-result v1

    return v1
.end method

.method public getSize()F
    .registers 6

    invoke-direct {p0}, Lmiui/util/HandyModeUtils;->getDefaultScreenSize()F

    move-result v0

    iget-object v2, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "handy_mode_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/util/HandyModeUtils;->isValidSize(F)Z

    move-result v2

    if-nez v2, :cond_19

    move v1, v0

    :cond_19
    return v1
.end method

.method public hasShowed()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isEnable()Z
    .registers 2

    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lmiui/util/HandyModeUtils;->isHandyModeEnabled()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEnterDirect()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isHandyModeEnabled()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "handy_mode_state"

    invoke-static {v1, v2, v0, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public isValidSize(F)Z
    .registers 4

    invoke-direct {p0, p1}, Lmiui/util/HandyModeUtils;->calcScreenSizeToScale(F)F

    move-result v0

    const v1, 0x3f6147ae    # 0.88f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setEnterDirect(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "handy_mode_enter_direct"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public setHandyModeStateToSettings(Z)V
    .registers 5

    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "handy_mode_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    return-void
.end method

.method public setSize(F)V
    .registers 5

    iget-object v0, p0, Lmiui/util/HandyModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "handy_mode_size"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method
