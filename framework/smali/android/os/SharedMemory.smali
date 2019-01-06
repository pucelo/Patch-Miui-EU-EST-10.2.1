.class public final Landroid/os/SharedMemory;
.super Ljava/lang/Object;
.source "SharedMemory.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SharedMemory$1;,
        Landroid/os/SharedMemory$Closer;,
        Landroid/os/SharedMemory$MemoryRegistration;,
        Landroid/os/SharedMemory$Unmapper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/SharedMemory;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROT_MASK:I


# instance fields
.field private mCleaner:Lsun/misc/Cleaner;

.field private final mFileDescriptor:Ljava/io/FileDescriptor;

.field private final mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

.field private final mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->PROT_EXEC:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->PROT_NONE:I

    or-int/2addr v0, v1

    sput v0, Landroid/os/SharedMemory;->PROT_MASK:I

    new-instance v0, Landroid/os/SharedMemory$1;

    invoke-direct {v0}, Landroid/os/SharedMemory$1;-><init>()V

    sput-object v0, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unable to create SharedMemory from a null FileDescriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unable to create SharedMemory from closed FileDescriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iput-object p1, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/SharedMemory;->nGetSize(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Landroid/os/SharedMemory;->mSize:I

    iget v0, p0, Landroid/os/SharedMemory;->mSize:I

    if-gtz v0, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "FileDescriptor is not a valid ashmem fd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance v0, Landroid/os/SharedMemory$MemoryRegistration;

    iget v1, p0, Landroid/os/SharedMemory;->mSize:I

    invoke-direct {v0, v1, v4}, Landroid/os/SharedMemory$MemoryRegistration;-><init>(ILandroid/os/SharedMemory$MemoryRegistration;)V

    iput-object v0, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    new-instance v1, Landroid/os/SharedMemory$Closer;

    iget-object v2, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v3, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-direct {v1, v2, v3, v4}, Landroid/os/SharedMemory$Closer;-><init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$Closer;)V

    invoke-static {v0, v1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private checkOpen()V
    .registers 3

    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SharedMemory is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method

.method public static create(Ljava/lang/String;I)Landroid/os/SharedMemory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    if-gtz p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Landroid/os/SharedMemory;

    invoke-static {p0, p1}, Landroid/os/SharedMemory;->nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method private static native nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method private static native nGetSize(Ljava/io/FileDescriptor;)I
.end method

.method private static native nSetProt(Ljava/io/FileDescriptor;I)I
.end method

.method public static unmap(Ljava/nio/ByteBuffer;)V
    .registers 3

    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_8

    invoke-static {p0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ByteBuffer wasn\'t created by #map(int, int, int); can\'t unmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateProt(I)V
    .registers 3

    sget v0, Landroid/os/SharedMemory;->PROT_MASK:I

    not-int v0, v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid prot value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    iput-object v1, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    :cond_c
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getFd()I
    .registers 2

    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    return v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    iget v0, p0, Landroid/os/SharedMemory;->mSize:I

    return v0
.end method

.method public map(III)Ljava/nio/ByteBuffer;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    invoke-static {p1}, Landroid/os/SharedMemory;->validateProt(I)V

    if-gez p2, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Offset must be >= 0"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-gtz p3, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Length must be > 0"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    add-int v0, p2, p3

    iget v4, p0, Landroid/os/SharedMemory;->mSize:I

    if-le v0, v4, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "offset + length must not exceed getSize()"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    const-wide/16 v0, 0x0

    int-to-long v2, p3

    sget v5, Landroid/system/OsConstants;->MAP_SHARED:I

    iget-object v6, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    int-to-long v7, p2

    move v4, p1

    invoke-static/range {v0 .. v8}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v2

    sget v0, Landroid/system/OsConstants;->PROT_WRITE:I

    and-int/2addr v0, p1

    if-nez v0, :cond_56

    const/4 v10, 0x1

    :goto_3e
    new-instance v1, Landroid/os/SharedMemory$Unmapper;

    iget-object v0, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-virtual {v0}, Landroid/os/SharedMemory$MemoryRegistration;->acquire()Landroid/os/SharedMemory$MemoryRegistration;

    move-result-object v5

    const/4 v6, 0x0

    move v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/os/SharedMemory$Unmapper;-><init>(JILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory$Unmapper;)V

    new-instance v4, Ljava/nio/DirectByteBuffer;

    iget-object v8, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    move v5, p3

    move-wide v6, v2

    move-object v9, v1

    invoke-direct/range {v4 .. v10}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V

    return-object v4

    :cond_56
    const/4 v10, 0x0

    goto :goto_3e
.end method

.method public mapReadOnly()Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    iget v1, p0, Landroid/os/SharedMemory;->mSize:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public mapReadWrite()Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/os/SharedMemory;->mSize:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public setProtect(I)Z
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    invoke-static {p1}, Landroid/os/SharedMemory;->validateProt(I)V

    iget-object v2, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v2, p1}, Landroid/os/SharedMemory;->nSetProt(Ljava/io/FileDescriptor;I)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    return-void
.end method
