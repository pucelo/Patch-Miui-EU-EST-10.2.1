.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    array-length v1, p4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string/jumbo v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_2f

    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p4, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_38
    if-ge v2, v1, :cond_47

    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_47
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_b0

    const/4 v1, 0x0

    const-string/jumbo v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    if-eqz v0, :cond_a9

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    :sswitch_30
    const-string/jumbo v0, "storage_id"

    const/4 v1, 0x6

    goto :goto_1f

    :sswitch_35
    const-string/jumbo v0, "format"

    const/4 v1, 0x4

    goto :goto_1f

    :sswitch_3a
    const/4 v1, 0x4

    goto :goto_1f

    :sswitch_3c
    const-string/jumbo v0, "_size"

    const/16 v1, 0x8

    goto :goto_1f

    :sswitch_42
    const-string/jumbo v0, "_data"

    const v1, 0xffff

    goto :goto_1f

    :sswitch_49
    const-string/jumbo v0, "title"

    const v1, 0xffff

    goto :goto_1f

    :sswitch_50
    const-string/jumbo v0, "date_modified"

    const v1, 0xffff

    goto :goto_1f

    :sswitch_57
    const-string/jumbo v0, "date_added"

    const v1, 0xffff

    goto :goto_1f

    :sswitch_5e
    const-string/jumbo v0, "year"

    const v1, 0xffff

    goto :goto_1f

    :sswitch_65
    const-string/jumbo v0, "parent"

    const/4 v1, 0x6

    goto :goto_1f

    :sswitch_6a
    const-string/jumbo v0, "storage_id"

    const/16 v1, 0xa

    goto :goto_1f

    :sswitch_70
    const-string/jumbo v0, "duration"

    const/4 v1, 0x6

    goto :goto_1f

    :sswitch_75
    const-string/jumbo v0, "track"

    const/4 v1, 0x4

    goto :goto_1f

    :sswitch_7a
    const-string/jumbo v0, "_display_name"

    const v1, 0xffff

    goto :goto_1f

    :sswitch_81
    const v1, 0xffff

    goto :goto_1f

    :sswitch_85
    const v1, 0xffff

    goto :goto_1f

    :sswitch_89
    const-string/jumbo v0, "album_artist"

    const v1, 0xffff

    goto :goto_1f

    :sswitch_90
    const v1, 0xffff

    goto :goto_1f

    :sswitch_94
    const-string/jumbo v0, "composer"

    const v1, 0xffff

    goto :goto_1f

    :sswitch_9b
    const-string/jumbo v0, "description"

    const v1, 0xffff

    goto/16 :goto_1f

    :sswitch_a3
    const/4 v1, 0x6

    goto/16 :goto_1f

    :sswitch_a6
    const/4 v1, 0x4

    goto/16 :goto_1f

    :cond_a9
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    :sswitch_data_b0
    .sparse-switch
        0xdc01 -> :sswitch_30
        0xdc02 -> :sswitch_35
        0xdc03 -> :sswitch_3a
        0xdc04 -> :sswitch_3c
        0xdc07 -> :sswitch_42
        0xdc09 -> :sswitch_50
        0xdc0b -> :sswitch_65
        0xdc41 -> :sswitch_6a
        0xdc44 -> :sswitch_49
        0xdc46 -> :sswitch_81
        0xdc48 -> :sswitch_9b
        0xdc4e -> :sswitch_57
        0xdc89 -> :sswitch_70
        0xdc8b -> :sswitch_75
        0xdc8c -> :sswitch_90
        0xdc96 -> :sswitch_94
        0xdc99 -> :sswitch_5e
        0xdc9a -> :sswitch_85
        0xdc9b -> :sswitch_89
        0xdce0 -> :sswitch_7a
        0xde92 -> :sswitch_a6
        0xde93 -> :sswitch_a3
        0xde94 -> :sswitch_a6
        0xde99 -> :sswitch_a3
        0xde9a -> :sswitch_a3
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_b

    add-int/lit8 v2, v1, 0x1

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_17

    add-int/lit16 v0, v2, 0xff

    :cond_17
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v9, 0x0

    const/4 v7, 0x0

    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_45
    .catchall {:try_start_2 .. :try_end_35} :catchall_4c

    move-result-object v0

    if-eqz v7, :cond_3b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3b
    return-object v0

    :cond_3c
    :try_start_3c
    const-string/jumbo v0, ""
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_45
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4c

    if-eqz v7, :cond_44

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_44
    return-object v0

    :catch_45
    move-exception v8

    if-eqz v7, :cond_4b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4b
    return-object v9

    :catchall_4c
    move-exception v0

    if-eqz v7, :cond_52

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_52
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .registers 12

    const/4 v9, 0x0

    const/4 v7, 0x0

    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "name"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_34

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_3d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_4d

    move-result-object v0

    if-eqz v7, :cond_33

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_33
    return-object v0

    :cond_34
    :try_start_34
    const-string/jumbo v0, ""
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_3d
    .catchall {:try_start_34 .. :try_end_37} :catchall_4d

    if-eqz v7, :cond_3c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3c
    return-object v0

    :catch_3d
    move-exception v8

    :try_start_3e
    const-string/jumbo v0, "MtpPropertyGroup"

    const-string/jumbo v2, "queryGenre exception"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_4d

    if-eqz v7, :cond_4c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4c
    return-object v9

    :catchall_4d
    move-exception v0

    if-eqz v7, :cond_53

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_53
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .registers 13

    const/4 v9, 0x0

    const/4 v7, 0x0

    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3d

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_43
    .catchall {:try_start_2 .. :try_end_37} :catchall_4a

    if-eqz v7, :cond_3c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3c
    return-object v0

    :cond_3d
    if-eqz v7, :cond_42

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_42
    :goto_42
    return-object v9

    :catch_43
    move-exception v8

    if-eqz v7, :cond_42

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_42

    :catchall_4a
    move-exception v0

    if-eqz v7, :cond_50

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_50
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v9, 0x0

    const/4 v7, 0x0

    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_38

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_41
    .catchall {:try_start_2 .. :try_end_31} :catchall_48

    move-result-object v0

    if-eqz v7, :cond_37

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_37
    return-object v0

    :cond_38
    :try_start_38
    const-string/jumbo v0, ""
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_41
    .catchall {:try_start_38 .. :try_end_3b} :catchall_48

    if-eqz v7, :cond_40

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_40
    return-object v0

    :catch_41
    move-exception v8

    if-eqz v7, :cond_47

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_47
    return-object v9

    :catchall_48
    move-exception v0

    if-eqz v7, :cond_4e

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4e
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .registers 36

    const/4 v2, 0x1

    move/from16 v0, p3

    if-le v0, v2, :cond_f

    new-instance v2, Landroid/mtp/MtpPropertyList;

    const/4 v3, 0x0

    const v4, 0xa808

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    return-object v2

    :cond_f
    if-nez p2, :cond_5a

    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_43

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_18
    const/16 v20, 0x0

    if-gtz p3, :cond_21

    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_8b

    :cond_21
    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    if-nez v20, :cond_93

    new-instance v2, Landroid/mtp/MtpPropertyList;

    const/4 v3, 0x0

    const/16 v4, 0x2009

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3d} :catch_fd
    .catchall {:try_start_21 .. :try_end_3d} :catchall_11c

    if-eqz v20, :cond_42

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_42
    return-object v2

    :cond_43
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_56

    const-string/jumbo v5, "parent=?"

    goto :goto_18

    :cond_56
    const-string/jumbo v5, "_id=?"

    goto :goto_18

    :cond_5a
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_6d

    const-string/jumbo v5, "format=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    goto :goto_18

    :cond_6d
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_87

    const-string/jumbo v5, "parent=? AND format=?"

    goto :goto_18

    :cond_87
    const-string/jumbo v5, "_id=? AND format=?"

    goto :goto_18

    :cond_8b
    :try_start_8b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_21

    :cond_93
    if-nez v20, :cond_ef

    const/16 v22, 0x1

    :goto_97
    new-instance v8, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    mul-int v2, v2, v22

    const/16 v3, 0x2001

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    const/16 v27, 0x0

    :goto_a7
    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_243

    if-eqz v20, :cond_bc

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 p1, v0

    :cond_bc
    const/16 v29, 0x0

    :goto_be
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v2, v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_23f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget-object v28, v2, v29

    move-object/from16 v0, v28

    iget v10, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v21, v0

    sparse-switch v10, :sswitch_data_24a

    move-object/from16 v0, v28

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const v3, 0xffff

    if-ne v2, v3, :cond_213

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    :goto_ec
    add-int/lit8 v29, v29, 0x1

    goto :goto_be

    :cond_ef
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v22

    goto :goto_97

    :sswitch_f4
    const-wide/16 v12, 0x0

    const/4 v11, 0x4

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_fc
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_fc} :catch_fd
    .catchall {:try_start_8b .. :try_end_fc} :catchall_11c

    goto :goto_ec

    :catch_fd
    move-exception v24

    :try_start_fe
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const/4 v3, 0x0

    const/16 v4, 0x2002

    invoke-direct {v2, v3, v4}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_106
    .catchall {:try_start_fe .. :try_end_106} :catchall_11c

    if-eqz v20, :cond_10b

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_10b
    return-object v2

    :sswitch_10c
    :try_start_10c
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_123

    invoke-static/range {v30 .. v30}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_11b
    .catch Landroid/os/RemoteException; {:try_start_10c .. :try_end_11b} :catch_fd
    .catchall {:try_start_10c .. :try_end_11b} :catchall_11c

    goto :goto_ec

    :catchall_11c
    move-exception v2

    if-eqz v20, :cond_122

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_122
    throw v2

    :cond_123
    const/16 v2, 0x2009

    :try_start_125
    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_ec

    :sswitch_129
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_13a

    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    :cond_13a
    if-nez v26, :cond_14d

    const-string/jumbo v2, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_14d

    invoke-static/range {v26 .. v26}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    :cond_14d
    if-eqz v26, :cond_157

    move/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_ec

    :cond_157
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_ec

    :sswitch_15d
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_ec

    :sswitch_16f
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "0101T000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_ec

    :sswitch_194
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/16 v2, 0x20

    shl-long/2addr v12, v2

    move/from16 v0, p1

    int-to-long v2, v0

    add-long/2addr v12, v2

    const/16 v11, 0xa

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_ec

    :sswitch_1a8
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const/16 v17, 0x4

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_ec

    :sswitch_1bd
    const-string/jumbo v2, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_ec

    :sswitch_1cf
    const-string/jumbo v2, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_ec

    :sswitch_1e1
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_1f0

    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_ec

    :cond_1f0
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_ec

    :sswitch_1f7
    const-wide/16 v18, 0x0

    const/16 v17, 0x6

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_ec

    :sswitch_205
    const-wide/16 v18, 0x0

    const/16 v17, 0x4

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_ec

    :cond_213
    move-object/from16 v0, v28

    iget v2, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    if-nez v2, :cond_22b

    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_ec

    :cond_22b
    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_23d
    .catch Landroid/os/RemoteException; {:try_start_125 .. :try_end_23d} :catch_fd
    .catchall {:try_start_125 .. :try_end_23d} :catchall_11c

    goto/16 :goto_ec

    :cond_23f
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a7

    :cond_243
    if-eqz v20, :cond_248

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_248
    return-object v8

    nop

    :sswitch_data_24a
    .sparse-switch
        0xdc03 -> :sswitch_f4
        0xdc07 -> :sswitch_10c
        0xdc09 -> :sswitch_15d
        0xdc41 -> :sswitch_194
        0xdc44 -> :sswitch_129
        0xdc46 -> :sswitch_1bd
        0xdc4e -> :sswitch_15d
        0xdc8b -> :sswitch_1a8
        0xdc8c -> :sswitch_1e1
        0xdc99 -> :sswitch_16f
        0xdc9a -> :sswitch_1cf
        0xde92 -> :sswitch_205
        0xde93 -> :sswitch_1f7
        0xde94 -> :sswitch_205
        0xde99 -> :sswitch_1f7
        0xde9a -> :sswitch_1f7
    .end sparse-switch
.end method
