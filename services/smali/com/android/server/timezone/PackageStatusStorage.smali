.class final Lcom/android/server/timezone/PackageStatusStorage;
.super Ljava/lang/Object;
.source "PackageStatusStorage.java"


# static fields
.field private static final ATTRIBUTE_CHECK_STATUS:Ljava/lang/String; = "checkStatus"

.field private static final ATTRIBUTE_DATA_APP_VERSION:Ljava/lang/String; = "dataAppPackageVersion"

.field private static final ATTRIBUTE_OPTIMISTIC_LOCK_ID:Ljava/lang/String; = "optimisticLockId"

.field private static final ATTRIBUTE_UPDATE_APP_VERSION:Ljava/lang/String; = "updateAppPackageVersion"

.field private static final LOG_TAG:Ljava/lang/String; = "timezone.PackageStatusStorage"

.field private static final TAG_PACKAGE_STATUS:Ljava/lang/String; = "PackageStatus"

.field private static final UNKNOWN_PACKAGE_VERSION:I = -0x1


# instance fields
.field private final mPackageStatusFile:Landroid/util/AtomicFile;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "package-status.xml"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    :cond_21
    return-void

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getCurrentOptimisticLockId()I
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_2
    iget-object v4, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const-string/jumbo v4, "optimisticLockId"

    invoke-static {v3, v4}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_2c
    .catchall {:try_start_2 .. :try_end_12} :catchall_46

    move-result v4

    if-eqz v2, :cond_18

    :try_start_15
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_29
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_1b

    :cond_18
    :goto_18
    if-eqz v5, :cond_2b

    :try_start_1a
    throw v5
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/text/ParseException;

    const-string/jumbo v4, "Unable to read file"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_29
    move-exception v5

    goto :goto_18

    :cond_2b
    return v4

    :catch_2c
    move-exception v4

    :try_start_2d
    throw v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_32
    if-eqz v2, :cond_37

    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_3a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_1b

    :cond_37
    :goto_37
    if-eqz v5, :cond_45

    :try_start_39
    throw v5

    :catch_3a
    move-exception v6

    if-nez v5, :cond_3f

    move-object v5, v6

    goto :goto_37

    :cond_3f
    if-eq v5, v6, :cond_37

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_37

    :cond_45
    throw v4
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_46} :catch_1b

    :catchall_46
    move-exception v4

    goto :goto_32
.end method

.method private static getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_21

    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-interface {p0, v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_50

    :try_start_8
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " missing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v1

    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad integer for attributeName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_50
    :try_start_50
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_57

    return-object v3

    :cond_57
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_5e} :catch_2a

    move-result-object v2

    return-object v2
.end method

.method private getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v4, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const-string/jumbo v7, "checkStatus"

    invoke-static {v5, v7}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_56
    .catchall {:try_start_2 .. :try_end_12} :catchall_70

    move-result-object v0

    if-nez v0, :cond_2f

    if-eqz v4, :cond_1a

    :try_start_17
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1a} :catch_2c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1e

    :cond_1a
    move-object v7, v8

    :goto_1b
    if-eqz v7, :cond_2e

    :try_start_1d
    throw v7
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v2

    new-instance v3, Ljava/text/ParseException;

    const-string/jumbo v7, "Error reading package status"

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v2}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :catch_2c
    move-exception v7

    goto :goto_1b

    :cond_2e
    return-object v8

    :cond_2f
    :try_start_2f
    const-string/jumbo v7, "updateAppPackageVersion"

    invoke-static {v5, v7}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "dataAppPackageVersion"

    invoke-static {v5, v7}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    new-instance v7, Lcom/android/server/timezone/PackageStatus;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    new-instance v10, Lcom/android/server/timezone/PackageVersions;

    invoke-direct {v10, v6, v1}, Lcom/android/server/timezone/PackageVersions;-><init>(II)V

    invoke-direct {v7, v9, v10}, Lcom/android/server/timezone/PackageStatus;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_4b} :catch_56
    .catchall {:try_start_2f .. :try_end_4b} :catchall_70

    if-eqz v4, :cond_50

    :try_start_4d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_50} :catch_53
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_1e

    :cond_50
    :goto_50
    if-eqz v8, :cond_55

    :try_start_52
    throw v8
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_53} :catch_1e

    :catch_53
    move-exception v8

    goto :goto_50

    :cond_55
    return-object v7

    :catch_56
    move-exception v7

    :try_start_57
    throw v7
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_5c
    if-eqz v4, :cond_61

    :try_start_5e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_64
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_1e

    :cond_61
    :goto_61
    if-eqz v8, :cond_6f

    :try_start_63
    throw v8

    :catch_64
    move-exception v9

    if-nez v8, :cond_69

    move-object v8, v9

    goto :goto_61

    :cond_69
    if-eq v8, v9, :cond_61

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_61

    :cond_6f
    throw v7
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_70} :catch_1e

    :catchall_70
    move-exception v7

    goto :goto_5c
.end method

.method private insertInitialPackageStatus()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    return v0
.end method

.method private static parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v9, 0x0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_26

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    const-string/jumbo v6, "PackageStatus"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    return-object v3

    :cond_26
    new-instance v6, Ljava/text/ParseException;

    const-string/jumbo v7, "Unable to find PackageStatus tag"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_30
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_30} :catch_30
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_30} :catch_3a

    :catch_30
    move-exception v1

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Unable to configure parser"

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_3a
    move-exception v0

    new-instance v2, Ljava/text/ParseException;

    const-string/jumbo v6, "Error reading XML"

    invoke-direct {v2, v6, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method private recoverFromBadData(Ljava/lang/Exception;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    iget-object v2, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v2

    return v2

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, p1}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_12

    move v9, v7

    :goto_5
    if-nez p3, :cond_14

    :goto_7
    if-eq v9, v7, :cond_16

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Provide both status and packageVersions, or neither."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_12
    move v9, v8

    goto :goto_5

    :cond_14
    move v7, v8

    goto :goto_7

    :cond_16
    const/4 v2, 0x0

    :try_start_17
    iget-object v7, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v3, 0x0

    const-string/jumbo v7, "PackageStatus"

    invoke-interface {v4, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-nez p1, :cond_7c

    const-string/jumbo v5, ""

    :goto_40
    const-string/jumbo v7, "checkStatus"

    invoke-interface {v4, v3, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "optimisticLockId"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-nez p1, :cond_85

    const/4 v6, -0x1

    :goto_53
    const-string/jumbo v7, "updateAppPackageVersion"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-nez p1, :cond_88

    const/4 v0, -0x1

    :goto_60
    const-string/jumbo v7, "dataAppPackageVersion"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "PackageStatus"

    invoke-interface {v4, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    iget-object v7, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    return-void

    :cond_7c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_40

    :cond_85
    iget v6, p3, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:I

    goto :goto_53

    :cond_88
    iget v0, p3, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:I
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_8a} :catch_8b

    goto :goto_60

    :catch_8b
    move-exception v1

    if-eqz v2, :cond_93

    iget-object v7, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_93
    throw v1
.end method

.method private writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_4} :catch_8

    move-result v0

    if-eq v0, p1, :cond_d

    return v2

    :catch_8
    move-exception v1

    invoke-direct {p0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    return v2

    :cond_d
    invoke-direct {p0, p3, p2, p4}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method deleteFileForTests()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Package status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatus()Lcom/android/server/timezone/PackageStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public forceCheckStateForTests(ILcom/android/server/timezone/PackageVersions;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v1, v2, p2}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_e
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_c} :catch_e
    .catchall {:try_start_1 .. :try_end_c} :catchall_15

    monitor-exit p0

    return-void

    :catch_e
    move-exception v0

    :try_start_f
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method generateCheckToken(Lcom/android/server/timezone/PackageVersions;)Lcom/android/server/timezone/CheckToken;
    .registers 9

    if-nez p1, :cond_b

    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "currentInstalledVersions == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_b
    monitor-enter p0

    :try_start_c
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_f} :catch_30
    .catchall {:try_start_c .. :try_end_f} :catchall_2d

    move-result v3

    :goto_10
    add-int/lit8 v2, v3, 0x1

    const/4 v5, 0x1

    :try_start_13
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v3, v2, v5, p1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v4

    if-nez v4, :cond_3f

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Unable to update status to CHECK_STARTED. synchronization failure?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_26} :catch_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2d

    :catch_26
    move-exception v0

    :try_start_27
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_30
    move-exception v1

    :try_start_31
    const-string/jumbo v5, "timezone.PackageStatusStorage"

    const-string/jumbo v6, "Unable to find optimistic lock ID from package status"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_2d

    move-result v3

    goto :goto_10

    :cond_3f
    :try_start_3f
    new-instance v5, Lcom/android/server/timezone/CheckToken;

    invoke-direct {v5, v2, p1}, Lcom/android/server/timezone/CheckToken;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_44} :catch_26
    .catchall {:try_start_3f .. :try_end_44} :catchall_2d

    monitor-exit p0

    return-object v5
.end method

.method getPackageStatus()Lcom/android/server/timezone/PackageStatus;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_4} :catch_7
    .catchall {:try_start_1 .. :try_end_4} :catchall_24

    move-result-object v2

    monitor-exit p0

    return-object v2

    :catch_7
    move-exception v0

    :try_start_8
    const-string/jumbo v2, "timezone.PackageStatusStorage"

    const-string/jumbo v3, "Package status invalid, resetting and retrying"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_24

    :try_start_14
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_14 .. :try_end_17} :catch_1a
    .catchall {:try_start_14 .. :try_end_17} :catchall_24

    move-result-object v2

    monitor-exit p0

    return-object v2

    :catch_1a
    move-exception v1

    :try_start_1b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Recovery from bad file failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method markChecked(Lcom/android/server/timezone/CheckToken;Z)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    iget v2, p1, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    add-int/lit8 v1, v2, 0x1

    if-eqz p2, :cond_14

    const/4 v3, 0x2

    :goto_8
    :try_start_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-direct {p0, v2, v1, v4, v5}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_16
    .catchall {:try_start_8 .. :try_end_11} :catchall_1d

    move-result v4

    monitor-exit p0

    return v4

    :cond_14
    const/4 v3, 0x3

    goto :goto_8

    :catch_16
    move-exception v0

    :try_start_17
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method resetCheckState()V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_4} :catch_33
    .catchall {:try_start_1 .. :try_end_4} :catchall_30

    move-result v3

    :goto_5
    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_9
    invoke-direct {p0, v3, v2, v4, v5}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v4

    if-nez v4, :cond_42

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetCheckState: Unable to reset package status, newOptimisticLockId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_29} :catch_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_30

    :catch_29
    move-exception v0

    :try_start_2a
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v4

    monitor-exit p0

    throw v4

    :catch_33
    move-exception v1

    :try_start_34
    const-string/jumbo v4, "timezone.PackageStatusStorage"

    const-string/jumbo v5, "resetCheckState: Unable to find optimistic lock ID from package status"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_30

    move-result v3

    goto :goto_5

    :cond_42
    monitor-exit p0

    return-void
.end method
