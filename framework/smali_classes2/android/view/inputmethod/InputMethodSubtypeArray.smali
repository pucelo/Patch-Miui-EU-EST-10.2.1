.class public Landroid/view/inputmethod/InputMethodSubtypeArray;
.super Ljava/lang/Object;
.source "InputMethodSubtypeArray.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodSubtypeArray"


# instance fields
.field private volatile mCompressedData:[B

.field private final mCount:I

.field private volatile mDecompressedSize:I

.field private volatile mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-lez v0, :cond_20

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    :cond_20
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    if-nez p1, :cond_10

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    return-void

    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v0, v0, [Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    return-void
.end method

.method private static compress([B)[B
    .registers 11

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_40
    .catchall {:try_start_3 .. :try_end_8} :catchall_6c

    :try_start_8
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_78
    .catchall {:try_start_8 .. :try_end_d} :catchall_6f

    :try_start_d
    invoke-virtual {v4, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_7b
    .catchall {:try_start_d .. :try_end_16} :catchall_73

    move-result-object v8

    if-eqz v4, :cond_1c

    :try_start_19
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_33
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_26

    :cond_1c
    move-object v6, v7

    :goto_1d
    if-eqz v2, :cond_22

    :try_start_1f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_35
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_26

    :cond_22
    move-object v5, v6

    :cond_23
    :goto_23
    if-eqz v5, :cond_3f

    :try_start_25
    throw v5
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    move-object v3, v4

    move-object v1, v2

    :goto_29
    const-string/jumbo v5, "InputMethodSubtypeArray"

    const-string/jumbo v6, "Failed to compress the data."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7

    :catch_33
    move-exception v6

    goto :goto_1d

    :catch_35
    move-exception v5

    if-eqz v6, :cond_23

    if-eq v6, v5, :cond_22

    :try_start_3a
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_26

    move-object v5, v6

    goto :goto_23

    :cond_3f
    return-object v8

    :catch_40
    move-exception v5

    :goto_41
    :try_start_41
    throw v5
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_46
    if-eqz v3, :cond_4b

    :try_start_48
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_57
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_55

    :cond_4b
    move-object v8, v6

    :cond_4c
    :goto_4c
    if-eqz v1, :cond_51

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_51} :catch_61
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_55

    :cond_51
    move-object v6, v8

    :cond_52
    :goto_52
    if-eqz v6, :cond_6b

    :try_start_54
    throw v6

    :catch_55
    move-exception v0

    goto :goto_29

    :catch_57
    move-exception v8

    if-eqz v6, :cond_4c

    if-eq v6, v8, :cond_4b

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v6

    goto :goto_4c

    :catch_61
    move-exception v6

    if-eqz v8, :cond_52

    if-eq v8, v6, :cond_51

    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v8

    goto :goto_52

    :cond_6b
    throw v5
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6c} :catch_55

    :catchall_6c
    move-exception v5

    move-object v6, v7

    goto :goto_46

    :catchall_6f
    move-exception v5

    move-object v1, v2

    move-object v6, v7

    goto :goto_46

    :catchall_73
    move-exception v5

    move-object v3, v4

    move-object v1, v2

    move-object v6, v7

    goto :goto_46

    :catch_78
    move-exception v5

    move-object v1, v2

    goto :goto_41

    :catch_7b
    move-exception v5

    move-object v3, v4

    move-object v1, v2

    goto :goto_41
.end method

.method private static decompress([BI)[B
    .registers 16

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :try_start_3
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_65
    .catchall {:try_start_3 .. :try_end_8} :catchall_91

    :try_start_8
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v8, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_9d
    .catchall {:try_start_8 .. :try_end_d} :catchall_94

    :try_start_d
    new-array v5, p1, [B

    const/4 v6, 0x0

    :goto_10
    array-length v9, v5

    if-ge v6, v9, :cond_1c

    array-length v9, v5

    sub-int v4, v9, v6

    invoke-virtual {v8, v5, v6, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_19} :catch_a0
    .catchall {:try_start_d .. :try_end_19} :catchall_98

    move-result v3

    if-gez v3, :cond_3a

    :cond_1c
    if-eq p1, v6, :cond_49

    if-eqz v8, :cond_23

    :try_start_20
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_2d

    :cond_23
    move-object v10, v11

    :goto_24
    if-eqz v2, :cond_29

    :try_start_26
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2d

    :cond_29
    move-object v9, v10

    :cond_2a
    :goto_2a
    if-eqz v9, :cond_48

    :try_start_2c
    throw v9
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v0

    move-object v7, v8

    move-object v1, v2

    :goto_30
    const-string/jumbo v9, "InputMethodSubtypeArray"

    const-string/jumbo v10, "Failed to decompress the data."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v11

    :cond_3a
    add-int/2addr v6, v3

    goto :goto_10

    :catch_3c
    move-exception v10

    goto :goto_24

    :catch_3e
    move-exception v9

    if-eqz v10, :cond_2a

    if-eq v10, v9, :cond_29

    :try_start_43
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_2d

    move-object v9, v10

    goto :goto_2a

    :cond_48
    return-object v11

    :cond_49
    if-eqz v8, :cond_4e

    :try_start_4b
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_58
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_2d

    :cond_4e
    move-object v10, v11

    :goto_4f
    if-eqz v2, :cond_54

    :try_start_51
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_2d

    :cond_54
    move-object v9, v10

    :cond_55
    :goto_55
    if-eqz v9, :cond_64

    :try_start_57
    throw v9

    :catch_58
    move-exception v10

    goto :goto_4f

    :catch_5a
    move-exception v9

    if-eqz v10, :cond_55

    if-eq v10, v9, :cond_54

    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_62} :catch_2d

    move-object v9, v10

    goto :goto_55

    :cond_64
    return-object v5

    :catch_65
    move-exception v9

    :goto_66
    :try_start_66
    throw v9
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v10

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    :goto_6b
    if-eqz v7, :cond_70

    :try_start_6d
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_70} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_7a

    :cond_70
    move-object v12, v10

    :cond_71
    :goto_71
    if-eqz v1, :cond_76

    :try_start_73
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_76} :catch_86
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_7a

    :cond_76
    move-object v10, v12

    :cond_77
    :goto_77
    if-eqz v10, :cond_90

    :try_start_79
    throw v10

    :catch_7a
    move-exception v0

    goto :goto_30

    :catch_7c
    move-exception v12

    if-eqz v10, :cond_71

    if-eq v10, v12, :cond_70

    invoke-virtual {v10, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v12, v10

    goto :goto_71

    :catch_86
    move-exception v10

    if-eqz v12, :cond_77

    if-eq v12, v10, :cond_76

    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v10, v12

    goto :goto_77

    :cond_90
    throw v9
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_91} :catch_7a

    :catchall_91
    move-exception v9

    move-object v10, v11

    goto :goto_6b

    :catchall_94
    move-exception v9

    move-object v1, v2

    move-object v10, v11

    goto :goto_6b

    :catchall_98
    move-exception v9

    move-object v7, v8

    move-object v1, v2

    move-object v10, v11

    goto :goto_6b

    :catch_9d
    move-exception v9

    move-object v1, v2

    goto :goto_66

    :catch_a0
    move-exception v9

    move-object v7, v8

    move-object v1, v2

    goto :goto_66
.end method

.method private static marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    move-result-object v1

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_13
    return-object v1

    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_1b
    throw v1
.end method

.method private static unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_1c
    return-object v1

    :catchall_1d
    move-exception v1

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :cond_24
    throw v1
.end method


# virtual methods
.method public get(I)Landroid/view/inputmethod/InputMethodSubtype;
    .registers 7

    if-ltz p1, :cond_6

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-gt v2, p1, :cond_c

    :cond_6
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_c
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v1, :cond_2e

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_13
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v1, :cond_2d

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    invoke-static {v2, v4}, Landroid/view/inputmethod/InputMethodSubtypeArray;->decompress([BI)[B

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    if-eqz v0, :cond_31

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->unmarshall([B)[Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    :goto_2b
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_3f

    :cond_2d
    monitor-exit v3

    :cond_2e
    aget-object v2, v1, p1

    return-object v2

    :cond_31
    :try_start_31
    const-string/jumbo v2, "InputMethodSubtypeArray"

    const-string/jumbo v4, "Failed to decompress data. Returns null as fallback."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    new-array v1, v2, [Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_3f

    goto :goto_2b

    :catchall_3f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 9

    const/4 v6, 0x0

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    if-nez v3, :cond_b

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_b
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    if-nez v0, :cond_39

    if-nez v2, :cond_39

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mLockObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_16
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B

    iget v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    if-nez v0, :cond_38

    if-nez v2, :cond_38

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mInstance:[Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodSubtypeArray;->marshall([Landroid/view/inputmethod/InputMethodSubtype;)[B

    move-result-object v1

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->compress([B)[B

    move-result-object v0

    if-nez v0, :cond_49

    const/4 v2, -0x1

    const-string/jumbo v3, "InputMethodSubtypeArray"

    const-string/jumbo v5, "Failed to compress data."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    iput v2, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mDecompressedSize:I

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCompressedData:[B
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_4b

    :cond_38
    monitor-exit v4

    :cond_39
    if-eqz v0, :cond_4e

    if-lez v2, :cond_4e

    iget v3, p0, Landroid/view/inputmethod/InputMethodSubtypeArray;->mCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_48
    return-void

    :cond_49
    :try_start_49
    array-length v2, v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4b

    goto :goto_34

    :catchall_4b
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_4e
    const-string/jumbo v3, "InputMethodSubtypeArray"

    const-string/jumbo v4, "Unexpected state. Behaving as an empty array."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_48
.end method
