.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final mAccessFilename:Z

.field private final mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/app/DownloadManager$CursorTranslator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->-assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    iput-boolean p3, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    return-void
.end method

.method private getErrorCode(I)J
    .registers 4

    const/16 v0, 0x190

    if-gt v0, p1, :cond_a

    const/16 v0, 0x1e8

    if-ge p1, v0, :cond_a

    :cond_8
    int-to-long v0, p1

    return-wide v0

    :cond_a
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_12

    const/16 v0, 0x258

    if-lt p1, v0, :cond_8

    :cond_12
    sparse-switch p1, :sswitch_data_30

    const-wide/16 v0, 0x3e8

    return-wide v0

    :sswitch_18
    const-wide/16 v0, 0x3e9

    return-wide v0

    :sswitch_1b
    const-wide/16 v0, 0x3ea

    return-wide v0

    :sswitch_1e
    const-wide/16 v0, 0x3ec

    return-wide v0

    :sswitch_21
    const-wide/16 v0, 0x3ed

    return-wide v0

    :sswitch_24
    const-wide/16 v0, 0x3ee

    return-wide v0

    :sswitch_27
    const-wide/16 v0, 0x3ef

    return-wide v0

    :sswitch_2a
    const-wide/16 v0, 0x3f0

    return-wide v0

    :sswitch_2d
    const-wide/16 v0, 0x3f1

    return-wide v0

    :sswitch_data_30
    .sparse-switch
        0xc6 -> :sswitch_24
        0xc7 -> :sswitch_27
        0x1e8 -> :sswitch_2d
        0x1e9 -> :sswitch_2a
        0x1ec -> :sswitch_18
        0x1ed -> :sswitch_1b
        0x1ee -> :sswitch_1b
        0x1ef -> :sswitch_1e
        0x1f1 -> :sswitch_21
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .registers 10

    const/4 v8, 0x0

    const-string/jumbo v5, "destination"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    const-wide/16 v6, 0x4

    cmp-long v5, v0, v6

    if-eqz v5, :cond_18

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_26

    :cond_18
    const-string/jumbo v5, "local_filename"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-super {p0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_42

    return-object v8

    :cond_26
    const-wide/16 v6, 0x6

    cmp-long v5, v0, v6

    if-eqz v5, :cond_18

    const-string/jumbo v5, "_id"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v2

    sget-object v5, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_42
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getPausedReason(I)J
    .registers 4

    packed-switch p1, :pswitch_data_16

    :pswitch_3
    const-wide/16 v0, 0x4

    return-wide v0

    :pswitch_6
    const-wide/16 v0, 0x1

    return-wide v0

    :pswitch_9
    const-wide/16 v0, 0x2

    return-wide v0

    :pswitch_c
    const-wide/16 v0, 0x3

    return-wide v0

    :pswitch_f
    const-wide/16 v0, 0x5

    return-wide v0

    :pswitch_12
    const-wide/16 v0, 0x6

    return-wide v0

    nop

    :pswitch_data_16
    .packed-switch 0xc1
        :pswitch_f
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_3
        :pswitch_12
    .end packed-switch
.end method

.method private getReason(I)J
    .registers 4

    invoke-static {p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    const-wide/16 v0, 0x0

    return-wide v0

    :sswitch_a
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    return-wide v0

    :sswitch_f
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    return-wide v0

    :sswitch_data_14
    .sparse-switch
        0x4 -> :sswitch_f
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method static translateStatus(I)I
    .registers 2

    packed-switch p0, :pswitch_data_20

    :pswitch_3
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->-assertionsDisabled:Z

    if-nez v0, :cond_1c

    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_13
    const/4 v0, 0x1

    return v0

    :pswitch_15
    const/4 v0, 0x2

    return v0

    :pswitch_17
    const/4 v0, 0x4

    return v0

    :pswitch_19
    const/16 v0, 0x8

    return v0

    :cond_1c
    const/16 v0, 0x10

    return v0

    nop

    :pswitch_data_20
    .packed-switch 0xbe
        :pswitch_13
        :pswitch_3
        :pswitch_15
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_3
        :pswitch_17
        :pswitch_3
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public getInt(I)I
    .registers 4

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    return-wide v0

    :cond_1d
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_3b
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_12
    const-string/jumbo v1, "local_filename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    if-nez v1, :cond_28

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "COLUMN_LOCAL_FILENAME is deprecated; use ContentResolver.openFileDescriptor() instead"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
