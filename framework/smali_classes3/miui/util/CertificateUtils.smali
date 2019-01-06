.class public Lmiui/util/CertificateUtils;
.super Ljava/lang/Object;
.source "CertificateUtils.java"


# static fields
.field private static final DEBUG_JAR:Z

.field private static final TAG:Ljava/lang/String;

.field private static sReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/util/CertificateUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectCertificates(Ljava/io/File;Ljava/util/Set;)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/Signature;",
            ">;)Z"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->clear()V

    const/16 v19, 0x0

    const-class v22, Lmiui/util/CertificateUtils;

    monitor-enter v22

    :try_start_8
    sget-object v20, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;

    if-eqz v20, :cond_1a

    const/16 v21, 0x0

    sput-object v21, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object/from16 v19, v0

    :cond_1a
    if-nez v19, :cond_2d

    const/16 v21, 0x2000

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_c5

    :cond_2d
    monitor-exit v22

    :try_start_2e
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x15

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_c8

    const-class v21, Ljava/util/jar/JarFile;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    invoke-static/range {v21 .. v22}, Lmiui/util/ReflectionUtils;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/jar/JarFile;

    :goto_5a
    const/4 v3, 0x0

    invoke-virtual {v15}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v11

    :cond_5f
    :goto_5f
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v21

    if-eqz v21, :cond_16d

    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/jar/JarEntry;

    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_5f

    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v21, "META-INF/"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_5f

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Lmiui/util/CertificateUtils;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v17

    if-nez v17, :cond_f6

    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "JarFile "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " has no certificates at entry "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "; ignoring!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/util/jar/JarFile;->close()V
    :try_end_c2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2e .. :try_end_c2} :catch_199
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_c2} :catch_29e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_c2} :catch_279
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_c2} :catch_254
    .catch Ljava/lang/InstantiationException; {:try_start_2e .. :try_end_c2} :catch_22f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_c2} :catch_20a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_c2} :catch_1e5

    const/16 v21, 0x0

    return v21

    :catchall_c5
    move-exception v21

    monitor-exit v22

    throw v21

    :cond_c8
    :try_start_c8
    const-class v21, Ljava/util/jar/JarFile;

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v22, v24

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v24, 0x1

    aput-object v23, v22, v24

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v24, 0x2

    aput-object v23, v22, v24

    invoke-static/range {v21 .. v22}, Lmiui/util/ReflectionUtils;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/jar/JarFile;

    goto/16 :goto_5a

    :cond_f6
    if-nez v3, :cond_fc

    move-object/from16 v3, v17

    goto/16 :goto_5f

    :cond_fc
    const/4 v13, 0x0

    :goto_fd
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_5f

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_106
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_11e

    aget-object v21, v3, v13

    if-eqz v21, :cond_167

    aget-object v21, v3, v13

    aget-object v22, v17, v14

    invoke-virtual/range {v21 .. v22}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_167

    const/4 v12, 0x1

    :cond_11e
    if-eqz v12, :cond_12e

    array-length v0, v3

    move/from16 v21, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_16a

    :cond_12e
    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "JarFile "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " has mismatched certificates at entry "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "; ignoring!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/util/jar/JarFile;->close()V

    const/16 v21, 0x0

    return v21

    :cond_167
    add-int/lit8 v14, v14, 0x1

    goto :goto_106

    :cond_16a
    add-int/lit8 v13, v13, 0x1

    goto :goto_fd

    :cond_16d
    invoke-virtual {v15}, Ljava/util/jar/JarFile;->close()V

    const-class v21, Lmiui/util/CertificateUtils;

    monitor-enter v21
    :try_end_173
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c8 .. :try_end_173} :catch_199
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_173} :catch_29e
    .catch Ljava/lang/RuntimeException; {:try_start_c8 .. :try_end_173} :catch_279
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c8 .. :try_end_173} :catch_254
    .catch Ljava/lang/InstantiationException; {:try_start_c8 .. :try_end_173} :catch_22f
    .catch Ljava/lang/IllegalAccessException; {:try_start_c8 .. :try_end_173} :catch_20a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c8 .. :try_end_173} :catch_1e5

    :try_start_173
    sput-object v20, Lmiui/util/CertificateUtils;->sReadBuffer:Ljava/lang/ref/WeakReference;
    :try_end_175
    .catchall {:try_start_173 .. :try_end_175} :catchall_196

    :try_start_175
    monitor-exit v21

    if-eqz v3, :cond_1be

    array-length v0, v3

    move/from16 v21, v0

    if-lez v21, :cond_1be

    array-length v2, v3

    const/4 v13, 0x0

    :goto_17f
    if-ge v13, v2, :cond_2c3

    new-instance v21, Landroid/content/pm/Signature;

    aget-object v22, v3, v13

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/content/pm/Signature;-><init>([B)V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_17f

    :catchall_196
    move-exception v22

    monitor-exit v21

    throw v22
    :try_end_199
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_175 .. :try_end_199} :catch_199
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_199} :catch_29e
    .catch Ljava/lang/RuntimeException; {:try_start_175 .. :try_end_199} :catch_279
    .catch Ljava/lang/NoSuchMethodException; {:try_start_175 .. :try_end_199} :catch_254
    .catch Ljava/lang/InstantiationException; {:try_start_175 .. :try_end_199} :catch_22f
    .catch Ljava/lang/IllegalAccessException; {:try_start_175 .. :try_end_199} :catch_20a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_175 .. :try_end_199} :catch_1e5

    :catch_199
    move-exception v10

    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v21, 0x0

    return v21

    :cond_1be
    :try_start_1be
    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "JarFile "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " has no certificates; ignoring!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1be .. :try_end_1e2} :catch_199
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1e2} :catch_29e
    .catch Ljava/lang/RuntimeException; {:try_start_1be .. :try_end_1e2} :catch_279
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1be .. :try_end_1e2} :catch_254
    .catch Ljava/lang/InstantiationException; {:try_start_1be .. :try_end_1e2} :catch_22f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1be .. :try_end_1e2} :catch_20a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1be .. :try_end_1e2} :catch_1e5

    const/16 v21, 0x0

    return v21

    :catch_1e5
    move-exception v9

    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v21, 0x0

    return v21

    :catch_20a
    move-exception v5

    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v21, 0x0

    return v21

    :catch_22f
    move-exception v6

    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v21, 0x0

    return v21

    :catch_254
    move-exception v7

    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v21, 0x0

    return v21

    :catch_279
    move-exception v8

    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v21, 0x0

    return v21

    :catch_29e
    move-exception v4

    sget-object v21, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v21, 0x0

    return v21

    :cond_2c3
    const/16 v21, 0x1

    return v21
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 8

    const/4 v4, 0x0

    if-nez p0, :cond_9

    if-nez p1, :cond_7

    const/4 v3, 0x1

    :goto_6
    return v3

    :cond_7
    const/4 v3, -0x1

    goto :goto_6

    :cond_9
    if-nez p1, :cond_d

    const/4 v3, -0x2

    return v3

    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v5, p0

    move v3, v4

    :goto_14
    if-ge v3, v5, :cond_1e

    aget-object v2, p0, v3

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v5, p1

    move v3, v4

    :goto_25
    if-ge v3, v5, :cond_2f

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_2f
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    return v4

    :cond_36
    const/4 v3, -0x3

    return v3
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 10

    const/4 v3, 0x0

    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_a
    array-length v4, p2

    const/4 v5, 0x0

    invoke-virtual {v2, p2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1b} :catch_1d

    move-result-object v3

    :cond_1c
    return-object v3

    :catch_1d
    move-exception v1

    sget-object v4, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4a
    return-object v3

    :catch_4b
    move-exception v0

    sget-object v4, Lmiui/util/CertificateUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a
.end method
