.class public Lmiui/hareware/display/DisplayFeatureManager;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"


# static fields
.field private static final COLOR_SERVICE_NAME:Ljava/lang/String; = "com.qti.snapdragon.sdk.display.IColorService"

.field public static final DEFALUT_GAMUT_MODE:I = 0x0

.field public static final DEFALUT_SCREEN_CABC:I = 0x1

.field public static final DEFALUT_SCREEN_COLOR:I = 0x2

.field public static final DEFAULT_DISPLAY_EYECARE_LEVEL:I = 0x0

.field public static final DEFAULT_SCREEN_SATURATION:I

.field private static final DISPLAY_FEATURE_SERVICE:Ljava/lang/String; = "DisplayFeatureControl"

.field public static final PROPERTY_ASSERTIVE_DISPLAY:Ljava/lang/String; = "persist.sys.ltm_enable"

.field public static final PROPERTY_DISPLAY_EYECARE:Ljava/lang/String; = "persist.sys.display_eyecare"

.field public static final PROPERTY_GAMUT_MODE:Ljava/lang/String; = "persist.sys.gamut_mode"

.field public static final PROPERTY_SCREEN_CABC:Ljava/lang/String; = "persist.sys.display_cabc"

.field public static final PROPERTY_SCREEN_COLOR:Ljava/lang/String; = "persist.sys.display_prefer"

.field public static final PROPERTY_SCREEN_SATURATION:Ljava/lang/String; = "persist.sys.display_ce"

.field public static final SCREEN_COLOR_COOL:I = 0x3

.field public static final SCREEN_COLOR_NATURE:I = 0x2

.field public static final SCREEN_COLOR_WARM:I = 0x1

.field public static final SCREEN_SATURATION_STANDARD:I = 0xa

.field public static final SCREEN_SATURATION_VIVID:I = 0xb

.field private static TAG:Ljava/lang/String; = null

.field private static final TRANSACTION_setActiveMode:I = 0x6

.field private static final TRANSACTION_setDefaultMode:I = 0xc

.field private static sInstance:Lmiui/hareware/display/DisplayFeatureManager;


# instance fields
.field private mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "DisplayFeatureManager"

    sput-object v0, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getDefaultScreenSaturation()I

    move-result v0

    sput v0, Lmiui/hareware/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "DisplayFeatureControl"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v1, Lmiui/hareware/display/DisplayFeatureServiceProxy;

    invoke-direct {v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    :cond_13
    return-void
.end method

.method private static getDefaultScreenSaturation()I
    .registers 3

    const/16 v0, 0xa

    const-string/jumbo v1, "is_hongmi"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v0, 0xb

    :cond_e
    const-string/jumbo v1, "display_ce"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getInstance()Lmiui/hareware/display/DisplayFeatureManager;
    .registers 1

    sget-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/hareware/display/DisplayFeatureManager;

    invoke-direct {v0}, Lmiui/hareware/display/DisplayFeatureManager;-><init>()V

    sput-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    :cond_b
    sget-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    return-object v0
.end method

.method private setActiveMode(Landroid/os/IBinder;II)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string/jumbo v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {p1, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    move-result v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private setDefaultMode(Landroid/os/IBinder;II)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string/jumbo v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {p1, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_28

    move-result v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_28
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method


# virtual methods
.method public getColorPrefer()I
    .registers 3

    const-string/jumbo v0, "persist.sys.display_prefer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEyeCare()I
    .registers 3

    const-string/jumbo v0, "persist.sys.display_eyecare"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenCabc()I
    .registers 3

    const-string/jumbo v0, "persist.sys.display_cabc"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenGamut()I
    .registers 3

    const-string/jumbo v0, "persist.sys.gamut_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenSaturation()I
    .registers 3

    const-string/jumbo v0, "persist.sys.display_ce"

    sget v1, Lmiui/hareware/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAdEnable()Z
    .registers 3

    const-string/jumbo v0, "persist.sys.ltm_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAdEnable(Z)V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-virtual {v2, v3, v1, v4}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setAd(III)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_1b

    :cond_10
    :goto_10
    const-string/jumbo v1, "persist.sys.ltm_enable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1b
    move-exception v0

    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set assertive display error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public setColorPrefer(I)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setColorPrefer(II)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_15

    :cond_a
    :goto_a
    const-string/jumbo v1, "persist.sys.display_prefer"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_15
    move-exception v0

    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set color prefer error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public setEyeCare(I)V
    .registers 7

    const/4 v2, -0x1

    :try_start_1
    iget-object v3, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setEyeCare(II)I

    move-result v2

    :cond_c
    const-string/jumbo v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_20

    if-eqz v0, :cond_20

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p1}, Lmiui/hareware/display/DisplayFeatureManager;->setActiveMode(Landroid/os/IBinder;II)I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p1}, Lmiui/hareware/display/DisplayFeatureManager;->setDefaultMode(Landroid/os/IBinder;II)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_2b

    :cond_20
    :goto_20
    const-string/jumbo v3, "persist.sys.display_eyecare"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2b
    move-exception v1

    sget-object v3, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "set eye care error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public setScreenCabc(I)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setCABC(II)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_15

    :cond_a
    :goto_a
    const-string/jumbo v1, "persist.sys.display_cabc"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_15
    move-exception v0

    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set screen cabc error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public setScreenGamut(I)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setGamutMode(II)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_15

    :cond_a
    :goto_a
    const-string/jumbo v1, "persist.sys.gamut_mode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_15
    move-exception v0

    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set screen gamut error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public setScreenSaturation(I)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setCE(II)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_15

    :cond_a
    :goto_a
    const-string/jumbo v1, "persist.sys.display_ce"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_15
    move-exception v0

    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set screen ce error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method
