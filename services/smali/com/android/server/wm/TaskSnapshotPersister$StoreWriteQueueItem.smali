.class Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;
.super Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreWriteQueueItem"
.end annotation


# instance fields
.field private final mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

.field private final mTaskId:I

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    return v0
.end method

.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;IILandroid/app/ActivityManager$TaskSnapshot;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;)V

    iput p2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iput p3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    iput-object p4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    return-void
.end method


# virtual methods
.method onDequeuedLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->-get4(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method onQueuedLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->-get4(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method write()V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->-wrap0(Lcom/android/server/wm/TaskSnapshotPersister;I)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {}, Lcom/android/server/wm/TaskSnapshotPersister;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create snapshot directory for user dir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/server/wm/TaskSnapshotPersister;->-wrap1(Lcom/android/server/wm/TaskSnapshotPersister;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->writeProto()Z

    move-result v1

    if-nez v1, :cond_35

    const/4 v0, 0x1

    :cond_35
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->writeBuffer()Z

    move-result v1

    if-nez v1, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    if-eqz v0, :cond_47

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->-wrap2(Lcom/android/server/wm/TaskSnapshotPersister;II)V

    :cond_47
    return-void
.end method

.method writeBuffer()Z
    .registers 14

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-static {}, Lcom/android/server/wm/TaskSnapshotPersister;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Invalid task snapshot hw bitmap"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_19
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v9, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v10, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskSnapshot;->isReducedResolution()Z

    move-result v8

    if-eqz v8, :cond_4a

    move-object v4, v7

    :goto_32
    :try_start_32
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x5f

    invoke-virtual {v4, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_41} :catch_61

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskSnapshot;->isReducedResolution()Z

    move-result v8

    if-eqz v8, :cond_85

    return v12

    :cond_4a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sget v9, Lcom/android/server/wm/TaskSnapshotPersister;->REDUCED_SCALE:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sget v10, Lcom/android/server/wm/TaskSnapshotPersister;->REDUCED_SCALE:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v7, v8, v9, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_32

    :catch_61
    move-exception v1

    invoke-static {}, Lcom/android/server/wm/TaskSnapshotPersister;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to open "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for persisting."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v11

    :cond_85
    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v9, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v10, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/TaskSnapshotPersister;->getBitmapFile(II)Ljava/io/File;

    move-result-object v2

    :try_start_8f
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x5f

    invoke-virtual {v7, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_9e} :catch_9f

    return v12

    :catch_9f
    move-exception v1

    invoke-static {}, Lcom/android/server/wm/TaskSnapshotPersister;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to open "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for persisting."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v11
.end method

.method writeProto()Z
    .registers 10

    new-instance v5, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    invoke-direct {v5}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;-><init>()V

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v6

    iput v6, v5, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iput v6, v5, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iput v6, v5, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-static {v5}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v7, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v8, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v3

    new-instance v0, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v0, v3}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    :try_start_49
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0, v4}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_53} :catch_55

    const/4 v6, 0x1

    return v6

    :catch_55
    move-exception v2

    invoke-virtual {v0, v4}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    invoke-static {}, Lcom/android/server/wm/TaskSnapshotPersister;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for persisting. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return v6
.end method
