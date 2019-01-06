.class public Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation


# instance fields
.field private final mIndexMap:Landroid/util/SparseIntArray;

.field private final mIndexMax:I

.field private final mIndexMin:I

.field private mIsMuted:Z

.field private mObservedDevices:I

.field private final mStreamDevicesChanged:Landroid/content/Intent;

.field private final mStreamType:I

.field private final mVolumeChanged:Landroid/content/Intent;

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/AudioService$VolumeStreamState;)I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {}, Lcom/android/server/audio/AudioService;->-get1()[I

    move-result-object v0

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    invoke-static {}, Lcom/android/server/audio/AudioService;->-get0()[I

    move-result-object v0

    aget v0, v0, p3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string/jumbo v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const-string/jumbo v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$VolumeStreamState;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 12

    const/high16 v9, 0x40000000    # 2.0f

    const-string/jumbo v7, "   Muted: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v7, "   Min: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v7, "   Max: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v7, "   Current: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_32
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_84

    if-lez v3, :cond_42

    const-string/jumbo v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_42
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne v0, v9, :cond_7f

    const-string/jumbo v1, "default"

    :goto_54
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_69

    const-string/jumbo v7, " ("

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, ")"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_69
    const-string/jumbo v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v4, v7, 0xa

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_7f
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_54

    :cond_84
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v7, "   Devices: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->-wrap5(Lcom/android/server/audio/AudioService;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v6, v5

    :goto_98
    const/4 v7, 0x1

    shl-int v0, v7, v3

    if-eq v0, v9, :cond_b6

    and-int v7, v2, v0

    if-eqz v7, :cond_b7

    add-int/lit8 v5, v6, 0x1

    if-lez v6, :cond_ab

    const-string/jumbo v7, ", "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_ab
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_b2
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    goto :goto_98

    :cond_b6
    return-void

    :cond_b7
    move v5, v6

    goto :goto_b2
.end method

.method private getAbsoluteVolumeIndex(I)I
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    :goto_3
    return p1

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_3

    :cond_11
    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_3

    :cond_21
    const/4 v0, 0x3

    if-ne p1, v0, :cond_31

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    int-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 p1, v0, 0xa

    goto :goto_3

    :cond_31
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 p1, v0, 0xa

    goto :goto_3
.end method

.method private getValidIndex(I)I
    .registers 3

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-ge p1, v0, :cond_7

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0

    :cond_7
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get42(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_16

    :cond_13
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0

    :cond_16
    return p1
.end method

.method private hasValidSettingsName()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public adjustIndex(IILjava/lang/String;)Z
    .registers 5

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public applyAllVolumes()V
    .registers 7

    const/high16 v5, 0x40000000    # 2.0f

    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v4

    const/4 v1, 0x0

    :goto_6
    :try_start_6
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_55

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    if-eq v0, v5, :cond_20

    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v3, :cond_23

    const/4 v2, 0x0

    :goto_1b
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v3, v2, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    and-int/lit16 v3, v0, 0x380

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v2

    goto :goto_1b

    :cond_3c
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_4a

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v2, v3, 0xa

    goto :goto_1b

    :cond_4a
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v2, v3, 0xa

    goto :goto_1b

    :cond_55
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v3, :cond_63

    const/4 v2, 0x0

    :goto_5a
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v2, v5}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I
    :try_end_61
    .catchall {:try_start_6 .. :try_end_61} :catchall_6e

    monitor-exit v4

    return-void

    :cond_63
    const/high16 v3, 0x40000000    # 2.0f

    :try_start_65
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v2, v3, 0xa
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_6e

    goto :goto_5a

    :catchall_6e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .registers 4

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :goto_5
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    return-void

    :cond_b
    and-int/lit16 v1, p1, 0x380

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get12(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getAbsoluteVolumeIndex(I)I

    move-result v0

    goto :goto_5

    :cond_24
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_32

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    goto :goto_5

    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    goto :goto_5
.end method

.method public checkFixedVolumeDevices()V
    .registers 7

    const-class v4, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v4

    :try_start_3
    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v3, v3, v5

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3e

    const/4 v1, 0x0

    :goto_d
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_3e

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v3, v0

    if-nez v3, :cond_31

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, v3, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_38

    if-eqz v2, :cond_38

    :cond_31
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_38
    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_40

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_3e
    monitor-exit v4

    return-void

    :catchall_40
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getIndex(I)I
    .registers 7

    const/4 v4, -0x1

    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v4, :cond_15

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_17

    move-result v0

    :cond_15
    monitor-exit v2

    return v0

    :catchall_17
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getMaxIndex()I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getMinIndex()I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object v1

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStreamType()I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public hasIndexForDevice(I)Z
    .registers 6

    const/4 v3, -0x1

    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_12

    move-result v0

    if-eq v0, v3, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public mute(Z)V
    .registers 12

    const/4 v7, 0x0

    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9

    :try_start_4
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eq p1, v0, :cond_1b

    const/4 v7, 0x1

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get9(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-wrap39(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_3a

    :cond_1b
    monitor-exit v9

    if-eqz v7, :cond_39

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v8, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0, v8}, Lcom/android/server/audio/AudioService;->-wrap37(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    :cond_39
    return-void

    :catchall_3a
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public observeDevicesForStream_syncVSS(Z)I
    .registers 7

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    if-ne v0, v2, :cond_b

    return v0

    :cond_b
    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDevices:I

    if-eqz p1, :cond_18

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap21(Lcom/android/server/audio/AudioService;I)V

    :cond_18
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v2, v3

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v2, v3, :cond_27

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2, v1, v0}, Lcom/android/server/EventLogTags;->writeStreamDevicesChanged(III)V

    :cond_27
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const-string/jumbo v4, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-wrap37(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    return v0
.end method

.method public readSettings()V
    .registers 12

    const/4 v10, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const-class v7, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v7

    :try_start_6
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get42(Lcom/android/server/audio/AudioService;)Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v6, v9, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_4c

    monitor-exit v7

    return-void

    :cond_19
    :try_start_19
    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v6, v10, :cond_22

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v8, 0x7

    if-ne v6, v8, :cond_4f

    :cond_22
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v8

    mul-int/lit8 v3, v6, 0xa

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v8

    monitor-enter v8
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_4c

    :try_start_31
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3f

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_49

    :cond_3f
    :try_start_3f
    monitor-exit v8

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v6, v8, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_4c

    monitor-exit v7

    return-void

    :catchall_49
    move-exception v6

    :try_start_4a
    monitor-exit v8

    throw v6
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_4f
    const v5, 0x47ffffff

    const/4 v2, 0x0

    :goto_53
    if-eqz v5, :cond_90

    shl-int v1, v10, v2

    and-int v6, v1, v5

    if-nez v6, :cond_5e

    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_5e
    not-int v6, v1

    and-int/2addr v5, v6

    if-ne v1, v9, :cond_7e

    :try_start_62
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v6, v8

    :goto_68
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasValidSettingsName()Z

    move-result v6

    if-nez v6, :cond_80

    move v3, v0

    :goto_6f
    const/4 v6, -0x1

    if-eq v3, v6, :cond_5b

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    mul-int/lit8 v8, v3, 0xa

    invoke-direct {p0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v8

    invoke-virtual {v6, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5b

    :cond_7e
    const/4 v0, -0x1

    goto :goto_68

    :cond_80
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get17(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, -0x2

    invoke-static {v6, v4, v0, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_8e
    .catchall {:try_start_62 .. :try_end_8e} :catchall_4c

    move-result v3

    goto :goto_6f

    :cond_90
    monitor-exit v7

    return-void
.end method

.method public setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .registers 11

    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v6, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v5, v6, :cond_7

    return-void

    :cond_7
    const-class v6, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v6

    :try_start_a
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p1, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->-wrap6(Lcom/android/server/audio/AudioService;III)I

    move-result v2

    const/4 v1, 0x0

    :goto_1d
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_33

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_33
    iget-object v3, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    :goto_36
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_52

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v2, v4, v7}, Lcom/android/server/audio/AudioService;->-wrap6(Lcom/android/server/audio/AudioService;III)I

    move-result v2

    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z
    :try_end_4f
    .catchall {:try_start_a .. :try_end_4f} :catchall_54

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_52
    monitor-exit v6

    return-void

    :catchall_54
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setAllIndexesToMax()V
    .registers 6

    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1c
    monitor-exit v2

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setIndex(IILjava/lang/String;)Z
    .registers 15

    const/4 v1, 0x0

    const-class v8, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v8

    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result p1

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v9

    monitor-enter v9
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_7c

    :try_start_13
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v10, 0x7

    if-ne v7, v10, :cond_26

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-get15(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_26

    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_79

    :cond_26
    :try_start_26
    monitor-exit v9

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    if-eq v4, p1, :cond_7f

    const/4 v1, 0x1

    :goto_2f
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v7, v9}, Lcom/android/server/audio/AudioService;->-wrap4(Lcom/android/server/audio/AudioService;I)I

    move-result v7

    if-ne p2, v7, :cond_81

    const/4 v2, 0x1

    :goto_3a
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    :goto_40
    if-ltz v6, :cond_83

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-get40(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v7

    aget-object v0, v7, v6

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v6, v7, :cond_76

    sget-object v7, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v7, v7, v6

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v7, v9, :cond_76

    if-nez v1, :cond_60

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_76

    :cond_60
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v9, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v7, p1, v9, v6}, Lcom/android/server/audio/AudioService;->-wrap6(Lcom/android/server/audio/AudioService;III)I

    move-result v5

    invoke-virtual {v0, v5, p2, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    if-eqz v2, :cond_76

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7, v6}, Lcom/android/server/audio/AudioService;->-wrap4(Lcom/android/server/audio/AudioService;I)I

    move-result v7

    invoke-virtual {v0, v5, v7, p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    :cond_76
    add-int/lit8 v6, v6, -0x1

    goto :goto_40

    :catchall_79
    move-exception v7

    monitor-exit v9

    throw v7
    :try_end_7c
    .catchall {:try_start_26 .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_7f
    const/4 v1, 0x0

    goto :goto_2f

    :cond_81
    const/4 v2, 0x0

    goto :goto_3a

    :cond_83
    monitor-exit v8

    if-eqz v1, :cond_d6

    add-int/lit8 v7, v4, 0x5

    div-int/lit8 v4, v7, 0xa

    add-int/lit8 v7, p1, 0x5

    div-int/lit8 p1, v7, 0xa

    sget-object v7, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v7, v7, v8

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v7, v8, :cond_b1

    if-nez p3, :cond_a8

    const-string/jumbo v7, "AudioService"

    const-string/jumbo v8, "No caller for volume_changed event"

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v7, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a8
    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v8, v8, 0xa

    invoke-static {v7, v4, p1, v8, p3}, Lcom/android/server/EventLogTags;->writeVolumeChanged(IIIILjava/lang/String;)V

    :cond_b1
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v7, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string/jumbo v8, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    const-string/jumbo v8, "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

    sget-object v9, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    iget v10, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v9, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;

    invoke-static {v7, v8}, Lcom/android/server/audio/AudioService;->-wrap37(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    :cond_d6
    return v1
.end method
