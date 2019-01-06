.class final Landroid/os/SharedMemory$Unmapper;
.super Ljava/lang/Object;
.source "SharedMemory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Unmapper"
.end annotation


# instance fields
.field private mAddress:J

.field private mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

.field private mSize:I


# direct methods
.method private constructor <init>(JILandroid/os/SharedMemory$MemoryRegistration;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/SharedMemory$Unmapper;->mAddress:J

    iput p3, p0, Landroid/os/SharedMemory$Unmapper;->mSize:I

    iput-object p4, p0, Landroid/os/SharedMemory$Unmapper;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    return-void
.end method

.method synthetic constructor <init>(JILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$Unmapper;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/SharedMemory$Unmapper;-><init>(JILandroid/os/SharedMemory$MemoryRegistration;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    iget-wide v2, p0, Landroid/os/SharedMemory$Unmapper;->mAddress:J

    iget v1, p0, Landroid/os/SharedMemory$Unmapper;->mSize:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->munmap(JJ)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_11

    :goto_8
    iget-object v1, p0, Landroid/os/SharedMemory$Unmapper;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-virtual {v1}, Landroid/os/SharedMemory$MemoryRegistration;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/SharedMemory$Unmapper;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    return-void

    :catch_11
    move-exception v0

    goto :goto_8
.end method
