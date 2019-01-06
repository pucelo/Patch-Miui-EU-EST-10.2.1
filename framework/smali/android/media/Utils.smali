.class Landroid/media/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alignRange(Landroid/util/Range;I)Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public static binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([",
            "Landroid/util/Range",
            "<TT;>;TT;)I"
        }
    .end annotation

    invoke-static {p1, p1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    new-instance v1, Landroid/media/Utils$2;

    invoke-direct {v1}, Landroid/media/Utils$2;-><init>()V

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method static divUp(II)I
    .registers 3

    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method static divUp(JJ)J
    .registers 8

    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method static factorRange(Landroid/util/Range;I)Landroid/util/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static factorRange(Landroid/util/Range;J)Landroid/util/Range;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static gcd(II)I
    .registers 4

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 v1, 0x1

    return v1

    :cond_6
    if-gez p1, :cond_9

    neg-int p1, p1

    :cond_9
    if-gez p0, :cond_c

    neg-int p0, p0

    :cond_c
    :goto_c
    if-eqz p0, :cond_13

    rem-int v0, p1, p0

    move p1, p0

    move p0, v0

    goto :goto_c

    :cond_13
    return p1
.end method

.method static getFileDisplayNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 12

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "file"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    const-string/jumbo v0, "content"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_display_name"

    aput-object v0, v2, v1

    const/4 v6, 0x0

    :try_start_26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_53

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_47} :catch_5d
    .catchall {:try_start_26 .. :try_end_47} :catchall_7c

    move-result-object v0

    if-eqz v6, :cond_4d

    :try_start_4a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_50

    :cond_4d
    :goto_4d
    if-eqz v8, :cond_52

    throw v8

    :catch_50
    move-exception v8

    goto :goto_4d

    :cond_52
    return-object v0

    :cond_53
    if-eqz v6, :cond_58

    :try_start_55
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_5b

    :cond_58
    :goto_58
    if-eqz v8, :cond_77

    throw v8

    :catch_5b
    move-exception v8

    goto :goto_58

    :catch_5d
    move-exception v0

    :try_start_5e
    throw v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_63
    if-eqz v6, :cond_68

    :try_start_65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_6b

    :cond_68
    :goto_68
    if-eqz v1, :cond_76

    throw v1

    :catch_6b
    move-exception v3

    if-nez v1, :cond_70

    move-object v1, v3

    goto :goto_68

    :cond_70
    if-eq v1, v3, :cond_68

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_68

    :cond_76
    throw v0

    :cond_77
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_7c
    move-exception v0

    move-object v1, v8

    goto :goto_63
.end method

.method public static getUniqueExternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 10

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    const/4 v2, 0x0

    :try_start_8
    invoke-static {v1, p3, p2}, Landroid/os/FileUtils;->buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v2

    return-object v2

    :catch_d
    move-exception v0

    const-string/jumbo v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get a unique file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method static intRangeFor(D)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    double-to-int v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public static intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([",
            "Landroid/util/Range",
            "<TT;>;[",
            "Landroid/util/Range",
            "<TT;>;)[",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    array-length v4, p1

    :goto_8
    if-ge v3, v4, :cond_44

    aget-object v1, p1, v3

    :goto_c
    array-length v5, p0

    if-ge v0, v5, :cond_22

    aget-object v5, p0, v0

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_22

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_22
    :goto_22
    array-length v5, p0

    if-ge v0, v5, :cond_41

    aget-object v5, p0, v0

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_41

    aget-object v5, p0, v0

    invoke-virtual {v1, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_41
    array-length v5, p0

    if-ne v0, v5, :cond_51

    :cond_44
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Landroid/util/Range;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Range;

    return-object v3

    :cond_51
    aget-object v5, p0, v0

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_6a

    aget-object v5, p0, v0

    invoke-virtual {v1, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method private static lcm(II)J
    .registers 6

    if-eqz p0, :cond_4

    if-nez p1, :cond_d

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lce is not defined for zero arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-static {p0, p1}, Landroid/media/Utils;->gcd(II)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method static longRangeFor(D)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    double-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    const/16 v8, 0x2d

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_30

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v8

    return-object v8

    :cond_30
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_3f
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3f} :catch_43
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3f} :catch_66
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3f} :catch_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3f} :catch_68

    move-result-object v8

    return-object v8

    :catch_41
    move-exception v3

    return-object p1

    :catch_43
    move-exception v1

    :goto_44
    const-string/jumbo v8, "Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "could not parse integer range \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catch_66
    move-exception v4

    goto :goto_44

    :catch_68
    move-exception v2

    goto :goto_44
.end method

.method static parseIntSafely(Ljava/lang/Object;I)I
    .registers 10

    if-nez p0, :cond_3

    return p1

    :cond_3
    :try_start_3
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_a} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_a} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_a} :catch_c

    move-result v5

    return v5

    :catch_c
    move-exception v2

    return p1

    :catch_e
    move-exception v1

    :goto_f
    const-string/jumbo v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "could not parse integer \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :catch_31
    move-exception v3

    goto :goto_f
.end method

.method static parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    const/16 v10, 0x2d

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_30

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xa

    invoke-static {v10, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v10

    return-object v10

    :cond_30
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_3f
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3f} :catch_43
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3f} :catch_66
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3f} :catch_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3f} :catch_68

    move-result-object v10

    return-object v10

    :catch_41
    move-exception v4

    return-object p1

    :catch_43
    move-exception v2

    :goto_44
    const-string/jumbo v10, "Utils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "could not parse long range \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catch_66
    move-exception v5

    goto :goto_44

    :catch_68
    move-exception v3

    goto :goto_44
.end method

.method static parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    const/16 v8, 0x2d

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_24

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v8

    return-object v8

    :cond_24
    invoke-static {v6}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v7

    invoke-static {v7, v7}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_2b} :catch_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_2b} :catch_52
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_2b} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_2b} :catch_54

    move-result-object v8

    return-object v8

    :catch_2d
    move-exception v3

    return-object p1

    :catch_2f
    move-exception v1

    :goto_30
    const-string/jumbo v8, "Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "could not parse rational range \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catch_52
    move-exception v4

    goto :goto_30

    :catch_54
    move-exception v2

    goto :goto_30
.end method

.method static parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;
    .registers 9

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_2e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v4

    return-object v4

    :catch_9
    move-exception v2

    return-object p1

    :catch_b
    move-exception v1

    :goto_c
    const-string/jumbo v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "could not parse size \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catch_2e
    move-exception v3

    goto :goto_c
.end method

.method static parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    :try_start_1
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    const/16 v8, 0x2d

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_25

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    return-object v8

    :cond_25
    invoke-static {v6}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v7

    invoke-static {v7, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_2c
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_2c} :catch_30
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_2c} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2c} :catch_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_2c} :catch_55

    move-result-object v8

    return-object v8

    :catch_2e
    move-exception v3

    return-object v11

    :catch_30
    move-exception v1

    :goto_31
    const-string/jumbo v8, "Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "could not parse size range \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :catch_53
    move-exception v4

    goto :goto_31

    :catch_55
    move-exception v2

    goto :goto_31
.end method

.method static scaleRange(Landroid/util/Range;II)Landroid/util/Range;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;II)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    if-ne p1, p2, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    invoke-static {v0, p1, p2}, Landroid/media/Utils;->scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    invoke-static {v0, p1, p2}, Landroid/media/Utils;->scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method private static scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;
    .registers 11

    invoke-static {p1, p2}, Landroid/media/Utils;->gcd(II)I

    move-result v0

    div-int/2addr p1, v0

    div-int/2addr p2, v0

    new-instance v1, Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    int-to-double v4, v3

    int-to-double v6, p2

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    return-object v1
.end method

.method public static sortDistinctRanges([Landroid/util/Range;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([",
            "Landroid/util/Range",
            "<TT;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/media/Utils$1;

    invoke-direct {v0}, Landroid/media/Utils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method
