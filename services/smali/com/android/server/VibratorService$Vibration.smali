.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field private final mEffect:Landroid/os/VibrationEffect;

.field private final mOpPkg:Ljava/lang/String;

.field private final mStartTime:J

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field private final mUsageHint:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/VibratorService$Vibration;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/VibratorService$Vibration;)I
    .registers 2

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    return v0
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    iput p4, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get1(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v0

    if-ne p0, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap0(Lcom/android/server/VibratorService;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasLongerTimeout(J)Z
    .registers 10

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$OneShot;

    if-eqz v2, :cond_1d

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    iget-wide v2, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    :cond_1d
    return v1
.end method

.method public isSystemHapticFeedback()Z
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    instance-of v3, v3, Landroid/os/VibrationEffect$Waveform;

    if-eqz v3, :cond_13

    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    check-cast v1, Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v3

    if-gez v3, :cond_20

    const/4 v0, 0x1

    :cond_13
    :goto_13
    iget v3, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_1d

    iget v3, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    if-nez v3, :cond_22

    :cond_1d
    :goto_1d
    xor-int/lit8 v2, v0, 0x1

    :cond_1f
    return v2

    :cond_20
    const/4 v0, 0x0

    goto :goto_13

    :cond_22
    const-string/jumbo v3, "com.android.systemui"

    iget-object v4, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_1d
.end method
