.class Lcom/android/server/VibratorServiceInjector$VibrationInfo;
.super Ljava/lang/Object;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VibrationInfo"
.end annotation


# instance fields
.field private final mAddedTime:J

.field private final mEffect:Landroid/os/VibrationEffect;

.field private final mForeground:Z

.field private final mOpPkg:Ljava/lang/String;

.field private final mUid:I

.field private final mUsageHint:I


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorServiceInjector$VibrationInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mOpPkg:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/os/VibrationEffect;IILjava/lang/String;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mAddedTime:J

    iput-object p1, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    iput p2, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mUsageHint:I

    iput p3, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mUid:I

    iput-object p4, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mOpPkg:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mForeground:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mAddedTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ", mAddedTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", usageHint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mUsageHint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", opPkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", foreground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->mForeground:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
