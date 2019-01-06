.class Landroid/media/AudioStatusHandler$DeviceState;
.super Ljava/lang/Object;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceState"
.end annotation


# instance fields
.field mConfig:I

.field mPid:I

.field mReason:Ljava/lang/String;

.field mUid:I

.field mUsage:I

.field final synthetic this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method public constructor <init>(Landroid/media/AudioStatusHandler;I)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/media/AudioStatusHandler$DeviceState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUsage:I

    iput v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    iput v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUid:I

    iput v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mPid:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/AudioStatusHandler$DeviceState;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public update(IILjava/lang/String;)Z
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v2, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUsage:I

    if-ne p1, v2, :cond_a

    iget v2, p0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    if-ne p2, v2, :cond_b

    :cond_a
    return v4

    :cond_b
    iput p2, p0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    if-nez p3, :cond_1f

    const-string/jumbo v2, ""

    iput-object v2, p0, Landroid/media/AudioStatusHandler$DeviceState;->mReason:Ljava/lang/String;

    invoke-static {}, Landroid/media/AudioStatusHandler;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DeviceState update eventSource is null, but normal"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1f
    const/16 v2, 0x3a

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_33
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUid:I

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroid/media/AudioStatusHandler$DeviceState;->mPid:I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4c} :catch_a6

    :goto_4c
    iput-object p3, p0, Landroid/media/AudioStatusHandler$DeviceState;->mReason:Ljava/lang/String;

    invoke-static {}, Landroid/media/AudioStatusHandler;->-get0()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-static {}, Landroid/media/AudioStatusHandler;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DeviceState update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUsage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioStatusHandler$DeviceState;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioStatusHandler$DeviceState;->mReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    return v5

    :catch_a6
    move-exception v0

    iput v4, p0, Landroid/media/AudioStatusHandler$DeviceState;->mUid:I

    iput v4, p0, Landroid/media/AudioStatusHandler$DeviceState;->mPid:I

    invoke-static {}, Landroid/media/AudioStatusHandler;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DeviceState update failed to format uid & pid"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method
