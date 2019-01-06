.class final Landroid/os/SharedMemory$Closer;
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
    name = "Closer"
.end annotation


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;


# direct methods
.method private constructor <init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$MemoryRegistration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/SharedMemory$Closer;->mFd:Ljava/io/FileDescriptor;

    iput-object p2, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$Closer;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/os/SharedMemory$Closer;-><init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$MemoryRegistration;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/os/SharedMemory$Closer;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_5} :catch_e

    :goto_5
    iget-object v1, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-virtual {v1}, Landroid/os/SharedMemory$MemoryRegistration;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/SharedMemory$Closer;->mMemoryReference:Landroid/os/SharedMemory$MemoryRegistration;

    return-void

    :catch_e
    move-exception v0

    goto :goto_5
.end method
