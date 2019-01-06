.class public Lmiui/os/CustVerifier;
.super Ljava/lang/Object;
.source "CustVerifier.java"


# static fields
.field private static final CUST_PATH:Ljava/lang/String;

.field private static final CUST_SIGNATURE_FILE:Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final INT_SIZE:I = 0x4

.field public static final MODE_DELETE:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field private static final RSANUMBYTES:I = 0x100

.field private static final TAG:Ljava/lang/String; = "CustVerifier"

.field private static final VERIFY_KEY_FILE:Ljava/lang/String; = "/verity_key"

.field private static sInstance:Lmiui/os/CustVerifier;


# instance fields
.field private mPubKey:Ljava/security/PublicKey;

.field private mSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lmiui/os/CustVerifier;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/cust/cust/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sign_customized_applist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/CustVerifier;->CUST_SIGNATURE_FILE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a2b(B)B
    .registers 3

    const/16 v0, 0x30

    if-lt p1, v0, :cond_c

    const/16 v0, 0x39

    if-gt p1, v0, :cond_c

    add-int/lit8 v0, p1, -0x30

    int-to-byte v0, v0

    return v0

    :cond_c
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1a

    const/16 v0, 0x66

    if-gt p1, v0, :cond_1a

    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    return v0

    :cond_1a
    const/16 v0, 0x41

    if-lt p1, v0, :cond_28

    const/16 v0, 0x46

    if-gt p1, v0, :cond_28

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private b2a(I)B
    .registers 3

    const/16 v0, 0xa

    if-ge p1, v0, :cond_8

    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    return v0

    :cond_8
    add-int/lit8 v0, p1, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-byte v0, v0

    return v0
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .registers 7

    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_7
    array-length v4, p1

    if-ge v0, v4, :cond_27

    add-int/lit8 v2, v1, 0x1

    aget-byte v4, p1, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-direct {p0, v4}, Lmiui/os/CustVerifier;->b2a(I)B

    move-result v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v4, p1, v0

    and-int/lit8 v4, v4, 0xf

    invoke-direct {p0, v4}, Lmiui/os/CustVerifier;->b2a(I)B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_27
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method private checkCustSignature()V
    .registers 14

    const-string/jumbo v8, "/verity_key"

    invoke-direct {p0, v8}, Lmiui/os/CustVerifier;->loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    new-instance v7, Ljava/io/File;

    sget-object v8, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_13
    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9a

    invoke-virtual {v6}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    sget-boolean v8, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v8, :cond_34

    const-string/jumbo v8, "CustVerifier"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    const/4 v8, 0x0

    array-length v9, v3

    :goto_36
    if-ge v8, v9, :cond_16

    aget-object v4, v3, v8

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-boolean v10, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v10, :cond_61

    const-string/jumbo v10, "CustVerifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\t"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6d

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6a
    :goto_6a
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    :cond_6d
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_6a

    const-string/jumbo v10, ".apk"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_79} :catch_7b

    move-result v10

    goto :goto_6a

    :catch_7b
    move-exception v1

    const-string/jumbo v8, "CustVerifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkCustSignature occurs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    return-void
.end method

.method private getCustApkSignatures(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    :try_start_6
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/util/Scanner;

    invoke-direct {v12, v14}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_12} :catch_49
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_12b
    .catchall {:try_start_6 .. :try_end_12} :catchall_17a

    :goto_12
    :try_start_12
    invoke-virtual {v12}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v19

    if-eqz v19, :cond_91

    invoke-virtual {v12}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_67

    const/16 v19, 0x0

    aget-object v19, v17, v19

    const/16 v20, 0x1

    aget-object v20, v17, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_12 .. :try_end_43} :catchall_44

    goto :goto_12

    :catchall_44
    move-exception v19

    :try_start_45
    invoke-virtual {v12}, Ljava/util/Scanner;->close()V

    throw v19
    :try_end_49
    .catch Ljava/lang/NullPointerException; {:try_start_45 .. :try_end_49} :catch_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_49} :catch_12b
    .catchall {:try_start_45 .. :try_end_49} :catchall_17a

    :catch_49
    move-exception v11

    :try_start_4a
    const-string/jumbo v19, "CustVerifier"

    invoke-virtual {v11}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "cust signature file not found"
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_17a

    if-nez v7, :cond_5c

    const-string/jumbo v7, "Cust signature read finish."

    :cond_5c
    const-string/jumbo v19, "CustVerifier"

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    const/16 v19, 0x0

    return-object v19

    :cond_67
    const/16 v19, 0x0

    :try_start_69
    aget-object v19, v17, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v8, v0

    const/16 v19, 0x0

    aget-object v19, v17, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v13

    sub-int v19, v8, v15

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1, v13}, Lmiui/os/CustVerifier;->verifyFileBlockSignature(Ljava/io/File;I[B)Z

    move-result v18

    if-nez v18, :cond_a7

    const-string/jumbo v7, "cust signature file is cracked"
    :try_end_91
    .catchall {:try_start_69 .. :try_end_91} :catchall_44

    :cond_91
    :try_start_91
    invoke-virtual {v12}, Ljava/util/Scanner;->close()V

    if-nez v7, :cond_99

    const-string/jumbo v7, "cust signature file is not signed"
    :try_end_99
    .catch Ljava/lang/NullPointerException; {:try_start_91 .. :try_end_99} :catch_49
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_99} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_99} :catch_12b
    .catchall {:try_start_91 .. :try_end_99} :catchall_17a

    :cond_99
    if-nez v7, :cond_9e

    const-string/jumbo v7, "Cust signature read finish."

    :cond_9e
    const-string/jumbo v19, "CustVerifier"

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :cond_a7
    :try_start_a7
    sget-boolean v19, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v19, :cond_11c

    const-string/jumbo v19, "CustVerifier"

    const-string/jumbo v20, "cust apk and signatures:"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_bc
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_11c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const-string/jumbo v20, "CustVerifier"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "\t"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v21, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x14

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11b
    .catchall {:try_start_a7 .. :try_end_11b} :catchall_44

    goto :goto_bc

    :cond_11c
    :try_start_11c
    invoke-virtual {v12}, Ljava/util/Scanner;->close()V
    :try_end_11f
    .catch Ljava/lang/NullPointerException; {:try_start_11c .. :try_end_11f} :catch_49
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11f} :catch_12b
    .catchall {:try_start_11c .. :try_end_11f} :catchall_17a

    const-string/jumbo v7, "Cust signature read finish."

    const-string/jumbo v19, "CustVerifier"

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :catch_12b
    move-exception v4

    :try_start_12c
    const-string/jumbo v19, "CustVerifier"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "failed to read cust signature file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_14d
    .catchall {:try_start_12c .. :try_end_14d} :catchall_17a

    move-result-object v7

    if-nez v7, :cond_153

    const-string/jumbo v7, "Cust signature read finish."

    :cond_153
    const-string/jumbo v19, "CustVerifier"

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    :catch_15d
    move-exception v9

    :try_start_15e
    const-string/jumbo v19, "CustVerifier"

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "failed to read cust signature file: IOException"
    :try_end_16b
    .catchall {:try_start_15e .. :try_end_16b} :catchall_17a

    if-nez v7, :cond_170

    const-string/jumbo v7, "Cust signature read finish."

    :cond_170
    const-string/jumbo v19, "CustVerifier"

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    :catchall_17a
    move-exception v19

    if-nez v7, :cond_180

    const-string/jumbo v7, "Cust signature read finish."

    :cond_180
    const-string/jumbo v20, "CustVerifier"

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v19
.end method

.method public static declared-synchronized getInstance()Lmiui/os/CustVerifier;
    .registers 3

    const-class v2, Lmiui/os/CustVerifier;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;

    if-nez v1, :cond_14

    new-instance v0, Lmiui/os/CustVerifier;

    invoke-direct {v0}, Lmiui/os/CustVerifier;-><init>()V

    invoke-direct {v0}, Lmiui/os/CustVerifier;->init()Z

    move-result v1

    if-eqz v1, :cond_14

    sput-object v0, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;

    :cond_14
    sget-object v1, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v2

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getSignPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string/jumbo v2, "\\/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v2, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".apk"

    const-string/jumbo v4, ".sig"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private hexStringToBytes(Ljava/lang/String;)[B
    .registers 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    const/4 v8, 0x0

    return-object v8

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    new-array v1, v8, [B

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_19
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_38

    aget-byte v2, v7, v3

    add-int/lit8 v8, v3, 0x1

    aget-byte v6, v7, v8

    invoke-direct {p0, v2}, Lmiui/os/CustVerifier;->a2b(B)B

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    invoke-direct {p0, v6}, Lmiui/os/CustVerifier;->a2b(B)B

    move-result v9

    or-int/2addr v8, v9

    int-to-byte v0, v8

    add-int/lit8 v5, v4, 0x1

    aput-byte v0, v1, v4

    add-int/lit8 v3, v3, 0x2

    move v4, v5

    goto :goto_19

    :cond_38
    return-object v1
.end method

.method private init()Z
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "/verity_key"

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    iget-object v1, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    if-nez v1, :cond_18

    const-string/jumbo v1, "CustVerifier"

    const-string/jumbo v2, "failed to load verify key"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_18
    sget-object v1, Lmiui/os/CustVerifier;->CUST_SIGNATURE_FILE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->getCustApkSignatures(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lmiui/os/CustVerifier;->mSignatures:Ljava/util/HashMap;

    iget-object v1, p0, Lmiui/os/CustVerifier;->mSignatures:Ljava/util/HashMap;

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method private loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;
    .registers 9

    const/16 v5, 0x200

    :try_start_2
    new-array v0, v5, [B

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_26

    const/4 v4, 0x0

    const/4 v1, 0x0

    :cond_b
    :try_start_b
    array-length v5, v0

    sub-int/2addr v5, v4

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_18

    add-int/2addr v4, v1

    array-length v5, v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_21

    if-lt v4, v5, :cond_b

    :cond_18
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    return-object v5

    :catchall_21
    move-exception v5

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v5
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_26} :catch_26

    :catch_26
    move-exception v2

    const-string/jumbo v5, "CustVerifier"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5
.end method

.method private loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 22

    :try_start_0
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string/jumbo v17, "r"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v9, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_186

    const/16 v17, 0x4

    :try_start_e
    move/from16 v0, v17

    new-array v3, v0, [B

    invoke-virtual {v9, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v17

    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2e

    const-string/jumbo v17, "CustVerifier"

    const-string/jumbo v18, "EOF when read len bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_181

    const/16 v17, 0x0

    :try_start_2a
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_186

    return-object v17

    :cond_2e
    const/16 v17, 0x0

    :try_start_30
    aget-byte v17, v3, v17

    const/16 v18, 0x1

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    const/16 v18, 0x2

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    const/16 v18, 0x3

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x18

    or-int v11, v17, v18

    mul-int/lit8 v11, v11, 0x4

    if-lez v11, :cond_54

    const/16 v17, 0x100

    move/from16 v0, v17

    if-le v11, v0, :cond_63

    :cond_54
    const-string/jumbo v17, "CustVerifier"

    const-string/jumbo v18, "invalid len bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_30 .. :try_end_5d} :catchall_181

    const/16 v17, 0x0

    :try_start_5f
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_186

    return-object v17

    :cond_63
    const/16 v17, 0x4

    :try_start_65
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_82

    const-string/jumbo v17, "CustVerifier"

    const-string/jumbo v18, "can\'t skip n0inv bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_65 .. :try_end_7c} :catchall_181

    const/16 v17, 0x0

    :try_start_7e
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_186

    return-object v17

    :cond_82
    :try_start_82
    new-array v13, v11, [B

    invoke-virtual {v9, v13}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v17

    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a0

    const-string/jumbo v17, "CustVerifier"

    const-string/jumbo v18, "EOF when read mod bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_82 .. :try_end_9a} :catchall_181

    const/16 v17, 0x0

    :try_start_9c
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_186

    return-object v17

    :cond_a0
    const/4 v7, 0x0

    add-int/lit8 v8, v11, -0x1

    :goto_a3
    if-ge v7, v8, :cond_b2

    :try_start_a5
    aget-byte v2, v13, v7

    aget-byte v17, v13, v8

    aput-byte v17, v13, v7

    aput-byte v2, v13, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_a3

    :cond_b2
    new-instance v12, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v12, v0, v13}, Ljava/math/BigInteger;-><init>(I[B)V

    rsub-int v0, v11, 0x100

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_e0

    const-string/jumbo v17, "CustVerifier"

    const-string/jumbo v18, "can\'t skip rr bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_a5 .. :try_end_da} :catchall_181

    const/16 v17, 0x0

    :try_start_dc
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_df} :catch_186

    return-object v17

    :cond_e0
    :try_start_e0
    invoke-virtual {v9, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v17

    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_fc

    const-string/jumbo v17, "CustVerifier"

    const-string/jumbo v18, "EOF when read exp bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catchall {:try_start_e0 .. :try_end_f6} :catchall_181

    const/16 v17, 0x0

    :try_start_f8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fb} :catch_186

    return-object v17

    :cond_fc
    const/16 v17, 0x0

    :try_start_fe
    aget-byte v17, v3, v17

    const/16 v18, 0x1

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    const/16 v18, 0x2

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    const/16 v18, 0x3

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x18

    or-int v6, v17, v18

    int-to-long v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    new-instance v15, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v15, v12, v5}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string/jumbo v17, "RSA"

    invoke-static/range {v17 .. v17}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v14

    sget-boolean v17, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v17, :cond_17d

    const-string/jumbo v17, "CustVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "loadVerifyKey: \n\tlen: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\tmodulus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\tpublic exponent: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17d
    .catchall {:try_start_fe .. :try_end_17d} :catchall_181

    :cond_17d
    :try_start_17d
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    return-object v14

    :catchall_181
    move-exception v17

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    throw v17
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_186} :catch_186

    :catch_186
    move-exception v4

    const-string/jumbo v17, "CustVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception occur when load verify key: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    return-object v17
.end method

.method private verifyFileBlockSignature(Ljava/io/File;I[B)Z
    .registers 15

    const/4 v10, 0x0

    if-nez p2, :cond_d

    const-string/jumbo v7, "CustVerifier"

    const-string/jumbo v8, "verifyFileBlockSignature get 0-sized block"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_d
    :try_start_d
    const-string/jumbo v7, "SHA256withRSA"

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    iget-object v7, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    invoke-virtual {v5, v7}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const/16 v7, 0x1000

    new-array v0, v7, [B

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_22} :catch_96

    const/4 v6, 0x0

    :cond_23
    :try_start_23
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_51

    add-int v7, v1, v6

    if-le v7, p2, :cond_30

    sub-int v1, p2, v6

    :cond_30
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/security/Signature;->update([BII)V

    add-int/2addr v6, v1

    if-ne v6, p2, :cond_23

    const-string/jumbo v7, "CustVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "total: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    invoke-virtual {v5, p3}, Ljava/security/Signature;->verify([B)Z

    move-result v4

    sget-boolean v7, Lmiui/os/CustVerifier;->DEBUG:Z

    if-eqz v7, :cond_8d

    const-string/jumbo v7, "CustVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "verify "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_23 .. :try_end_8d} :catchall_91

    :cond_8d
    :try_start_8d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    return v4

    :catchall_91
    move-exception v7

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v7
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_96} :catch_96

    :catch_96
    move-exception v2

    const-string/jumbo v7, "CustVerifier"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception occurs when verify file block: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private verifyFileSignature(Ljava/lang/String;[B)Z
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string/jumbo v2, "CustVerifier"

    const-string/jumbo v3, "verifyFileSignature get null file"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_11
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {p0, v0, v1, p2}, Lmiui/os/CustVerifier;->verifyFileBlockSignature(Ljava/io/File;I[B)Z

    move-result v2

    return v2
.end method

.method private verifyPathSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    :try_start_0
    const-string/jumbo v2, "SHA256withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    iget-object v2, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    invoke-direct {p0, p2}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result v2

    return v2

    :catch_1c
    move-exception v0

    const-string/jumbo v2, "CustVerifier"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public verifyApkSignatue(Ljava/lang/String;I)Z
    .registers 11

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lmiui/os/CustVerifier;->getSignPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "CustVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " Sig path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez p2, :cond_94

    const/4 v3, 0x0

    if-eqz v0, :cond_68

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CustVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "has sig File1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    if-nez v3, :cond_8b

    const-string/jumbo v4, "CustVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no signature found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_68
    iget-object v4, p0, Lmiui/os/CustVerifier;->mSignatures:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "CustVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "has sig File2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_8b
    invoke-direct {p0, v3}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lmiui/os/CustVerifier;->verifyFileSignature(Ljava/lang/String;[B)Z

    move-result v4

    return v4

    :cond_94
    const/4 v4, 0x1

    if-ne p2, v4, :cond_a3

    if-eqz v0, :cond_a2

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lmiui/os/CustVerifier;->verifyPathSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4

    :cond_a2
    return v7

    :cond_a3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "not supported mode"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
