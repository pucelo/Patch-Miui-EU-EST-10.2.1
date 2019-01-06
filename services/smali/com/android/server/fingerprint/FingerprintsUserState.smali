.class Lcom/android/server/fingerprint/FingerprintsUserState;
.super Ljava/lang/Object;
.source "FingerprintsUserState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintsUserState$1;
    }
.end annotation


# static fields
.field private static final ATTR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final ATTR_FINGER_ID:Ljava/lang/String; = "fingerId"

.field private static final ATTR_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final FINGERPRINT_FILE:Ljava/lang/String; = "settings_fingerprint.xml"

.field private static final TAG:Ljava/lang/String; = "FingerprintState"

.field private static final TAG_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final TAG_FINGERPRINTS:Ljava/lang/String; = "fingerprints"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private final mFingerprints:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteStateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/fingerprint/FingerprintsUserState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->doWriteState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintsUserState$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintsUserState$1;-><init>(Lcom/android/server/fingerprint/FingerprintsUserState;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/android/server/fingerprint/FingerprintsUserState;->getFileForUser(I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;

    monitor-enter p0

    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->readStateSyncLocked()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private doWriteState()V
    .registers 13

    new-instance v1, Landroid/util/AtomicFile;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    invoke-direct {v1, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    monitor-enter p0

    :try_start_8
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/android/server/fingerprint/FingerprintsUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_8f

    move-result-object v2

    monitor-exit p0

    const/4 v5, 0x0

    :try_start_10
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    const-string/jumbo v8, "utf-8"

    invoke-interface {v6, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string/jumbo v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v8, "fingerprints"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v0, :cond_92

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v8, "fingerprint"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "fingerId"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "groupId"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "deviceId"

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "fingerprint"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_8c} :catch_a3
    .catchall {:try_start_10 .. :try_end_8c} :catchall_b9

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :catchall_8f
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_92
    :try_start_92
    const-string/jumbo v8, "fingerprints"

    const/4 v9, 0x0

    invoke-interface {v6, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_9f} :catch_a3
    .catchall {:try_start_92 .. :try_end_9f} :catchall_b9

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catch_a3
    move-exception v7

    :try_start_a4
    const-string/jumbo v8, "FingerprintState"

    const-string/jumbo v9, "Failed to write settings, restoring backup"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Failed to write fingerprints"

    invoke-direct {v8, v9, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_b9
    .catchall {:try_start_a4 .. :try_end_b9} :catchall_b9

    :catchall_b9
    move-exception v8

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8
.end method

.method private getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_31

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_31
    return-object v8
.end method

.method private static getFileForUser(I)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "settings_fingerprint.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUniqueName()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mCtx:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x104022d

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintsUserState;->isUnique(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-object v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isUnique(Ljava/lang/String;)Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    return v2

    :cond_1e
    const/4 v2, 0x1

    return v2
.end method

.method private parseFingerprintsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v0, 0x1

    if-eq v11, v0, :cond_5f

    const/4 v0, 0x3

    if-ne v11, v0, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v9, :cond_5f

    :cond_14
    const/4 v0, 0x3

    if-eq v11, v0, :cond_4

    const/4 v0, 0x4

    if-eq v11, v0, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "fingerprint"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "groupId"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "fingerId"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "deviceId"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v12, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5f
    return-void
.end method

.method private parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v4, 0x3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2a

    if-ne v2, v4, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2a

    :cond_14
    if-eq v2, v4, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "fingerprints"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintsUserState;->parseFingerprintsLocked(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    :cond_2a
    return-void
.end method

.method private readStateSyncLocked()V
    .registers 8

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    return-void

    :cond_9
    :try_start_9
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_10} :catch_1f

    :try_start_10
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/FingerprintsUserState;->parseStateLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_1b} :catch_2a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1b} :catch_2a
    .catchall {:try_start_10 .. :try_end_1b} :catchall_47

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catch_1f
    move-exception v1

    const-string/jumbo v4, "FingerprintState"

    const-string/jumbo v5, "No fingerprint state"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2a
    move-exception v0

    :try_start_2b
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed parsing settings file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v4

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
.end method

.method private scheduleWriteStateLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mWriteStateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addFingerprint(II)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getUniqueName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->scheduleWriteStateLocked()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFingerprints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintsUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeFingerprint(I)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    if-ne v1, p1, :cond_22

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->scheduleWriteStateLocked()V
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_25

    :cond_20
    monitor-exit p0

    return-void

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public renameFingerprint(ILjava/lang/CharSequence;)V
    .registers 12

    monitor-enter p0

    const/4 v6, 0x0

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    if-ne v0, p1, :cond_3c

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintsUserState;->mFingerprints:Ljava/util/ArrayList;

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v4

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v8, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintsUserState;->scheduleWriteStateLocked()V
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_3f

    :cond_3a
    monitor-exit p0

    return-void

    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
