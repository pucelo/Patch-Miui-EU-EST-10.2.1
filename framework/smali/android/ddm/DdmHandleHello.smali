.class public Landroid/ddm/DdmHandleHello;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleHello.java"


# static fields
.field public static final CHUNK_FEAT:I

.field public static final CHUNK_HELO:I

.field public static final CHUNK_WAIT:I

.field private static final FRAMEWORK_FEATURES:[Ljava/lang/String;

.field private static mInstance:Landroid/ddm/DdmHandleHello;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "HELO"

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    const-string/jumbo v0, "WAIT"

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    const-string/jumbo v0, "FEAT"

    invoke-static {v0}, Landroid/ddm/DdmHandleHello;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    new-instance v0, Landroid/ddm/DdmHandleHello;

    invoke-direct {v0}, Landroid/ddm/DdmHandleHello;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "opengl-tracing"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "view-hierarchy"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 8

    invoke-static {}, Landroid/os/Debug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    sget-object v5, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, v4, 0x4

    array-length v4, v3

    add-int/lit8 v0, v4, -0x1

    :goto_10
    if-ltz v0, :cond_1e

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_1e
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    :goto_23
    if-ltz v0, :cond_33

    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :cond_33
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v4, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v4, v3

    sget-object v5, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v4, v3

    add-int/lit8 v0, v4, -0x1

    :goto_47
    if-ltz v0, :cond_5a

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    aget-object v4, v3, v0

    invoke-static {v1, v4}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_47

    :cond_5a
    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    :goto_5f
    if-ltz v0, :cond_76

    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v4, Landroid/ddm/DdmHandleHello;->FRAMEWORK_FEATURES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v1, v4}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5f

    :cond_76
    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v5, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    invoke-direct {v4, v5, v1}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v4
.end method

.method private handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 17

    invoke-static/range {p1 .. p1}, Landroid/ddm/DdmHandleHello;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    const-string/jumbo v13, "java.vm.name"

    const-string/jumbo v14, "?"

    invoke-static {v13, v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v13, "java.vm.version"

    const-string/jumbo v14, "?"

    invoke-static {v13, v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " v"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/ddm/DdmHandleAppName;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v11

    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v13

    if-eqz v13, :cond_10c

    const-string/jumbo v2, "64-bit"

    :goto_45
    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_70

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_70

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_70
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "CheckJNI="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->isCheckJniEnabled()Z

    move-result v13

    if-eqz v13, :cond_111

    const-string/jumbo v13, "true"

    :goto_85
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->isNativeDebuggable()Z

    move-result v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v13, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->CHUNK_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v4, v8}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-static {v4, v0}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v4, v2}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v4, v7}, Landroid/ddm/DdmHandleHello;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    if-eqz v3, :cond_116

    const/4 v13, 0x1

    :goto_f6
    int-to-byte v13, v13

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    new-instance v5, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v13, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    invoke-direct {v5, v13, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v13

    if-eqz v13, :cond_10b

    const/4 v13, 0x0

    invoke-static {v13}, Landroid/ddm/DdmHandleHello;->sendWAIT(I)V

    :cond_10b
    return-object v5

    :cond_10c
    const-string/jumbo v2, "32-bit"

    goto/16 :goto_45

    :cond_111
    const-string/jumbo v13, "false"

    goto/16 :goto_85

    :cond_116
    const/4 v13, 0x0

    goto :goto_f6
.end method

.method public static register()V
    .registers 2

    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    sget v0, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    sget-object v1, Landroid/ddm/DdmHandleHello;->mInstance:Landroid/ddm/DdmHandleHello;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    return-void
.end method

.method public static sendWAIT(I)V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [B

    int-to-byte v2, p0

    aput-byte v2, v0, v3

    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v2, Landroid/ddm/DdmHandleHello;->CHUNK_WAIT:I

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    invoke-static {v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    return-void
.end method


# virtual methods
.method public connected()V
    .registers 1

    return-void
.end method

.method public disconnected()V
    .registers 1

    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6

    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_HELO:I

    if-ne v0, v1, :cond_b

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleHELO(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    :cond_b
    sget v1, Landroid/ddm/DdmHandleHello;->CHUNK_FEAT:I

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleHello;->handleFEAT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
