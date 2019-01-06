.class public Lmiui/app/backup/BackupFileResolver;
.super Ljava/lang/Object;
.source "BackupFileResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Backup:BackupFileResolver"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiuiHeader(Ljava/io/File;)Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_1d
    .catchall {:try_start_2 .. :try_end_7} :catchall_38

    :try_start_7
    invoke-static {v4}, Lmiui/app/backup/BackupFileResolver;->readMiuiHeader(Ljava/io/InputStream;)Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_a} :catch_4d
    .catchall {:try_start_7 .. :try_end_a} :catchall_4a

    move-result-object v2

    if-eqz v4, :cond_10

    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_12

    :cond_10
    :goto_10
    move-object v3, v4

    :cond_11
    :goto_11
    return-object v2

    :catch_12
    move-exception v1

    const-string/jumbo v5, "Backup:BackupFileResolver"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :catch_1d
    move-exception v0

    :goto_1e
    :try_start_1e
    const-string/jumbo v5, "Backup:BackupFileResolver"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_38

    if-eqz v3, :cond_11

    :try_start_29
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_11

    :catch_2d
    move-exception v1

    const-string/jumbo v5, "Backup:BackupFileResolver"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    :catchall_38
    move-exception v5

    :goto_39
    if-eqz v3, :cond_3e

    :try_start_3b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    :cond_3e
    :goto_3e
    throw v5

    :catch_3f
    move-exception v1

    const-string/jumbo v6, "Backup:BackupFileResolver"

    const-string/jumbo v7, "IOException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    :catchall_4a
    move-exception v5

    move-object v3, v4

    goto :goto_39

    :catch_4d
    move-exception v0

    move-object v3, v4

    goto :goto_1e
.end method

.method private static readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_f

    const/16 v4, 0xa

    if-ne v1, v4, :cond_2b

    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [B

    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2b
    int-to-byte v4, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_34
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v4
.end method

.method public static readMiuiHeader(Ljava/io/InputStream;)Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    .registers 9

    const/4 v7, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "MIUI BACKUP\n"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    new-instance v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;

    invoke-direct {v4}, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;-><init>()V

    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->version:I

    iget v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->version:I

    packed-switch v5, :pswitch_data_84

    :cond_37
    :goto_37
    return-object v1

    :pswitch_38
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, " "

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v3, v5

    iput-object v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->packageName:Ljava/lang/String;

    array-length v5, v3

    if-le v5, v7, :cond_51

    const/4 v5, 0x1

    aget-object v5, v3, v5

    iput-object v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->apkName:Ljava/lang/String;

    :cond_51
    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->featureId:I

    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->isEncrypted:Z

    iget-boolean v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->isEncrypted:Z

    if-eqz v5, :cond_76

    invoke-static {p0}, Lmiui/app/backup/BackupFileResolver;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->encryptedPwd:Ljava/lang/String;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_76} :catch_78

    :cond_76
    move-object v1, v4

    goto :goto_37

    :catch_78
    move-exception v0

    const-string/jumbo v5, "Backup:BackupFileResolver"

    const-string/jumbo v6, "Exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    nop

    :pswitch_data_84
    .packed-switch 0x2
        :pswitch_38
    .end packed-switch
.end method

.method public static writeMiuiHeader(Ljava/io/OutputStream;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v3, v6, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v6, 0x0

    :try_start_12
    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_27} :catch_82

    move-result-object v0

    :goto_28
    const-string/jumbo v6, "MIUI BACKUP\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4d
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_9d

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    return-void

    :catch_82
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_28

    :cond_87
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    :cond_9d
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_76
.end method
