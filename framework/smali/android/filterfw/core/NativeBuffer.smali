.class public Landroid/filterfw/core/NativeBuffer;
.super Ljava/lang/Object;
.source "NativeBuffer.java"


# instance fields
.field private mAttachedFrame:Landroid/filterfw/core/Frame;

.field private mDataPointer:J

.field private mOwnsData:Z

.field private mRefCount:I

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    iput v2, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    iput-boolean v2, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    iput v2, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    iput-boolean v2, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    iput v3, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->getElementSize()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeBuffer;->allocate(I)Z

    iput-boolean v3, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    return-void
.end method

.method private native allocate(I)Z
.end method

.method private native deallocate(Z)Z
.end method

.method private native nativeCopyTo(Landroid/filterfw/core/NativeBuffer;)Z
.end method


# virtual methods
.method protected assertReadable()V
    .registers 5

    iget-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    if-nez v0, :cond_15

    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Attempting to read from null data frame!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->hasNativeAllocation()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_c

    :cond_23
    return-void
.end method

.method protected assertWritable()V
    .registers 3

    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Attempting to modify read-only native (structured) data!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method attachToFrame(Landroid/filterfw/core/Frame;)V
    .registers 2

    iput-object p1, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    return-void
.end method

.method public count()I
    .registers 5

    iget-wide v0, p0, Landroid/filterfw/core/NativeBuffer;->mDataPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->getElementSize()I

    move-result v1

    div-int/2addr v0, v1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getElementSize()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->isReadOnly()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public mutableCopy()Landroid/filterfw/core/NativeBuffer;
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/NativeBuffer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_20

    iget v3, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    if-lez v3, :cond_4d

    invoke-direct {p0, v2}, Landroid/filterfw/core/NativeBuffer;->nativeCopyTo(Landroid/filterfw/core/NativeBuffer;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4d

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to copy NativeBuffer to mutable instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_20
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to allocate a copy of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/filterfw/core/NativeBuffer;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "! Make "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "sure the class has a default constructor!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4d
    return-object v2
.end method

.method public release()Landroid/filterfw/core/NativeBuffer;
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    move-result-object v1

    if-nez v1, :cond_17

    const/4 v0, 0x1

    :cond_f
    :goto_f
    if-eqz v0, :cond_2b

    iget-boolean v1, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    invoke-direct {p0, v1}, Landroid/filterfw/core/NativeBuffer;->deallocate(Z)Z

    return-object v2

    :cond_17
    const/4 v0, 0x0

    goto :goto_f

    :cond_19
    iget-boolean v1, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    if-eqz v1, :cond_f

    iget v1, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    iget v1, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    if-nez v1, :cond_29

    const/4 v0, 0x1

    goto :goto_f

    :cond_29
    const/4 v0, 0x0

    goto :goto_f

    :cond_2b
    return-object p0
.end method

.method public retain()Landroid/filterfw/core/NativeBuffer;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/filterfw/core/NativeBuffer;->mAttachedFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    :cond_9
    :goto_9
    return-object p0

    :cond_a
    iget-boolean v0, p0, Landroid/filterfw/core/NativeBuffer;->mOwnsData:Z

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/filterfw/core/NativeBuffer;->mRefCount:I

    goto :goto_9
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/filterfw/core/NativeBuffer;->mSize:I

    return v0
.end method
