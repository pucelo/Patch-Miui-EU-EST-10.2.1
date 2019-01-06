.class Lcom/android/internal/os/BatteryStatsImpl$3;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$numWakelocksF:I

.field final synthetic val$updatedUids:Landroid/util/SparseLongArray;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;ILandroid/util/SparseLongArray;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$numWakelocksF:I

    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$updatedUids:Landroid/util/SparseLongArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidCpuTime(IJJ)V
    .registers 16

    const-wide/16 v8, 0x64

    const-wide/16 v6, 0x32

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-get3(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/KernelUidCpuTimeReader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    const-string/jumbo v2, "BatteryStatsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got readings for an isolated uid with no mapping to owning uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-get5(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-result-object v2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;->-wrap0(Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;I)Z

    move-result v2

    if-nez v2, :cond_68

    const-string/jumbo v2, "BatteryStatsImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got readings for an invalid user\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-get3(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/KernelUidCpuTimeReader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUid(I)V

    return-void

    :cond_68
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    add-long/2addr v4, p2

    iput-wide v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    add-long/2addr v4, p4

    iput-wide v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$numWakelocksF:I

    if-lez v2, :cond_89

    mul-long v2, p2, v6

    div-long p2, v2, v8

    mul-long v2, p4, v6

    div-long p4, v2, v8

    :cond_89
    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$updatedUids:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v3

    add-long v4, p2, p4

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method
