.class public final Landroid/graphics/Typeface$Builder;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final BOLD_WEIGHT:I = 0x2bc

.field public static final NORMAL_WEIGHT:I = 0x190

.field private static final sLock:Ljava/lang/Object;

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private mFallbackFamilyName:Ljava/lang/String;

.field private mFd:Ljava/io/FileDescriptor;

.field private mFontBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mFonts:[Landroid/provider/FontsContract$FontInfo;

.field private mItalic:I

.field private mPath:Ljava/lang/String;

.field private mTtcIndex:I

.field private mWeight:I


# direct methods
.method static synthetic -wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;
    .registers 7

    invoke-static/range {p0 .. p5}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface$Builder;->sLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface$Builder;->sTypefaceCache:Landroid/util/LongSparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Landroid/provider/FontsContract$FontInfo;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/provider/FontsContract$FontInfo;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    iput-object p2, p0, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    return-void
.end method

.method private static createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;
    .registers 14

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v4, :cond_22

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_75

    const/4 v5, 0x0

    array-length v6, p3

    :goto_56
    if-ge v5, v6, :cond_75

    aget-object v0, p3, v5

    invoke-virtual {v0}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    :cond_75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private resolveFallbackTypeface()Landroid/graphics/Typeface;
    .registers 12

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    iget-object v8, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v8, :cond_9

    return-object v9

    :cond_9
    sget-object v8, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    iget-object v9, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_17

    sget-object v0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    :cond_17
    iget v8, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    if-ne v8, v10, :cond_20

    iget v8, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v8, v10, :cond_20

    return-object v0

    :cond_20
    iget v8, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    if-ne v8, v10, :cond_54

    invoke-static {v0}, Landroid/graphics/Typeface;->-get1(Landroid/graphics/Typeface;)I

    move-result v5

    :goto_28
    iget v8, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v8, v10, :cond_59

    invoke-static {v0}, Landroid/graphics/Typeface;->-get0(Landroid/graphics/Typeface;)I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_57

    :goto_34
    const/4 v2, 0x1

    :goto_35
    shl-int/lit8 v8, v5, 0x1

    if-eqz v2, :cond_5e

    :goto_39
    or-int v3, v8, v6

    sget-object v7, Landroid/graphics/Typeface$Builder;->sLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3e
    sget-object v6, Landroid/graphics/Typeface$Builder;->sTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v8, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_60

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_80

    if-eqz v4, :cond_60

    monitor-exit v7

    return-object v4

    :cond_54
    iget v5, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    goto :goto_28

    :cond_57
    const/4 v2, 0x0

    goto :goto_35

    :cond_59
    iget v8, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v8, v6, :cond_57

    goto :goto_34

    :cond_5e
    move v6, v7

    goto :goto_39

    :cond_60
    :try_start_60
    new-instance v4, Landroid/graphics/Typeface;

    iget-wide v8, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v5, v2}, Landroid/graphics/Typeface;->-wrap1(JIZ)J

    move-result-wide v8

    const/4 v6, 0x0

    invoke-direct {v4, v8, v9, v6}, Landroid/graphics/Typeface;-><init>(JLandroid/graphics/Typeface;)V

    if-nez v1, :cond_7b

    new-instance v1, Landroid/util/SparseArray;

    const/4 v6, 0x4

    invoke-direct {v1, v6}, Landroid/util/SparseArray;-><init>(I)V

    sget-object v6, Landroid/graphics/Typeface$Builder;->sTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v8, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v6, v8, v9, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_7b
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_7e
    .catchall {:try_start_60 .. :try_end_7e} :catchall_80

    monitor-exit v7

    return-object v4

    :catchall_80
    move-exception v6

    monitor-exit v7

    throw v6
.end method


# virtual methods
.method public build()Landroid/graphics/Typeface;
    .registers 30

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_ad

    const/4 v14, 0x0

    const/16 v22, 0x0

    :try_start_9
    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_14} :catch_8f
    .catchall {:try_start_9 .. :try_end_14} :catchall_214

    :try_start_14
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    new-instance v8, Landroid/graphics/FontFamily;

    invoke-direct {v8}, Landroid/graphics/FontFamily;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v3

    if-nez v3, :cond_59

    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_45} :catch_21e
    .catchall {:try_start_14 .. :try_end_45} :catchall_218

    move-result-object v3

    if-eqz v23, :cond_4b

    :try_start_48
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_56
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4e

    :cond_4b
    :goto_4b
    if-eqz v14, :cond_58

    :try_start_4d
    throw v14
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception v20

    move-object/from16 v22, v23

    :goto_51
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :catch_56
    move-exception v14

    goto :goto_4b

    :cond_58
    return-object v3

    :cond_59
    :try_start_59
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_6e

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_62} :catch_21e
    .catchall {:try_start_59 .. :try_end_62} :catchall_218

    move-result-object v3

    if-eqz v23, :cond_68

    :try_start_65
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_6b
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_4e

    :cond_68
    :goto_68
    if-eqz v14, :cond_6d

    :try_start_6a
    throw v14
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6b} :catch_4e

    :catch_6b
    move-exception v14

    goto :goto_68

    :cond_6d
    return-object v3

    :cond_6e
    const/4 v3, 0x1

    :try_start_6f
    new-array v0, v3, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v8, v21, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Landroid/graphics/Typeface;->-wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_83} :catch_21e
    .catchall {:try_start_6f .. :try_end_83} :catchall_218

    move-result-object v3

    if-eqz v23, :cond_89

    :try_start_86
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_89} :catch_8c
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_4e

    :cond_89
    :goto_89
    if-eqz v14, :cond_8e

    :try_start_8b
    throw v14
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8c} :catch_4e

    :catch_8c
    move-exception v14

    goto :goto_89

    :cond_8e
    return-object v3

    :catch_8f
    move-exception v3

    :goto_90
    :try_start_90
    throw v3
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    :catchall_91
    move-exception v4

    move-object/from16 v28, v4

    move-object v4, v3

    move-object/from16 v3, v28

    :goto_97
    if-eqz v22, :cond_9c

    :try_start_99
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_a1
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9f

    :cond_9c
    :goto_9c
    if-eqz v4, :cond_ac

    :try_start_9e
    throw v4

    :catch_9f
    move-exception v20

    goto :goto_51

    :catch_a1
    move-exception v5

    if-nez v4, :cond_a6

    move-object v4, v5

    goto :goto_9c

    :cond_a6
    if-eq v4, v5, :cond_9c

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9c

    :cond_ac
    throw v3
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_ad} :catch_9f

    :cond_ad
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    if-eqz v3, :cond_14c

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static/range {v10 .. v15}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v25

    sget-object v4, Landroid/graphics/Typeface$Builder;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_d2
    invoke-static {}, Landroid/graphics/Typeface;->-get2()Landroid/util/LruCache;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/graphics/Typeface;
    :try_end_de
    .catchall {:try_start_d2 .. :try_end_de} :catchall_149

    if-eqz v27, :cond_e2

    monitor-exit v4

    return-object v27

    :cond_e2
    :try_start_e2
    new-instance v8, Landroid/graphics/FontFamily;

    invoke-direct {v8}, Landroid/graphics/FontFamily;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object/from16 v18, v0

    const/4 v14, 0x1

    move-object v10, v8

    invoke-virtual/range {v10 .. v18}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v3

    if-nez v3, :cond_11a

    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;
    :try_end_117
    .catchall {:try_start_e2 .. :try_end_117} :catchall_149

    move-result-object v3

    monitor-exit v4

    return-object v3

    :cond_11a
    :try_start_11a
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_126

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;
    :try_end_123
    .catchall {:try_start_11a .. :try_end_123} :catchall_149

    move-result-object v3

    monitor-exit v4

    return-object v3

    :cond_126
    const/4 v3, 0x1

    :try_start_127
    new-array v0, v3, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v8, v21, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Landroid/graphics/Typeface;->-wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v27

    invoke-static {}, Landroid/graphics/Typeface;->-get2()Landroid/util/LruCache;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_147
    .catchall {:try_start_127 .. :try_end_147} :catchall_149

    monitor-exit v4

    return-object v27

    :catchall_149
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_14c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    if-eqz v3, :cond_19c

    new-instance v8, Landroid/graphics/FontFamily;

    invoke-direct {v8}, Landroid/graphics/FontFamily;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object v10, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v3

    if-nez v3, :cond_17a

    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :cond_17a
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_185

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :cond_185
    const/4 v3, 0x1

    new-array v0, v3, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v8, v21, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Landroid/graphics/Typeface;->-wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :cond_19c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v3, :cond_20b

    new-instance v8, Landroid/graphics/FontFamily;

    invoke-direct {v8}, Landroid/graphics/FontFamily;-><init>()V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_1af
    if-ge v3, v5, :cond_1ea

    aget-object v24, v4, v3

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    if-nez v11, :cond_1c6

    :goto_1c3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1af

    :cond_1c6
    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->getTtcIndex()I

    move-result v12

    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v13

    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->getWeight()I

    move-result v14

    invoke-virtual/range {v24 .. v24}, Landroid/provider/FontsContract$FontInfo;->isItalic()Z

    move-result v10

    if-eqz v10, :cond_1e5

    const/4 v15, 0x1

    :goto_1d9
    move-object v10, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v26

    if-nez v26, :cond_1e7

    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    const/4 v3, 0x0

    return-object v3

    :cond_1e5
    const/4 v15, 0x0

    goto :goto_1d9

    :cond_1e7
    const/16 v19, 0x1

    goto :goto_1c3

    :cond_1ea
    if-nez v19, :cond_1f1

    invoke-virtual {v8}, Landroid/graphics/FontFamily;->abortCreation()V

    const/4 v3, 0x0

    return-object v3

    :cond_1f1
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    const/4 v3, 0x1

    new-array v0, v3, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    const/4 v3, 0x0

    aput-object v8, v21, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Typeface$Builder;->mWeight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Landroid/graphics/Typeface;->-wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :cond_20b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "No source was set."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_214
    move-exception v3

    move-object v4, v14

    goto/16 :goto_97

    :catchall_218
    move-exception v3

    move-object/from16 v22, v23

    move-object v4, v14

    goto/16 :goto_97

    :catch_21e
    move-exception v3

    move-object/from16 v22, v23

    goto/16 :goto_90
.end method

.method public setFallback(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .registers 2

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    return-object p0
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .registers 4

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Font variation settings can not be specified for FontResult source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Font variation settings are already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0
.end method

.method public setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;
    .registers 4

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Font variation settings can not be specified for FontResult source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Font variation settings are already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0
.end method

.method public setItalic(Z)Landroid/graphics/Typeface$Builder;
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    return-object p0

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setTtcIndex(I)Landroid/graphics/Typeface$Builder;
    .registers 4

    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TTC index can not be specified for FontResult source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    return-object p0
.end method

.method public setWeight(I)Landroid/graphics/Typeface$Builder;
    .registers 2

    iput p1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    return-object p0
.end method
