.class public Lcom/android/internal/util/ReadWriteNV;
.super Landroid/os/Handler;
.source "ReadWriteNV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ReadWriteNV$StreamGobbler;
    }
.end annotation


# static fields
.field static sInstance:Lcom/android/internal/util/ReadWriteNV;


# instance fields
.field final EVENT_READ_NV:I

.field final EVENT_READ_NV_COMPLETE:I

.field final EVENT_READ_NV_TIMEOUT:I

.field final EVENT_WRITE_NV:I

.field final EVENT_WRITE_NV_COMPLETE:I

.field final EVENT_WRITE_NV_TIMEOUT:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final TIMOUT:I

.field private bProcessingRead:Z

.field private bProcessingWrite:Z

.field private is_read:Z

.field private mReadNVComplete:Z

.field protected final mReadWriteNVRegistrants:Landroid/os/RegistrantList;

.field private mWriteNVComplete:Z

.field private nv_item:I

.field private nv_value:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/internal/util/ReadWriteNV;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/util/ReadWriteNV;->is_read:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/util/ReadWriteNV;)I
    .registers 2

    iget v0, p0, Lcom/android/internal/util/ReadWriteNV;->nv_item:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/util/ReadWriteNV;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/ReadWriteNV;->nv_value:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/util/ReadWriteNV;->sInstance:Lcom/android/internal/util/ReadWriteNV;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v0, "ReadWriteNV"

    iput-object v0, p0, Lcom/android/internal/util/ReadWriteNV;->LOG_TAG:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/util/ReadWriteNV;->nv_item:I

    iput-object v2, p0, Lcom/android/internal/util/ReadWriteNV;->nv_value:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/util/ReadWriteNV;->is_read:Z

    iput-boolean v1, p0, Lcom/android/internal/util/ReadWriteNV;->mReadNVComplete:Z

    iput-boolean v1, p0, Lcom/android/internal/util/ReadWriteNV;->mWriteNVComplete:Z

    iput-boolean v1, p0, Lcom/android/internal/util/ReadWriteNV;->bProcessingRead:Z

    iput-boolean v1, p0, Lcom/android/internal/util/ReadWriteNV;->bProcessingWrite:Z

    iput v1, p0, Lcom/android/internal/util/ReadWriteNV;->EVENT_READ_NV:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV;->EVENT_WRITE_NV:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV;->EVENT_READ_NV_COMPLETE:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV;->EVENT_WRITE_NV_COMPLETE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV;->EVENT_READ_NV_TIMEOUT:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV;->EVENT_WRITE_NV_TIMEOUT:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV;->TIMOUT:I

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ReadWriteNV;->mReadWriteNVRegistrants:Landroid/os/RegistrantList;

    iput v1, p0, Lcom/android/internal/util/ReadWriteNV;->nv_item:I

    iput-boolean v1, p0, Lcom/android/internal/util/ReadWriteNV;->is_read:Z

    iput-object v2, p0, Lcom/android/internal/util/ReadWriteNV;->nv_value:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/android/internal/util/ReadWriteNV;
    .registers 1

    sget-object v0, Lcom/android/internal/util/ReadWriteNV;->sInstance:Lcom/android/internal/util/ReadWriteNV;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/internal/util/ReadWriteNV;

    invoke-direct {v0}, Lcom/android/internal/util/ReadWriteNV;-><init>()V

    sput-object v0, Lcom/android/internal/util/ReadWriteNV;->sInstance:Lcom/android/internal/util/ReadWriteNV;

    :cond_b
    sget-object v0, Lcom/android/internal/util/ReadWriteNV;->sInstance:Lcom/android/internal/util/ReadWriteNV;

    return-object v0
.end method

.method private readWriteNV()V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/util/ReadWriteNV$1;

    invoke-direct {v1, p0}, Lcom/android/internal/util/ReadWriteNV$1;-><init>(Lcom/android/internal/util/ReadWriteNV;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_64

    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    const-string/jumbo v0, "ReadWriteNV"

    const-string/jumbo v1, "EVENT_READ_NV "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/util/ReadWriteNV;->readWriteNV()V

    goto :goto_8

    :pswitch_16
    const-string/jumbo v0, "ReadWriteNV"

    const-string/jumbo v1, "EVENT_WRITE_NV "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/util/ReadWriteNV;->readWriteNV()V

    goto :goto_8

    :pswitch_23
    const-string/jumbo v0, "ReadWriteNV"

    const-string/jumbo v1, "EVENT_READ_NV_COMPLETE "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/internal/util/ReadWriteNV;->mReadNVComplete:Z

    iput-boolean v2, p0, Lcom/android/internal/util/ReadWriteNV;->bProcessingRead:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/ReadWriteNV;->nv_value:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ReadWriteNV;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/util/ReadWriteNV;->nv_value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ReadWriteNV;->notifyReadWriteNV(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_40
    iput-boolean v3, p0, Lcom/android/internal/util/ReadWriteNV;->mWriteNVComplete:Z

    iput-boolean v2, p0, Lcom/android/internal/util/ReadWriteNV;->bProcessingWrite:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/ReadWriteNV;->nv_value:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ReadWriteNV;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/util/ReadWriteNV;->nv_value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ReadWriteNV;->notifyReadWriteNV(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_54
    iput-boolean v3, p0, Lcom/android/internal/util/ReadWriteNV;->mReadNVComplete:Z

    iput-boolean v2, p0, Lcom/android/internal/util/ReadWriteNV;->bProcessingRead:Z

    invoke-virtual {p0, v1}, Lcom/android/internal/util/ReadWriteNV;->notifyReadWriteNV(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_5c
    iput-boolean v3, p0, Lcom/android/internal/util/ReadWriteNV;->mWriteNVComplete:Z

    iput-boolean v2, p0, Lcom/android/internal/util/ReadWriteNV;->bProcessingWrite:Z

    invoke-virtual {p0, v1}, Lcom/android/internal/util/ReadWriteNV;->notifyReadWriteNV(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_9
        :pswitch_16
        :pswitch_8
        :pswitch_23
        :pswitch_40
        :pswitch_54
        :pswitch_5c
    .end packed-switch
.end method

.method public isProcessing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/util/ReadWriteNV;->bProcessingWrite:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/internal/util/ReadWriteNV;->bProcessingRead:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public notifyReadWriteNV(Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string/jumbo v1, "ReadWriteNV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyReadWriteNV "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/util/ReadWriteNV;->mReadWriteNVRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public readnv(I)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v0, "ReadWriteNV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readnv "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/util/ReadWriteNV;->bProcessingRead:Z

    if-eqz v0, :cond_21

    return v3

    :cond_21
    iput p1, p0, Lcom/android/internal/util/ReadWriteNV;->nv_item:I

    iput-boolean v4, p0, Lcom/android/internal/util/ReadWriteNV;->is_read:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/ReadWriteNV;->nv_value:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/internal/util/ReadWriteNV;->bProcessingRead:Z

    invoke-virtual {p0, v3}, Lcom/android/internal/util/ReadWriteNV;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ReadWriteNV;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ReadWriteNV;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/util/ReadWriteNV;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v4
.end method

.method public registerForReadWriteNVRegistrants(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/internal/util/ReadWriteNV;->mReadNVComplete:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/util/ReadWriteNV;->mWriteNVComplete:Z

    if-eqz v0, :cond_d

    :cond_8
    iget-object v0, p0, Lcom/android/internal/util/ReadWriteNV;->nv_value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ReadWriteNV;->notifyReadWriteNV(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/android/internal/util/ReadWriteNV;->mReadWriteNVRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method send_command(IZLjava/lang/String;)V
    .registers 12

    const-string/jumbo v5, "ReadWriteNV"

    const-string/jumbo v6, "send_command()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_66

    const-string/jumbo v5, "LctReadWriteNV "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    const-string/jumbo v5, "ReadWriteNV"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send command is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    const-string/jumbo v6, "Error"

    invoke-direct {v1, p0, v5, v6, p1}, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;-><init>(Lcom/android/internal/util/ReadWriteNV;Ljava/io/InputStream;Ljava/lang/String;I)V

    new-instance v2, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string/jumbo v6, "Output"

    invoke-direct {v2, p0, v5, v6, p1}, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;-><init>(Lcom/android/internal/util/ReadWriteNV;Ljava/io/InputStream;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->start()V

    invoke-virtual {v2}, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->start()V

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    :goto_65
    return-void

    :cond_66
    const-string/jumbo v5, "LctReadWriteNV "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_7b} :catch_7c

    goto :goto_1a

    :catch_7c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65
.end method

.method public unregisterForReadWriteNVRegistrants(Landroid/os/Handler;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/ReadWriteNV;->mReadWriteNVRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public writenv(ILjava/lang/String;)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v0, "ReadWriteNV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writenv "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/util/ReadWriteNV;->bProcessingWrite:Z

    if-eqz v0, :cond_2c

    return v3

    :cond_2c
    iput p1, p0, Lcom/android/internal/util/ReadWriteNV;->nv_item:I

    iput-boolean v3, p0, Lcom/android/internal/util/ReadWriteNV;->is_read:Z

    iput-object p2, p0, Lcom/android/internal/util/ReadWriteNV;->nv_value:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/internal/util/ReadWriteNV;->bProcessingWrite:Z

    invoke-virtual {p0, v4}, Lcom/android/internal/util/ReadWriteNV;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ReadWriteNV;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/util/ReadWriteNV;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/util/ReadWriteNV;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v4
.end method
