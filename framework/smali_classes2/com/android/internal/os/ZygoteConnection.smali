.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteConnection$Arguments;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final intArray2d:[[I


# instance fields
.field private final abiList:Ljava/lang/String;

.field private isEof:Z

.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final mSocketReader:Ljava/io/BufferedReader;

.field private final peer:Landroid/net/Credentials;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    return-void
.end method

.method constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    :try_start_2b
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_33} :catch_37

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    return-void

    :catch_37
    move-exception v0

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public static applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .registers 2

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->DEBUGGABLE:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    :cond_a
    return-void
.end method

.method private static applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    iget v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_19

    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string/jumbo v2, "Peer is permitted to specify anexplicit invoke-with wrapper command only for debuggableapplications."

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    return-void
.end method

.method public static applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_33

    iput-object v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    :cond_33
    return-void
.end method

.method private static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    const/16 v3, 0x3e8

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    if-ne v1, v3, :cond_25

    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v1

    if-nez v1, :cond_23

    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_25

    iget-boolean v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v1, :cond_25

    iget v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-ge v1, v3, :cond_25

    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string/jumbo v2, "System UID may not launch process with UID < 1000"

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    const/4 v0, 0x0

    goto :goto_10

    :cond_25
    iget-boolean v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v1, :cond_31

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    :cond_31
    iget-boolean v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v1, :cond_3d

    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    :cond_3d
    return-void
.end method

.method private handleAbiListQuery()V
    .registers 5

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Error writing to command socket"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;
    .registers 12

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    if-eqz p2, :cond_34

    const/4 v1, 0x0

    :try_start_8
    aget-object v1, p2, v1

    sget v2, Landroid/system/OsConstants;->STDIN_FILENO:I

    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    sget v2, Landroid/system/OsConstants;->STDOUT_FILENO:I

    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    sget v2, Landroid/system/OsConstants;->STDERR_FILENO:I

    invoke-static {v1, v2}, Landroid/system/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    array-length v1, p2

    :goto_20
    if-ge v0, v1, :cond_34

    aget-object v7, p2, v0

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_27
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_27} :catch_2a

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :catch_2a
    move-exception v6

    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Error reopening stdio"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_3d

    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    :cond_3d
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_5f

    iget-object v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "WrapperInit.execApplication unexpectedly returned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    iget v0, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .registers 30

    if-lez p1, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    :cond_5
    if-eqz p2, :cond_1c

    const/16 v21, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    :goto_e
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1c

    aget-object v10, p2, v21

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    :cond_1c
    const/16 v20, 0x0

    if-eqz p3, :cond_132

    if-lez p1, :cond_132

    const/4 v12, -0x1

    const/4 v2, 0x4

    const/16 v21, 0x1

    :try_start_26
    move/from16 v0, v21

    new-array v11, v0, [Landroid/system/StructPollfd;

    new-instance v21, Landroid/system/StructPollfd;

    invoke-direct/range {v21 .. v21}, Landroid/system/StructPollfd;-><init>()V

    const/16 v22, 0x0

    aput-object v21, v11, v22

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v3, v0, [B

    const/16 v16, 0x7530

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    :cond_40
    :goto_40
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v4, v0, :cond_e7

    if-lez v16, :cond_e7

    const/16 v21, 0x0

    aget-object v21, v11, v21

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    const/16 v21, 0x0

    aget-object v21, v11, v21

    sget v22, Landroid/system/OsConstants;->POLLIN:I

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-short v0, v1, Landroid/system/StructPollfd;->events:S

    const/16 v21, 0x0

    aget-object v21, v11, v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-short v0, v1, Landroid/system/StructPollfd;->revents:S

    const/16 v21, 0x0

    aget-object v21, v11, v21

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    move/from16 v0, v16

    invoke-static {v11, v0}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v17

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v22, v6, v18

    const-wide/32 v24, 0xf4240

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v5, v0

    rsub-int v0, v5, 0x7530

    move/from16 v16, v0

    if-lez v17, :cond_da

    const/16 v21, 0x0

    aget-object v21, v11, v21

    move-object/from16 v0, v21

    iget-short v0, v0, Landroid/system/StructPollfd;->revents:S

    move/from16 v21, v0

    sget v22, Landroid/system/OsConstants;->POLLIN:I

    and-int v21, v21, v22

    if-eqz v21, :cond_e7

    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-static {v0, v3, v4, v1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v15

    if-gez v15, :cond_d7

    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Some error"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_bb} :catch_bb

    :catch_bb
    move-exception v9

    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Error reading pid from wrapped process, child may have died"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c9
    :goto_c9
    if-lez v12, :cond_132

    move v14, v12

    :goto_cc
    if-lez v14, :cond_110

    move/from16 v0, p1

    if-eq v14, v0, :cond_110

    invoke-static {v14}, Landroid/os/Process;->getParentPid(I)I

    move-result v14

    goto :goto_cc

    :cond_d7
    add-int/2addr v4, v15

    goto/16 :goto_40

    :cond_da
    if-nez v17, :cond_40

    :try_start_dc
    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Timed out waiting for child."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    :cond_e7
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v4, v0, :cond_100

    new-instance v13, Ljava/io/DataInputStream;

    new-instance v21, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    :cond_100
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v12, v0, :cond_c9

    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Error reading pid from wrapped process, child may have died"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_10f} :catch_bb

    goto :goto_c9

    :cond_110
    if-lez v14, :cond_14d

    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Wrapped process has pid "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 p1, v12

    const/16 v20, 0x1

    :cond_132
    :goto_132
    :try_start_132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_14c} :catch_179

    return-void

    :cond_14d
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " innerPid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    :catch_179
    move-exception v8

    new-instance v21, Ljava/lang/IllegalStateException;

    const-string/jumbo v22, "Error writing to command socket"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21
.end method

.method private handlePreload()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->isPreloadComplete()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->preload()V

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_c

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readArgumentList()[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    return-object v6

    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_d} :catch_1b

    move-result v0

    const/16 v5, 0x400

    if-le v0, v5, :cond_2e

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "max arg count exceeded"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_1b
    move-exception v1

    const-string/jumbo v5, "Zygote"

    const-string/jumbo v6, "invalid Zygote wire format: non-int at argc"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "invalid wire format"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2e
    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v0, :cond_4b

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    aget-object v5, v3, v2

    if-nez v5, :cond_48

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "truncated request"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_4b
    return-object v3
.end method

.method private setChildPgid(I)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v1}, Landroid/net/Credentials;->getPid()I

    move-result v1

    invoke-static {v1}, Landroid/system/Os;->getpgid(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/system/Os;->setpgid(II)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method


# virtual methods
.method closeSocket()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "Zygote"

    const-string/jumbo v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method getFileDesciptor()Ljava/io/FileDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected getSocketOutputStream()Ljava/io/DataOutputStream;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method protected handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Zyogte does not support package preloading"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isClosedByPeer()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    return v0
.end method

.method protected isPreloadComplete()Z
    .registers 2

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete()Z

    move-result v0

    return v0
.end method

.method protected preload()V
    .registers 1

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->lazyPreload()V

    return-void
.end method

.method processOneCommand(Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .registers 28

    const/16 v22, 0x0

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->readArgumentList()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_17

    move-result-object v18

    if-nez v16, :cond_23

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    const/4 v4, 0x0

    return-object v4

    :catch_17
    move-exception v20

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "IOException on command socket"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_23
    const/16 v23, -0x1

    const/16 v17, 0x0

    const/16 v25, 0x0

    new-instance v22, Lcom/android/internal/os/ZygoteConnection$Arguments;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->abiListQuery:Z

    if-eqz v4, :cond_3d

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handleAbiListQuery()V

    const/4 v4, 0x0

    return-object v4

    :cond_3d
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadDefault:Z

    if-eqz v4, :cond_48

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteConnection;->handlePreload()V

    const/4 v4, 0x0

    return-object v4

    :cond_48
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    if-eqz v4, :cond_61

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackage:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageLibs:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->preloadPackageCacheKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/os/ZygoteConnection;->handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    return-object v4

    :cond_61
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_75

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_aa

    :cond_75
    new-instance v4, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", effective=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_aa
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/os/ZygoteConnection;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    invoke-static/range {v22 .. v22}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    invoke-static/range {v22 .. v22}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    const/4 v8, 0x0

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v4, :cond_d5

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    :cond_d5
    const/4 v13, 0x0

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v4, :cond_101

    :try_start_dc
    sget v4, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v4}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v24

    const/4 v4, 0x1

    aget-object v17, v24, v4

    const/4 v4, 0x0

    aget-object v25, v24, v4

    sget v4, Landroid/system/OsConstants;->F_SETFD:I

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    const/4 v4, 0x2

    new-array v13, v4, [I

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v13, v5

    invoke-virtual/range {v25 .. v25}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v13, v5
    :try_end_101
    .catch Landroid/system/ErrnoException; {:try_start_dc .. :try_end_101} :catch_16f

    :cond_101
    const/4 v4, -0x1

    const/4 v5, -0x1

    filled-new-array {v4, v5}, [I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    if-eqz v21, :cond_118

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v12, v5

    :cond_118
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->getServerSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v21

    if-eqz v21, :cond_125

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v12, v5

    :cond_125
    const/16 v21, 0x0

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    move-object/from16 v0, v22

    iget v9, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->mountExternal:I

    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->seInfo:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->instructionSet:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v15, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->appDataDir:Ljava/lang/String;

    invoke-static/range {v4 .. v15}, Lcom/android/internal/os/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[ILjava/lang/String;Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_17b

    :try_start_151
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)Ljava/lang/Runnable;
    :try_end_167
    .catchall {:try_start_151 .. :try_end_167} :catchall_193

    move-result-object v4

    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-object v4

    :catch_16f
    move-exception v19

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Unable to set up pipe for invoke-with"

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_17b
    :try_start_17b
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v18

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    :try_end_18b
    .catchall {:try_start_17b .. :try_end_18b} :catchall_193

    const/4 v4, 0x0

    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-object v4

    :catchall_193
    move-exception v4

    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    invoke-static/range {v25 .. v25}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v4
.end method
