.class final Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"

# interfaces
.implements Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemoryMappedFileDataSource"
.end annotation


# static fields
.field private static final MEMORY_PAGE_SIZE_BYTES:J

.field private static final OS:Llibcore/io/Os;


# instance fields
.field private final mFd:Ljava/io/FileDescriptor;

.field private final mFilePosition:J

.field private final mSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sput-object v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    sget-object v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-interface {v0, v1}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    sput-wide v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    iput-wide p2, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFilePosition:J

    iput-wide p4, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mSize:J

    return-void
.end method


# virtual methods
.method public feedIntoMessageDigests([Ljava/security/MessageDigest;JI)V
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFilePosition:J

    add-long v22, v4, p2

    sget-wide v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    div-long v4, v22, v4

    sget-wide v8, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    mul-long v11, v4, v8

    sub-long v4, v22, v11

    long-to-int v2, v4

    add-int v3, p4, v2

    int-to-long v6, v3

    const-wide/16 v26, 0x0

    :try_start_16
    sget-object v3, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    const-wide/16 v4, 0x0

    sget v8, Landroid/system/OsConstants;->PROT_READ:I

    sget v9, Landroid/system/OsConstants;->MAP_SHARED:I

    sget v10, Landroid/system/OsConstants;->MAP_POPULATE:I

    or-int/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    invoke-interface/range {v3 .. v12}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v26

    new-instance v14, Ljava/nio/DirectByteBuffer;

    int-to-long v4, v2

    add-long v16, v26, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v15, p4

    invoke-direct/range {v14 .. v20}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    :goto_41
    if-ge v3, v4, :cond_51

    aget-object v24, p1, v3

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V
    :try_end_4e
    .catch Landroid/system/ErrnoException; {:try_start_16 .. :try_end_4e} :catch_5f
    .catchall {:try_start_16 .. :try_end_4e} :catchall_81

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_51
    const-wide/16 v4, 0x0

    cmp-long v3, v26, v4

    if-eqz v3, :cond_5e

    :try_start_57
    sget-object v3, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    move-wide/from16 v0, v26

    invoke-interface {v3, v0, v1, v6, v7}, Llibcore/io/Os;->munmap(JJ)V
    :try_end_5e
    .catch Landroid/system/ErrnoException; {:try_start_57 .. :try_end_5e} :catch_92

    :cond_5e
    :goto_5e
    return-void

    :catch_5f
    move-exception v13

    :try_start_60
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to mmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_81
    .catchall {:try_start_60 .. :try_end_81} :catchall_81

    :catchall_81
    move-exception v3

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-eqz v4, :cond_8f

    :try_start_88
    sget-object v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->OS:Llibcore/io/Os;

    move-wide/from16 v0, v26

    invoke-interface {v4, v0, v1, v6, v7}, Llibcore/io/Os;->munmap(JJ)V
    :try_end_8f
    .catch Landroid/system/ErrnoException; {:try_start_88 .. :try_end_8f} :catch_90

    :cond_8f
    :goto_8f
    throw v3

    :catch_90
    move-exception v21

    goto :goto_8f

    :catch_92
    move-exception v21

    goto :goto_5e
.end method

.method public size()J
    .registers 3

    iget-wide v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;->mSize:J

    return-wide v0
.end method
