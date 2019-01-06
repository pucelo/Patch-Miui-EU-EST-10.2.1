.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Parcel$1;,
        Landroid/os/Parcel$ReadWriteHelper;
    }
.end annotation


# static fields
.field private static final DEBUG_ARRAY_MAP:Z = false

.field private static final DEBUG_RECYCLE:Z = false

.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_HAS_REPLY_HEADER:I = -0x80

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_PARCELABLE:I = -0x9

.field private static final EX_SECURITY:I = -0x1

.field private static final EX_SERVICE_SPECIFIC:I = -0x8

.field private static final EX_TRANSACTION_FAILED:I = -0x81

.field private static final EX_UNSUPPORTED_OPERATION:I = -0x7

.field private static final POOL_SIZE:I = 0x6

.field public static final STRING_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Parcel"

.field private static final VAL_BOOLEAN:I = 0x9

.field private static final VAL_BOOLEANARRAY:I = 0x17

.field private static final VAL_BUNDLE:I = 0x3

.field private static final VAL_BYTE:I = 0x14

.field private static final VAL_BYTEARRAY:I = 0xd

.field private static final VAL_CHARSEQUENCE:I = 0xa

.field private static final VAL_CHARSEQUENCEARRAY:I = 0x18

.field private static final VAL_DOUBLE:I = 0x8

.field private static final VAL_DOUBLEARRAY:I = 0x1c

.field private static final VAL_FLOAT:I = 0x7

.field private static final VAL_IBINDER:I = 0xf

.field private static final VAL_INTARRAY:I = 0x12

.field private static final VAL_INTEGER:I = 0x1

.field private static final VAL_LIST:I = 0xb

.field private static final VAL_LONG:I = 0x6

.field private static final VAL_LONGARRAY:I = 0x13

.field private static final VAL_MAP:I = 0x2

.field private static final VAL_NULL:I = -0x1

.field private static final VAL_OBJECTARRAY:I = 0x11

.field private static final VAL_PARCELABLE:I = 0x4

.field private static final VAL_PARCELABLEARRAY:I = 0x10

.field private static final VAL_PERSISTABLEBUNDLE:I = 0x19

.field private static final VAL_SERIALIZABLE:I = 0x15

.field private static final VAL_SHORT:I = 0x5

.field private static final VAL_SIZE:I = 0x1a

.field private static final VAL_SIZEF:I = 0x1b

.field private static final VAL_SPARSEARRAY:I = 0xc

.field private static final VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final VAL_STRING:I = 0x0

.field private static final VAL_STRINGARRAY:I = 0xe

.field private static final mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static final sHolderPool:[Landroid/os/Parcel;

.field private static final sOwnedPool:[Landroid/os/Parcel;


# instance fields
.field private mClassCookies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mNativePtr:J

.field private mNativeSize:J

.field private mOwnsNativeParcelObject:Z

.field private mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

.field private mStack:Ljava/lang/RuntimeException;


# direct methods
.method static synthetic -get0(Landroid/os/Parcel;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x6

    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    new-array v0, v1, [Landroid/os/Parcel;

    sput-object v0, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    new-instance v0, Landroid/os/Parcel$1;

    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    iput-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->init(J)V

    return-void
.end method

.method static native clearFileDescriptor(Ljava/io/FileDescriptor;)V
.end method

.method static native closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private destroy()V
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_14

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDestroy(J)V

    invoke-direct {p0, v2, v3}, Landroid/os/Parcel;->updateNativeSize(J)V

    :cond_14
    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    return-void
.end method

.method static native dupFileDescriptor(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private freeBuffer()V
    .registers 3

    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeFreeBuffer(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    :cond_d
    sget-object v0, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    iput-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    return-void
.end method

.method public static native getGlobalAllocCount()J
.end method

.method public static native getGlobalAllocSize()J
.end method

.method private init(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    iput-wide p1, p0, Landroid/os/Parcel;->mNativePtr:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    :goto_b
    return-void

    :cond_c
    invoke-static {}, Landroid/os/Parcel;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    goto :goto_b
.end method

.method private static native nativeAppendFrom(JJII)J
.end method

.method private static native nativeCompareData(JJ)I
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeCreateByteArray(J)[B
.end method

.method private static native nativeDataAvail(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeDataCapacity(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeDataPosition(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeDataSize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEnforceInterface(JLjava/lang/String;)V
.end method

.method private static native nativeFreeBuffer(J)J
.end method

.method private static native nativeGetBlobAshmemSize(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeHasFileDescriptors(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeMarshall(J)[B
.end method

.method private static native nativePushAllowFds(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeReadBlob(J)[B
.end method

.method private static native nativeReadByteArray(J[BI)Z
.end method

.method private static native nativeReadDouble(J)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;
.end method

.method private static native nativeReadFloat(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeReadInt(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeReadLong(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static native nativeReadString(J)Ljava/lang/String;
.end method

.method private static native nativeReadStrongBinder(J)Landroid/os/IBinder;
.end method

.method private static native nativeRestoreAllowFds(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetDataCapacity(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeSetDataPosition(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetDataSize(JI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeUnmarshall(J[BII)J
.end method

.method private static native nativeWriteBlob(J[BII)V
.end method

.method private static native nativeWriteByteArray(J[BII)V
.end method

.method private static native nativeWriteDouble(JD)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)J
.end method

.method private static native nativeWriteFloat(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeWriteInt(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeWriteInterfaceToken(JLjava/lang/String;)V
.end method

.method private static native nativeWriteLong(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static native nativeWriteString(JLjava/lang/String;)V
.end method

.method private static native nativeWriteStrongBinder(JLandroid/os/IBinder;)V
.end method

.method public static obtain()Landroid/os/Parcel;
    .registers 6

    sget-object v2, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_4
    const/4 v3, 0x6

    if-ge v0, v3, :cond_17

    :try_start_7
    aget-object v1, v2, v0

    if-eqz v1, :cond_14

    const/4 v3, 0x0

    aput-object v3, v2, v0

    sget-object v3, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    iput-object v3, v1, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_20

    monitor-exit v2

    return-object v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_17
    monitor-exit v2

    new-instance v3, Landroid/os/Parcel;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Landroid/os/Parcel;-><init>(J)V

    return-object v3

    :catchall_20
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method protected static final obtain(I)Landroid/os/Parcel;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected static final obtain(J)Landroid/os/Parcel;
    .registers 6

    sget-object v2, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_4
    const/4 v3, 0x6

    if-ge v0, v3, :cond_16

    :try_start_7
    aget-object v1, v2, v0

    if-eqz v1, :cond_13

    const/4 v3, 0x0

    aput-object v3, v2, v0

    invoke-direct {v1, p0, p1}, Landroid/os/Parcel;->init(J)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_1d

    monitor-exit v2

    return-object v1

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    monitor-exit v2

    new-instance v3, Landroid/os/Parcel;

    invoke-direct {v3, p0, p1}, Landroid/os/Parcel;-><init>(J)V

    return-object v3

    :catchall_1d
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method static native openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_c

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method private readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .registers 5

    :goto_0
    if-lez p2, :cond_c

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_c
    return-void
.end method

.method private final readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    return-object v6

    :cond_8
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_11
    new-instance v4, Landroid/os/Parcel$2;

    invoke-direct {v4, p0, v0, p1}, Landroid/os/Parcel$2;-><init>(Landroid/os/Parcel;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_3f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_1c} :catch_1d

    return-object v6

    :catch_1d
    move-exception v1

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Parcelable encountered ClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_3f
    move-exception v2

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Parcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .registers 6

    :goto_0
    if-lez p2, :cond_10

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_10
    return-void
.end method

.method private readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .registers 7

    :goto_0
    if-lez p2, :cond_16

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_14
    const/4 v1, 0x0

    goto :goto_e

    :cond_16
    return-void
.end method

.method private readSparseIntArrayInternal(Landroid/util/SparseIntArray;I)V
    .registers 5

    :goto_0
    if-lez p2, :cond_10

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_10
    return-void
.end method

.method private updateNativeSize(J)V
    .registers 8

    iget-boolean v1, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v1, :cond_24

    const-wide/32 v2, 0x7fffffff

    cmp-long v1, p1, v2

    if-lez v1, :cond_e

    const-wide/32 p1, 0x7fffffff

    :cond_e
    iget-wide v2, p0, Landroid/os/Parcel;->mNativeSize:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_24

    iget-wide v2, p0, Landroid/os/Parcel;->mNativeSize:J

    sub-long v2, p1, v2

    long-to-int v0, v2

    if-lez v0, :cond_25

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    :goto_22
    iput-wide p1, p0, Landroid/os/Parcel;->mNativeSize:J

    :cond_24
    return-void

    :cond_25
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    neg-int v2, v0

    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    goto :goto_22
.end method


# virtual methods
.method public final adoptClassCookies(Landroid/os/Parcel;)V
    .registers 3

    iget-object v0, p1, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    return-void
.end method

.method public final appendFrom(Landroid/os/Parcel;II)V
    .registers 10

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    iget-wide v2, p1, Landroid/os/Parcel;->mNativePtr:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/os/Parcel;->nativeAppendFrom(JJII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    return-void
.end method

.method public final compareData(Landroid/os/Parcel;)I
    .registers 6

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    iget-wide v2, p1, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/os/Parcel;->nativeCompareData(JJ)I

    move-result v0

    return v0
.end method

.method public final createBinderArray()[Landroid/os/IBinder;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_15

    new-array v2, v0, [Landroid/os/IBinder;

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_14

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_14
    return-object v2

    :cond_15
    const/4 v3, 0x0

    return-object v3
.end method

.method public final createBinderArrayList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v2, 0x0

    return-object v2

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_d
    if-lez v0, :cond_19

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_19
    return-object v1
.end method

.method public final createBooleanArray()[Z
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_23

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_23

    new-array v2, v0, [Z

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_22

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    :goto_1b
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_20
    move v3, v4

    goto :goto_1b

    :cond_22
    return-object v2

    :cond_23
    const/4 v3, 0x0

    return-object v3
.end method

.method public final createByteArray()[B
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeCreateByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final createCharArray()[C
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_1e

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1e

    new-array v2, v0, [C

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_1d

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1d
    return-object v2

    :cond_1e
    const/4 v3, 0x0

    return-object v3
.end method

.method public final createDoubleArray()[D
    .registers 7

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_1d

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_1d

    new-array v2, v0, [D

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    return-object v2

    :cond_1d
    const/4 v3, 0x0

    return-object v3
.end method

.method public final createFloatArray()[F
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_1d

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1d

    new-array v2, v0, [F

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    return-object v2

    :cond_1d
    const/4 v3, 0x0

    return-object v3
.end method

.method public final createIntArray()[I
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_1d

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    if-gt v0, v3, :cond_1d

    new-array v2, v0, [I

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    return-object v2

    :cond_1d
    const/4 v3, 0x0

    return-object v3
.end method

.method public final createLongArray()[J
    .registers 7

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_1d

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    if-gt v0, v3, :cond_1d

    new-array v2, v0, [J

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    return-object v2

    :cond_1d
    const/4 v3, 0x0

    return-object v3
.end method

.method public final createRawFileDescriptorArray()[Ljava/io/FileDescriptor;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v3, 0x0

    return-object v3

    :cond_8
    new-array v1, v0, [Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_16

    invoke-virtual {p0}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    return-object v1
.end method

.method public final createStringArray()[Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_15

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_14

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_14
    return-object v2

    :cond_15
    const/4 v3, 0x0

    return-object v3
.end method

.method public final createStringArrayList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v2, 0x0

    return-object v2

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_d
    if-lez v0, :cond_19

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_19
    return-object v1
.end method

.method public final createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v3, 0x0

    return-object v3

    :cond_8
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1e

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1e
    return-object v2
.end method

.method public final createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    return-object v3

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_d
    if-lez v0, :cond_23

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1f
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_23
    return-object v1
.end method

.method public final dataAvail()I
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataAvail(J)I

    move-result v0

    return v0
.end method

.method public final dataCapacity()I
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataCapacity(J)I

    move-result v0

    return v0
.end method

.method public final dataPosition()I
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataPosition(J)I

    move-result v0

    return v0
.end method

.method public final dataSize()I
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataSize(J)I

    move-result v0

    return v0
.end method

.method public final enforceInterface(Ljava/lang/String;)V
    .registers 4

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeEnforceInterface(JLjava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Parcel;->destroy()V

    return-void
.end method

.method public getBlobAshmemSize()J
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeGetBlobAshmemSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getClassCookie(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    if-eqz v1, :cond_b

    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public final hasFileDescriptors()Z
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeHasFileDescriptors(J)Z

    move-result v0

    return v0
.end method

.method public hasReadWriteHelper()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    sget-object v2, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    if-eq v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public final marshall()[B
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeMarshall(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final pushAllowFds(Z)Z
    .registers 4

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativePushAllowFds(JZ)Z

    move-result v0

    return v0
.end method

.method public final readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v2, 0x0

    return-object v2

    :cond_8
    new-array v1, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V

    return-object v1
.end method

.method public final readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v2, 0x0

    return-object v2

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    return-object v1
.end method

.method public readArrayMap(Landroid/util/ArrayMap;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V

    return-void
.end method

.method readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .registers 6

    :goto_0
    if-lez p2, :cond_10

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_10
    invoke-virtual {p1}, Landroid/util/ArrayMap;->validate()V

    return-void
.end method

.method readArrayMapSafelyInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .registers 6

    :goto_0
    if-lez p2, :cond_10

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_10
    return-void
.end method

.method public readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/ArraySet",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_8

    const/4 v4, 0x0

    return-object v4

    :cond_8
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_1a

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1a
    return-object v1
.end method

.method public final readBinderArray([Landroid/os/IBinder;)V
    .registers 6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    return-void
.end method

.method public final readBinderList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_17

    if-ge v2, v1, :cond_17

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    :goto_17
    if-ge v2, v1, :cond_23

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_23
    :goto_23
    if-ge v2, v0, :cond_2b

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_2b
    return-void
.end method

.method public final readBlob()[B
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadBlob(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final readBoolean()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public final readBooleanArray([Z)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    array-length v2, p1

    if-ne v0, v2, :cond_19

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_22

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    :goto_12
    aput-boolean v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    move v2, v3

    goto :goto_12

    :cond_19
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_22
    return-void
.end method

.method public final readBundle()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_8

    return-object v2

    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    if-eqz p1, :cond_12

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_12
    return-object v0
.end method

.method public final readByte()B
    .registers 2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public final readByteArray([B)V
    .registers 6

    iget-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    if-eqz p1, :cond_14

    array-length v1, p1

    :goto_5
    invoke-static {v2, v3, p1, v1}, Landroid/os/Parcel;->nativeReadByteArray(J[BI)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_5

    :cond_16
    return-void
.end method

.method public final readCharArray([C)V
    .registers 6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    array-length v2, p1

    if-ne v0, v2, :cond_14

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1d

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1d
    return-void
.end method

.method public final readCharSequence()Ljava/lang/CharSequence;
    .registers 2

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final readCharSequenceArray()[Ljava/lang/CharSequence;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ltz v2, :cond_15

    new-array v0, v2, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_15

    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    return-object v0
.end method

.method public final readCharSequenceList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ltz v2, :cond_19

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v2, :cond_19

    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    return-object v0
.end method

.method public final readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    instance-of v1, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v1, :cond_e

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, p0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    return-object v1

    :cond_e
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    return-object v1
.end method

.method public final readDouble()D
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readDoubleArray([D)V
    .registers 6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    return-void
.end method

.method public final readException()V
    .registers 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final readException(ILjava/lang/String;)V
    .registers 6

    packed-switch p1, :pswitch_data_8c

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown exception code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_28
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_43

    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-static {v0}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    :pswitch_3d
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " [missing Parcelable]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5d
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_69
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_75
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v0

    :pswitch_7b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_81
    new-instance v0, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    nop

    :pswitch_data_8c
    .packed-switch -0x9
        :pswitch_28
        :pswitch_81
        :pswitch_7b
        :pswitch_75
        :pswitch_6f
        :pswitch_69
        :pswitch_63
        :pswitch_5d
        :pswitch_3d
    .end packed-switch
.end method

.method public final readExceptionCode()I
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/16 v2, -0x80

    if-ne v0, v2, :cond_1d

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_19

    const-string/jumbo v2, "Parcel"

    const-string/jumbo v3, "Unexpected zero-sized Parcel reply header."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    return v4

    :cond_19
    invoke-static {p0}, Landroid/os/StrictMode;->readAndHandleBinderCallViolations(Landroid/os/Parcel;)V

    goto :goto_18

    :cond_1d
    return v0
.end method

.method public final readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 5

    const/4 v1, 0x0

    iget-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    :cond_e
    return-object v1
.end method

.method public final readFloat()F
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFloat(J)F

    move-result v0

    return v0
.end method

.method public final readFloatArray([F)V
    .registers 6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    return-void
.end method

.method public final readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v2, 0x0

    return-object v2

    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    return-object v1
.end method

.method public final readInt()I
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadInt(J)I

    move-result v0

    return v0
.end method

.method public final readIntArray([I)V
    .registers 6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    return-void
.end method

.method public final readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    return-void
.end method

.method public final readLong()J
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final readLongArray([J)V
    .registers 6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    return-void
.end method

.method public final readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    return-void
.end method

.method readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .registers 6

    :goto_0
    if-lez p2, :cond_10

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_10
    return-void
.end method

.method public final readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v2

    :cond_8
    instance-of v2, v1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v2, :cond_16

    move-object v0, v1

    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    return-object v2

    :cond_16
    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    return-object v2
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .registers 6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v3, 0x0

    return-object v3

    :cond_8
    new-array v2, v0, [Landroid/os/Parcelable;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_16

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_16
    return-object v2
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v3, 0x0

    return-object v3

    :cond_8
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1a

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    return-object v2
.end method

.method public final readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator",
            "<*>;"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    return-object v10

    :cond_8
    sget-object v11, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_b
    sget-object v10, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    if-nez v6, :cond_1f

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget-object v10, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v10, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_7c

    if-nez v0, :cond_146

    if-nez p1, :cond_7f

    :try_start_29
    invoke-virtual {p0}, Landroid/os/Parcel;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    :goto_31
    const/4 v10, 0x0

    invoke-static {v7, v10, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    const-class v10, Landroid/os/Parcelable;

    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_81

    new-instance v10, Landroid/os/BadParcelableException;

    const-string/jumbo v12, "Parcelable protocol requires that the class implements Parcelable"

    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_47} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_47} :catch_aa
    .catch Ljava/lang/NoSuchFieldException; {:try_start_29 .. :try_end_47} :catch_105
    .catchall {:try_start_29 .. :try_end_47} :catchall_7c

    :catch_47
    move-exception v3

    :try_start_48
    const-string/jumbo v10, "Parcel"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Illegal access when unmarshalling: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v10, Landroid/os/BadParcelableException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_7c
    .catchall {:try_start_48 .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_7f
    move-object v9, p1

    goto :goto_31

    :cond_81
    :try_start_81
    const-string/jumbo v10, "CREATOR"

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_df

    new-instance v10, Landroid/os/BadParcelableException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Parcelable protocol requires the CREATOR object to be static on class "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_aa
    .catch Ljava/lang/IllegalAccessException; {:try_start_81 .. :try_end_aa} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_81 .. :try_end_aa} :catch_aa
    .catch Ljava/lang/NoSuchFieldException; {:try_start_81 .. :try_end_aa} :catch_105
    .catchall {:try_start_81 .. :try_end_aa} :catchall_7c

    :catch_aa
    move-exception v2

    :try_start_ab
    const-string/jumbo v10, "Parcel"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Class not found when unmarshalling: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v10, Landroid/os/BadParcelableException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_df
    .catchall {:try_start_ab .. :try_end_df} :catchall_7c

    :cond_df
    :try_start_df
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v10, Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_120

    new-instance v10, Landroid/os/BadParcelableException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_105
    .catch Ljava/lang/IllegalAccessException; {:try_start_df .. :try_end_105} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_df .. :try_end_105} :catch_aa
    .catch Ljava/lang/NoSuchFieldException; {:try_start_df .. :try_end_105} :catch_105
    .catchall {:try_start_df .. :try_end_105} :catchall_7c

    :catch_105
    move-exception v4

    :try_start_106
    new-instance v10, Landroid/os/BadParcelableException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_120
    .catchall {:try_start_106 .. :try_end_120} :catchall_7c

    :cond_120
    const/4 v10, 0x0

    :try_start_121
    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;
    :try_end_127
    .catch Ljava/lang/IllegalAccessException; {:try_start_121 .. :try_end_127} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_121 .. :try_end_127} :catch_aa
    .catch Ljava/lang/NoSuchFieldException; {:try_start_121 .. :try_end_127} :catch_105
    .catchall {:try_start_121 .. :try_end_127} :catchall_7c

    if-nez v0, :cond_143

    :try_start_129
    new-instance v10, Landroid/os/BadParcelableException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Parcelable protocol requires a non-null Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_143
    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_146
    .catchall {:try_start_129 .. :try_end_146} :catchall_7c

    :cond_146
    monitor-exit v11

    return-object v0
.end method

.method public final readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_b

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_1e

    if-ge v2, v1, :cond_1e

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    :goto_1e
    if-ge v2, v1, :cond_2a

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2a
    :goto_2a
    if-ge v2, v0, :cond_32

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_32
    return-object p1
.end method

.method public final readPersistableBundle()Landroid/os/PersistableBundle;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public final readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_8

    return-object v2

    :cond_8
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Parcel;I)V

    if-eqz p1, :cond_12

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_12
    return-object v0
.end method

.method public final readRawFileDescriptor()Ljava/io/FileDescriptor;
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final readRawFileDescriptorArray([Ljava/io/FileDescriptor;)V
    .registers 6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    return-void
.end method

.method public final readSerializable()Ljava/io/Serializable;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public final readSize()Landroid/util/Size;
    .registers 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public final readSizeF()Landroid/util/SizeF;
    .registers 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    new-instance v2, Landroid/util/SizeF;

    invoke-direct {v2, v1, v0}, Landroid/util/SizeF;-><init>(FF)V

    return-object v2
.end method

.method public final readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .registers 5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v2, 0x0

    return-object v2

    :cond_8
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V

    return-object v1
.end method

.method public final readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .registers 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v2, 0x0

    return-object v2

    :cond_8
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    return-object v1
.end method

.method public final readSparseIntArray()Landroid/util/SparseIntArray;
    .registers 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v2, 0x0

    return-object v2

    :cond_8
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseIntArrayInternal(Landroid/util/SparseIntArray;I)V

    return-object v1
.end method

.method public final readString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0}, Landroid/os/Parcel$ReadWriteHelper;->readString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringArray([Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    array-length v2, p1

    if-ne v0, v2, :cond_13

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    return-void
.end method

.method public final readStringArray()[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ltz v2, :cond_15

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_15

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_17

    if-ge v2, v1, :cond_17

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    :goto_17
    if-ge v2, v1, :cond_23

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_23
    :goto_23
    if-ge v2, v0, :cond_2b

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_2b
    return-void
.end method

.method public readStringNoHelper()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStrongBinder()Landroid/os/IBinder;
    .registers 3

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadStrongBinder(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    array-length v2, p1

    if-ne v0, v2, :cond_1d

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_26

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    const/4 v2, 0x0

    aput-object v2, p1, v1

    goto :goto_16

    :cond_1d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "bad array lengths"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_26
    return-void
.end method

.method public final readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final readTypedArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gtz v0, :cond_8

    return-object v7

    :cond_8
    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_3a

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    if-nez v2, :cond_20

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v2

    if-nez v2, :cond_20

    return-object v7

    :cond_20
    instance-of v6, v2, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v6, :cond_31

    move-object v1, v2

    check-cast v1, Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v1, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    :goto_2b
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_31
    invoke-interface {v2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2b

    :cond_36
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_3a
    return-object v5
.end method

.method public final readTypedArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gtz v0, :cond_8

    return-object v7

    :cond_8
    const/4 v2, 0x0

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_37

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    if-nez v2, :cond_21

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v2

    if-nez v2, :cond_21

    return-object v7

    :cond_21
    instance-of v6, v2, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v6, :cond_32

    move-object v1, v2

    check-cast v1, Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v1, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    :cond_2c
    :goto_2c
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_32
    invoke-interface {v2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2c

    :cond_37
    return-object v5
.end method

.method public final readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_22

    if-ge v2, v1, :cond_22

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_22
    :goto_22
    if-ge v2, v1, :cond_38

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_34
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_38
    :goto_38
    if-ge v2, v0, :cond_40

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_40
    return-void
.end method

.method public final readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 7

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    packed-switch v1, :pswitch_data_f2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    add-int/lit8 v0, v2, -0x4

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parcel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Unmarshalling unknown type code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_3e
    const/4 v2, 0x0

    return-object v2

    :pswitch_40
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_45
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    :pswitch_4e
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    return-object v2

    :pswitch_53
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    return-object v2

    :pswitch_58
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    return-object v2

    :pswitch_62
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    :pswitch_6b
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    :pswitch_74
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    :pswitch_7d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_88

    :goto_83
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_88
    const/4 v2, 0x0

    goto :goto_83

    :pswitch_8a
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    :pswitch_8f
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    :pswitch_94
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    return-object v2

    :pswitch_99
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    return-object v2

    :pswitch_9e
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_a3
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    :pswitch_a8
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    return-object v2

    :pswitch_ad
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :pswitch_b2
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    return-object v2

    :pswitch_b7
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    return-object v2

    :pswitch_bc
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    return-object v2

    :pswitch_c5
    invoke-direct {p0, p1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;

    move-result-object v2

    return-object v2

    :pswitch_ca
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    return-object v2

    :pswitch_cf
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v2

    return-object v2

    :pswitch_d4
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v2

    return-object v2

    :pswitch_d9
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    :pswitch_de
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v2

    return-object v2

    :pswitch_e3
    invoke-virtual {p0}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v2

    return-object v2

    :pswitch_e8
    invoke-virtual {p0}, Landroid/os/Parcel;->readSizeF()Landroid/util/SizeF;

    move-result-object v2

    return-object v2

    :pswitch_ed
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v2

    return-object v2

    :pswitch_data_f2
    .packed-switch -0x1
        :pswitch_3e
        :pswitch_40
        :pswitch_45
        :pswitch_4e
        :pswitch_d9
        :pswitch_53
        :pswitch_58
        :pswitch_62
        :pswitch_6b
        :pswitch_74
        :pswitch_7d
        :pswitch_8a
        :pswitch_8f
        :pswitch_cf
        :pswitch_99
        :pswitch_9e
        :pswitch_a8
        :pswitch_ca
        :pswitch_ad
        :pswitch_b2
        :pswitch_b7
        :pswitch_bc
        :pswitch_c5
        :pswitch_d4
        :pswitch_94
        :pswitch_a3
        :pswitch_de
        :pswitch_e3
        :pswitch_e8
        :pswitch_ed
    .end packed-switch
.end method

.method public final recycle()V
    .registers 5

    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    iget-boolean v2, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v2, :cond_16

    sget-object v1, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    :goto_9
    monitor-enter v1

    const/4 v0, 0x0

    :goto_b
    const/4 v2, 0x6

    if-ge v0, v2, :cond_20

    :try_start_e
    aget-object v2, v1, v0

    if-nez v2, :cond_1d

    aput-object p0, v1, v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_22

    monitor-exit v1

    return-void

    :cond_16
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    sget-object v1, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    goto :goto_9

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_20
    monitor-exit v1

    return-void

    :catchall_22
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public final restoreAllowFds(Z)V
    .registers 4

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeRestoreAllowFds(JZ)V

    return-void
.end method

.method public final setClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    :cond_b
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setDataCapacity(I)V
    .registers 4

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataCapacity(JI)V

    return-void
.end method

.method public final setDataPosition(I)V
    .registers 4

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataPosition(JI)V

    return-void
.end method

.method public final setDataSize(I)V
    .registers 4

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataSize(JI)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    return-void
.end method

.method public setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V
    .registers 2

    if-eqz p1, :cond_5

    :goto_2
    iput-object p1, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    return-void

    :cond_5
    sget-object p1, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    goto :goto_2
.end method

.method public final unmarshall([BII)V
    .registers 6

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeUnmarshall(J[BII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    return-void
.end method

.method public final writeArray([Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_7

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method

.method public writeArrayMap(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    return-void
.end method

.method writeArrayMapInternal(Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_24

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_24
    return-void
.end method

.method public writeArraySet(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_6
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_18

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_16
    const/4 v1, -0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method public final writeBinderArray([Landroid/os/IBinder;)V
    .registers 5

    if-eqz p1, :cond_11

    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public final writeBinderList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    if-ge v1, v0, :cond_1d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return-void
.end method

.method public final writeBlob([B)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    array-length v0, p1

    :goto_4
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeBlob([BII)V

    return-void

    :cond_8
    move v0, v1

    goto :goto_4
.end method

.method public final writeBlob([BII)V
    .registers 6

    if-nez p1, :cond_7

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteBlob(J[BII)V

    return-void
.end method

.method public final writeBoolean(Z)V
    .registers 3

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final writeBooleanArray([Z)V
    .registers 5

    if-eqz p1, :cond_16

    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1a

    aget-boolean v2, p1, v1

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    const/4 v2, 0x0

    goto :goto_e

    :cond_16
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1a
    return-void
.end method

.method public final writeBundle(Landroid/os/Bundle;)V
    .registers 3

    if-nez p1, :cond_7

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final writeByte(B)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final writeByteArray([B)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    array-length v0, p1

    :goto_4
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeByteArray([BII)V

    return-void

    :cond_8
    move v0, v1

    goto :goto_4
.end method

.method public final writeByteArray([BII)V
    .registers 6

    if-nez p1, :cond_7

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteByteArray(J[BII)V

    return-void
.end method

.method public final writeCharArray([C)V
    .registers 5

    if-eqz p1, :cond_11

    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public final writeCharSequence(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method

.method public final writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .registers 5

    if-eqz p1, :cond_11

    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public final writeCharSequenceList(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1c

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1c
    return-void
.end method

.method public final writeDouble(D)V
    .registers 6

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteDouble(JD)V

    return-void
.end method

.method public final writeDoubleArray([D)V
    .registers 6

    if-eqz p1, :cond_11

    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public final writeException(Ljava/lang/Exception;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v0, 0x0

    instance-of v3, p1, Landroid/os/Parcelable;

    if-eqz v3, :cond_27

    invoke-virtual {p1}, Ljava/lang/Exception;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/os/Parcelable;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-ne v3, v4, :cond_27

    const/16 v0, -0x9

    :cond_18
    :goto_18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    if-nez v0, :cond_5d

    instance-of v3, p1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_57

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_27
    instance-of v3, p1, Ljava/lang/SecurityException;

    if-eqz v3, :cond_2d

    const/4 v0, -0x1

    goto :goto_18

    :cond_2d
    instance-of v3, p1, Landroid/os/BadParcelableException;

    if-eqz v3, :cond_33

    const/4 v0, -0x2

    goto :goto_18

    :cond_33
    instance-of v3, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_39

    const/4 v0, -0x3

    goto :goto_18

    :cond_39
    instance-of v3, p1, Ljava/lang/NullPointerException;

    if-eqz v3, :cond_3f

    const/4 v0, -0x4

    goto :goto_18

    :cond_3f
    instance-of v3, p1, Ljava/lang/IllegalStateException;

    if-eqz v3, :cond_45

    const/4 v0, -0x5

    goto :goto_18

    :cond_45
    instance-of v3, p1, Landroid/os/NetworkOnMainThreadException;

    if-eqz v3, :cond_4b

    const/4 v0, -0x6

    goto :goto_18

    :cond_4b
    instance-of v3, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v3, :cond_51

    const/4 v0, -0x7

    goto :goto_18

    :cond_51
    instance-of v3, p1, Landroid/os/ServiceSpecificException;

    if-eqz v3, :cond_18

    const/4 v0, -0x8

    goto :goto_18

    :cond_57
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_5d
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_8e

    :goto_67
    return-void

    :pswitch_68
    check-cast p1, Landroid/os/ServiceSpecificException;

    iget v3, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_67

    :pswitch_70
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Landroid/os/Parcelable;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v3, v1, v2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_67

    nop

    :pswitch_data_8e
    .packed-switch -0x9
        :pswitch_70
        :pswitch_68
    .end packed-switch
.end method

.method public final writeFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 4

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    return-void
.end method

.method public final writeFloat(F)V
    .registers 4

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFloat(JF)V

    return-void
.end method

.method public final writeFloatArray([F)V
    .registers 5

    if-eqz p1, :cond_11

    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public final writeInt(I)V
    .registers 4

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInt(JI)V

    return-void
.end method

.method public final writeIntArray([I)V
    .registers 5

    if-eqz p1, :cond_11

    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public final writeInterfaceToken(Ljava/lang/String;)V
    .registers 4

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInterfaceToken(JLjava/lang/String;)V

    return-void
.end method

.method public final writeList(Ljava/util/List;)V
    .registers 5

    if-nez p1, :cond_7

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    if-ge v1, v0, :cond_1b

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1b
    return-void
.end method

.method public final writeLong(J)V
    .registers 6

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteLong(JJ)V

    return-void
.end method

.method public final writeLongArray([J)V
    .registers 6

    if-eqz p1, :cond_11

    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public final writeMap(Ljava/util/Map;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    return-void
.end method

.method writeMapInternal(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    :cond_33
    if-eqz v3, :cond_3e

    new-instance v4, Landroid/os/BadParcelableException;

    const-string/jumbo v5, "Map size does not match number of entries!"

    invoke-direct {v4, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3e
    return-void
.end method

.method public final writeNoException()V
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/StrictMode;->hasGatheredViolations()Z

    move-result v2

    if-eqz v2, :cond_26

    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p0}, Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_25
    return-void

    :cond_26
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25
.end method

.method public final writeParcelable(Landroid/os/Parcelable;I)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_7

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final writeParcelableArray([Landroid/os/Parcelable;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    if-eqz p1, :cond_11

    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public final writeParcelableCreator(Landroid/os/Parcelable;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final writeParcelableList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    if-ge v1, v0, :cond_1d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return-void
.end method

.method public final writePersistableBundle(Landroid/os/PersistableBundle;)V
    .registers 3

    if-nez p1, :cond_7

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final writeRawFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 4

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)J

    return-void
.end method

.method public final writeRawFileDescriptorArray([Ljava/io/FileDescriptor;)V
    .registers 5

    if-eqz p1, :cond_11

    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public final writeSerializable(Ljava/io/Serializable;)V
    .registers 9

    const/4 v4, 0x0

    if-nez p1, :cond_7

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_17
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Parcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public final writeSize(Landroid/util/Size;)V
    .registers 3

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final writeSizeF(Landroid/util/SizeF;)V
    .registers 3

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public final writeSparseArray(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_22

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_22
    return-void
.end method

.method public final writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .registers 5

    if-nez p1, :cond_7

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_28

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    :goto_1f
    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_26
    const/4 v2, 0x0

    goto :goto_1f

    :cond_28
    return-void
.end method

.method public final writeSparseIntArray(Landroid/util/SparseIntArray;)V
    .registers 5

    if-nez p1, :cond_7

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_22

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_22
    return-void
.end method

.method public final writeString(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0, p1}, Landroid/os/Parcel$ReadWriteHelper;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    return-void
.end method

.method public final writeStringArray([Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_11

    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_15
    return-void
.end method

.method public final writeStringList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    if-ge v1, v0, :cond_1d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return-void
.end method

.method public writeStringNoHelper(Ljava/lang/String;)V
    .registers 4

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteString(JLjava/lang/String;)V

    return-void
.end method

.method public final writeStrongBinder(Landroid/os/IBinder;)V
    .registers 4

    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteStrongBinder(JLandroid/os/IBinder;)V

    return-void
.end method

.method public final writeStrongInterface(Landroid/os/IInterface;)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_7

    :goto_3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void

    :cond_7
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3
.end method

.method public final writeTypedArray([Landroid/os/Parcelable;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    if-eqz p1, :cond_1c

    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    aget-object v2, p1, v1

    if-eqz v2, :cond_17

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    :cond_1c
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_20
    return-void
.end method

.method public final writeTypedArrayList(Ljava/util/ArrayList;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;I)V"
        }
    .end annotation

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_2e

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    if-eqz v2, :cond_25

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-nez v3, :cond_1f

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    const/4 v3, 0x1

    :cond_1f
    invoke-interface {v2, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_25
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    :cond_2a
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2e
    return-void
.end method

.method public final writeTypedArraySet(Landroid/util/ArraySet;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;I)V"
        }
    .end annotation

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_2e

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    if-eqz v2, :cond_25

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-nez v3, :cond_1f

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    const/4 v3, 0x1

    :cond_1f
    invoke-interface {v2, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_25
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    :cond_2a
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2e
    return-void
.end method

.method public final writeTypedList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    return-void
.end method

.method public writeTypedList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    if-ge v1, v0, :cond_1d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return-void
.end method

.method public final writeTypedObject(Landroid/os/Parcelable;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9
.end method

.method public final writeValue(Ljava/lang/Object;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_9

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return-void

    :cond_9
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_16

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :cond_16
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_27

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_27
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_35

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_8

    :cond_35
    instance-of v3, p1, Landroid/os/Bundle;

    if-eqz v3, :cond_43

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_8

    :cond_43
    instance-of v3, p1, Landroid/os/PersistableBundle;

    if-eqz v3, :cond_52

    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    goto :goto_8

    :cond_52
    instance-of v3, p1, Landroid/os/Parcelable;

    if-eqz v3, :cond_60

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_8

    :cond_60
    instance-of v3, p1, Ljava/lang/Short;

    if-eqz v3, :cond_72

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_72
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_84

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_8

    :cond_84
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_97

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_8

    :cond_97
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_ab

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    goto/16 :goto_8

    :cond_ab
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_c3

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c1

    :goto_bc
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :cond_c1
    move v1, v2

    goto :goto_bc

    :cond_c3
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_d3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_d3
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_e3

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_8

    :cond_e3
    instance-of v1, p1, Landroid/util/SparseArray;

    if-eqz v1, :cond_f3

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    goto/16 :goto_8

    :cond_f3
    instance-of v1, p1, [Z

    if-eqz v1, :cond_103

    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_8

    :cond_103
    instance-of v1, p1, [B

    if-eqz v1, :cond_113

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_8

    :cond_113
    instance-of v1, p1, [Ljava/lang/String;

    if-eqz v1, :cond_123

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_123
    instance-of v1, p1, [Ljava/lang/CharSequence;

    if-eqz v1, :cond_133

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_133
    instance-of v1, p1, Landroid/os/IBinder;

    if-eqz v1, :cond_143

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_8

    :cond_143
    instance-of v1, p1, [Landroid/os/Parcelable;

    if-eqz v1, :cond_153

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, [Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_8

    :cond_153
    instance-of v1, p1, [I

    if-eqz v1, :cond_163

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_8

    :cond_163
    instance-of v1, p1, [J

    if-eqz v1, :cond_173

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_8

    :cond_173
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_187

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :cond_187
    instance-of v1, p1, Landroid/util/Size;

    if-eqz v1, :cond_197

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    goto/16 :goto_8

    :cond_197
    instance-of v1, p1, Landroid/util/SizeF;

    if-eqz v1, :cond_1a7

    const/16 v1, 0x1b

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Landroid/util/SizeF;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSizeF(Landroid/util/SizeF;)V

    goto/16 :goto_8

    :cond_1a7
    instance-of v1, p1, [D

    if-eqz v1, :cond_1b7

    const/16 v1, 0x1c

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, [D

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto/16 :goto_8

    :cond_1b7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1d5

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_1d5

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1d5
    instance-of v1, p1, Ljava/io/Serializable;

    if-eqz v1, :cond_1e5

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    check-cast p1, Ljava/io/Serializable;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto/16 :goto_8

    :cond_1e5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parcel: unable to marshal value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
