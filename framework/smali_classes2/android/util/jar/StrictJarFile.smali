.class public final Landroid/util/jar/StrictJarFile;
.super Ljava/lang/Object;
.source "StrictJarFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/jar/StrictJarFile$EntryIterator;,
        Landroid/util/jar/StrictJarFile$FDStream;,
        Landroid/util/jar/StrictJarFile$JarFileInputStream;,
        Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final isSigned:Z

.field private final manifest:Landroid/util/jar/StrictJarManifest;

.field private final nativeHandle:J

.field private final verifier:Landroid/util/jar/StrictJarVerifier;


# direct methods
.method static synthetic -wrap0(J)Ljava/util/zip/ZipEntry;
    .registers 4

    invoke-static {p0, p1}, Landroid/util/jar/StrictJarFile;->nativeNextEntry(J)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(JLjava/lang/String;)J
    .registers 5

    invoke-static {p0, p1, p2}, Landroid/util/jar/StrictJarFile;->nativeStartIteration(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/io/FileDescriptor;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[fd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v5

    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    invoke-static {p1, v5}, Landroid/util/jar/StrictJarFile;->nativeOpenJarFile(Ljava/lang/String;I)J

    move-result-wide v8

    iput-wide v8, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    iput-object p2, p0, Landroid/util/jar/StrictJarFile;->fd:Ljava/io/FileDescriptor;

    if-eqz p3, :cond_9f

    :try_start_19
    invoke-direct {p0}, Landroid/util/jar/StrictJarFile;->getMetaEntries()Ljava/util/HashMap;

    move-result-object v4

    new-instance v7, Landroid/util/jar/StrictJarManifest;

    const-string/jumbo v5, "META-INF/MANIFEST.MF"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const/4 v8, 0x1

    invoke-direct {v7, v5, v8}, Landroid/util/jar/StrictJarManifest;-><init>([BZ)V

    iput-object v7, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    new-instance v5, Landroid/util/jar/StrictJarVerifier;

    iget-object v7, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    invoke-direct {v5, p1, v7, v4, p4}, Landroid/util/jar/StrictJarVerifier;-><init>(Ljava/lang/String;Landroid/util/jar/StrictJarManifest;Ljava/util/HashMap;Z)V

    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    invoke-virtual {v5}, Landroid/util/jar/StrictJarManifest;->getEntries()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-nez v5, :cond_45

    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in manifest does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_78} :catch_78
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_78} :catch_78

    :catch_78
    move-exception v0

    iget-wide v6, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v6, v7}, Landroid/util/jar/StrictJarFile;->nativeClose(J)V

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    iput-boolean v10, p0, Landroid/util/jar/StrictJarFile;->closed:Z

    throw v0

    :cond_84
    :try_start_84
    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {v5}, Landroid/util/jar/StrictJarVerifier;->readCertificates()Z

    move-result v5

    if-eqz v5, :cond_9d

    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {v5}, Landroid/util/jar/StrictJarVerifier;->isSignedJar()Z

    move-result v5

    :goto_92
    iput-boolean v5, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_94} :catch_78
    .catch Ljava/lang/SecurityException; {:try_start_84 .. :try_end_94} :catch_78

    :goto_94
    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v6, "close"

    invoke-virtual {v5, v6}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :cond_9d
    move v5, v6

    goto :goto_92

    :cond_9f
    const/4 v5, 0x0

    :try_start_a0
    iput-boolean v5, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a8} :catch_78
    .catch Ljava/lang/SecurityException; {:try_start_a0 .. :try_end_a8} :catch_78

    goto :goto_94
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {p1, v0}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;ZZ)V

    return-void
.end method

.method private getMetaEntries()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Landroid/util/jar/StrictJarFile$EntryIterator;

    iget-wide v4, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    const-string/jumbo v3, "META-INF/"

    invoke-direct {v1, v4, v5, v3}, Landroid/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_2b
    return-object v2
.end method

.method private getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 12

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-nez v1, :cond_1b

    new-instance v0, Landroid/util/jar/StrictJarFile$FDStream;

    iget-object v1, p0, Landroid/util/jar/StrictJarFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-direct/range {v0 .. v5}, Landroid/util/jar/StrictJarFile$FDStream;-><init>(Ljava/io/FileDescriptor;JJ)V

    return-object v0

    :cond_1b
    new-instance v0, Landroid/util/jar/StrictJarFile$FDStream;

    iget-object v1, p0, Landroid/util/jar/StrictJarFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-direct/range {v0 .. v5}, Landroid/util/jar/StrictJarFile$FDStream;-><init>(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0xffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    const/16 v2, 0x400

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-instance v1, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;

    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v1, v0, v2, v6, p1}, Landroid/util/jar/StrictJarFile$ZipInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V

    return-object v1
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeFindEntry(JLjava/lang/String;)Ljava/util/zip/ZipEntry;
.end method

.method private static native nativeNextEntry(J)Ljava/util/zip/ZipEntry;
.end method

.method private static native nativeOpenJarFile(Ljava/lang/String;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeStartIteration(JLjava/lang/String;)J
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile;->closed:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_d
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v0, v1}, Landroid/util/jar/StrictJarFile;->nativeClose(J)V

    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/jar/StrictJarFile;->closed:Z

    :cond_1a
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 4

    iget-wide v0, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    invoke-static {v0, v1, p1}, Landroid/util/jar/StrictJarFile;->nativeFindEntry(JLjava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .registers 4

    iget-boolean v0, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    iget-boolean v5, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v5, :cond_2e

    iget-object v5, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/jar/StrictJarVerifier;->getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v3, 0x0

    array-length v7, v0

    move v5, v6

    :goto_12
    if-ge v5, v7, :cond_1b

    aget-object v2, v0, v5

    array-length v8, v2

    add-int/2addr v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_1b
    new-array v1, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    array-length v7, v0

    move v5, v6

    :goto_20
    if-ge v5, v7, :cond_2d

    aget-object v2, v0, v5

    array-length v8, v2

    invoke-static {v2, v6, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v2

    add-int/2addr v4, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_2d
    return-object v1

    :cond_2e
    const/4 v5, 0x0

    return-object v5
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 8

    invoke-direct {p0, p1}, Landroid/util/jar/StrictJarFile;->getZipInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    iget-boolean v2, p0, Landroid/util/jar/StrictJarFile;->isSigned:Z

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/util/jar/StrictJarFile;->verifier:Landroid/util/jar/StrictJarVerifier;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/jar/StrictJarVerifier;->initEntry(Ljava/lang/String;)Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    move-result-object v0

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    new-instance v2, Landroid/util/jar/StrictJarFile$JarFileInputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v2, v1, v4, v5, v0}, Landroid/util/jar/StrictJarFile$JarFileInputStream;-><init>(Ljava/io/InputStream;JLandroid/util/jar/StrictJarVerifier$VerifierEntry;)V

    return-object v2

    :cond_1f
    return-object v1
.end method

.method public getManifest()Landroid/util/jar/StrictJarManifest;
    .registers 2

    iget-object v0, p0, Landroid/util/jar/StrictJarFile;->manifest:Landroid/util/jar/StrictJarManifest;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/util/jar/StrictJarFile$EntryIterator;

    iget-wide v2, p0, Landroid/util/jar/StrictJarFile;->nativeHandle:J

    const-string/jumbo v1, ""

    invoke-direct {v0, v2, v3, v1}, Landroid/util/jar/StrictJarFile$EntryIterator;-><init>(JLjava/lang/String;)V

    return-object v0
.end method
