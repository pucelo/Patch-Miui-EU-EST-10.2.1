.class public Landroid/hardware/radio/RadioManager;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$AmBandConfig;,
        Landroid/hardware/radio/RadioManager$AmBandDescriptor;,
        Landroid/hardware/radio/RadioManager$BandConfig;,
        Landroid/hardware/radio/RadioManager$BandDescriptor;,
        Landroid/hardware/radio/RadioManager$FmBandConfig;,
        Landroid/hardware/radio/RadioManager$FmBandDescriptor;,
        Landroid/hardware/radio/RadioManager$ModuleProperties;,
        Landroid/hardware/radio/RadioManager$ProgramInfo;
    }
.end annotation


# static fields
.field public static final BAND_AM:I = 0x0

.field public static final BAND_AM_HD:I = 0x3

.field public static final BAND_FM:I = 0x1

.field public static final BAND_FM_HD:I = 0x2

.field public static final BAND_INVALID:I = -0x1

.field public static final CLASS_AM_FM:I = 0x0

.field public static final CLASS_DT:I = 0x2

.field public static final CLASS_SAT:I = 0x1

.field public static final REGION_ITU_1:I = 0x0

.field public static final REGION_ITU_2:I = 0x1

.field public static final REGION_JAPAN:I = 0x3

.field public static final REGION_KOREA:I = 0x4

.field public static final REGION_OIRT:I = 0x2

.field public static final STATUS_BAD_VALUE:I = -0x16

.field public static final STATUS_DEAD_OBJECT:I = -0x20

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_INVALID_OPERATION:I = -0x26

.field public static final STATUS_NO_INIT:I = -0x13

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_PERMISSION_DENIED:I = -0x1

.field public static final STATUS_TIMED_OUT:I = -0x6e

.field private static final TAG:Ljava/lang/String; = "BroadcastRadio.manager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/radio/IRadioService;


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 2

    invoke-static {p0}, Landroid/hardware/radio/RadioManager;->readStringMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/hardware/radio/RadioManager;->writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/radio/RadioManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "broadcastradio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/IRadioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/IRadioService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    return-void
.end method

.method private native nativeListModules(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;)I"
        }
    .end annotation
.end method

.method private static readStringMap(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v3, v2

    :goto_a
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_1b

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_a

    :cond_1b
    return-object v1
.end method

.method private static writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_f

    :cond_2e
    return-void
.end method


# virtual methods
.method public listModules(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_e

    const-string/jumbo v2, "BroadcastRadio.manager"

    const-string/jumbo v3, "the output list must not be empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x16

    return v2

    :cond_e
    const-string/jumbo v2, "BroadcastRadio.manager"

    const-string/jumbo v3, "Listing available tuners..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_17
    iget-object v2, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    invoke-interface {v2}, Landroid/hardware/radio/IRadioService;->listModules()Ljava/util/List;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_2b

    move-result-object v1

    if-nez v1, :cond_38

    const-string/jumbo v2, "BroadcastRadio.manager"

    const-string/jumbo v3, "Returned list was a null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, -0x80000000

    return v2

    :catch_2b
    move-exception v0

    const-string/jumbo v2, "BroadcastRadio.manager"

    const-string/jumbo v3, "Failed listing available tuners"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x20

    return v2

    :cond_38
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    return v2
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)Landroid/hardware/radio/RadioTuner;
    .registers 13

    const/4 v6, 0x0

    if-nez p4, :cond_c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "callback must not be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    const-string/jumbo v3, "BroadcastRadio.manager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Opening tuner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-direct {v1, p4, p5}, Landroid/hardware/radio/TunerCallbackAdapter;-><init>(Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V

    :try_start_32
    iget-object v3, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    invoke-interface {v3, p1, p2, p3, v1}, Landroid/hardware/radio/IRadioService;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_44

    move-result-object v2

    if-nez v2, :cond_4f

    const-string/jumbo v3, "BroadcastRadio.manager"

    const-string/jumbo v4, "Failed to open tuner"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :catch_44
    move-exception v0

    const-string/jumbo v3, "BroadcastRadio.manager"

    const-string/jumbo v4, "Failed to open tuner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6

    :cond_4f
    new-instance v4, Landroid/hardware/radio/TunerAdapter;

    if-eqz p2, :cond_5b

    invoke-virtual {p2}, Landroid/hardware/radio/RadioManager$BandConfig;->getType()I

    move-result v3

    :goto_57
    invoke-direct {v4, v2, v3}, Landroid/hardware/radio/TunerAdapter;-><init>(Landroid/hardware/radio/ITuner;I)V

    return-object v4

    :cond_5b
    const/4 v3, -0x1

    goto :goto_57
.end method
