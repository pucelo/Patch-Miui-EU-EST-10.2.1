.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Typeface$Builder;
    }
.end annotation


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final EMPTY_AXES:[I

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final NORMAL:I = 0x0

.field public static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final STYLE_ITALIC:I = 0x1

.field private static final STYLE_NORMAL:I

.field private static TAG:Ljava/lang/String;

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field private static final sDynamicTypefaceCache:Landroid/util/LruCache;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field private static final sLock:Ljava/lang/Object;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
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
.field private mStyle:I

.field private mSupportedAxes:[I

.field private mWeight:I

.field public native_instance:J


# direct methods
.method static synthetic -get0(Landroid/graphics/Typeface;)I
    .registers 2

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method static synthetic -get1(Landroid/graphics/Typeface;)I
    .registers 2

    iget v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return v0
.end method

.method static synthetic -get2()Landroid/util/LruCache;
    .registers 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -wrap0([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(JIZ)J
    .registers 6

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Typeface;->sLock:Ljava/lang/Object;

    new-array v0, v3, [I

    sput-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v0, "serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const-string/jumbo v0, "monospace"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v3

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetWeight(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return-void
.end method

.method synthetic constructor <init>(JLandroid/graphics/Typeface;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/graphics/Typeface;-><init>(J)V

    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .registers 8

    if-ltz p1, :cond_5

    const/4 v4, 0x3

    if-le p1, v4, :cond_6

    :cond_5
    const/4 p1, 0x0

    :cond_6
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_11

    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_f

    return-object p0

    :cond_f
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    :cond_11
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_24

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_24

    return-object v3

    :cond_24
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    if-nez v2, :cond_3a

    new-instance v2, Landroid/util/SparseArray;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3a
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v3
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_12

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_12
    return-object v1
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 15

    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_8
    sget-object v1, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v1, :cond_62

    sget-object v12, Landroid/graphics/Typeface;->sLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_f
    new-instance v1, Landroid/graphics/Typeface$Builder;

    invoke-direct {v1, p0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_7c

    move-result-object v11

    if-eqz v11, :cond_1c

    monitor-exit v12

    return-object v11

    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    :try_start_22
    invoke-static/range {v0 .. v5}, Landroid/graphics/Typeface$Builder;->-wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v10

    sget-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, v10}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Typeface;
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_7c

    if-eqz v11, :cond_32

    monitor-exit v12

    return-object v11

    :cond_32
    :try_start_32
    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {v0}, Landroid/graphics/FontFamily;->allowUnsupportedFont()V

    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    const/4 v1, 0x1

    new-array v9, v1, [Landroid/graphics/FontFamily;

    const/4 v1, 0x0

    aput-object v0, v9, v1

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-static {v9, v1, v2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v11

    sget-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, v10, v11}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_32 .. :try_end_5c} :catchall_7c

    monitor-exit v12

    return-object v11

    :cond_5e
    :try_start_5e
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_7c

    monitor-exit v12

    :cond_62
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Font asset not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_7c
    move-exception v1

    monitor-exit v12

    throw v1
.end method

.method private static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .registers 7

    const/4 v4, -0x1

    array-length v2, p0

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_5
    array-length v2, p0

    if-ge v0, v2, :cond_11

    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1, v4, v4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method private static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .registers 9

    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_14

    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    :goto_15
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_27

    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_27
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1, p1, p2}, Landroid/graphics/Typeface;->nativeCreateFromArray([JII)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    sget-object v1, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v1, :cond_27

    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    move-object v1, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Landroid/graphics/FontFamily;->allowUnsupportedFont()V

    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    const/4 v1, 0x1

    new-array v6, v1, [Landroid/graphics/FontFamily;

    aput-object v0, v6, v2

    invoke-static {v6, v4, v4}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    :cond_24
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    :cond_27
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Font not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createFromResources(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 16

    sget-object v1, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v1, :cond_4d

    sget-object v12, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    :try_start_d
    invoke-static/range {v0 .. v5}, Landroid/graphics/Typeface$Builder;->-wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v10

    sget-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, v10}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Typeface;
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_4f

    if-eqz v11, :cond_1d

    monitor-exit v12

    return-object v11

    :cond_1d
    :try_start_1d
    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_4f

    move-result v1

    if-nez v1, :cond_39

    const/4 v1, 0x0

    monitor-exit v12

    return-object v1

    :cond_39
    const/4 v1, 0x1

    :try_start_3a
    new-array v9, v1, [Landroid/graphics/FontFamily;

    const/4 v1, 0x0

    aput-object v0, v9, v1

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-static {v9, v1, v2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v11

    sget-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v1, v10, v11}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4f

    monitor-exit v12

    return-object v11

    :cond_4c
    monitor-exit v12

    :cond_4d
    const/4 v1, 0x0

    return-object v1

    :catchall_4f
    move-exception v1

    monitor-exit v12

    throw v1
.end method

.method public static createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 30

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v3, :cond_e1

    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    if-eqz v3, :cond_6d

    move-object/from16 v21, p0

    check-cast v21, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getCerts()Ljava/util/List;

    move-result-object v17

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-eqz v17, :cond_51

    const/16 v18, 0x0

    :goto_1b
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_51

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    :goto_30
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_4b

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_30

    :cond_4b
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto :goto_1b

    :cond_51
    new-instance v22, Landroid/provider/FontRequest;

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4, v5, v13}, Landroid/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static/range {v22 .. v22}, Landroid/provider/FontsContract;->getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;

    move-result-object v23

    if-nez v23, :cond_6c

    sget-object v23, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_6c
    return-object v23

    :cond_6d
    invoke-static/range {p1 .. p2}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v23

    if-eqz v23, :cond_74

    return-object v23

    :cond_74
    move-object/from16 v15, p0

    check-cast v15, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    new-instance v2, Landroid/graphics/FontFamily;

    invoke-direct {v2}, Landroid/graphics/FontFamily;-><init>()V

    invoke-virtual {v15}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v25

    const/4 v3, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v24, v3

    :goto_89
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_b0

    aget-object v16, v25, v24

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v3

    if-nez v3, :cond_ab

    const/4 v3, 0x0

    return-object v3

    :cond_ab
    add-int/lit8 v3, v24, 0x1

    move/from16 v24, v3

    goto :goto_89

    :cond_b0
    invoke-virtual {v2}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_b8

    const/4 v3, 0x0

    return-object v3

    :cond_b8
    const/4 v3, 0x1

    new-array v14, v3, [Landroid/graphics/FontFamily;

    const/4 v3, 0x0

    aput-object v2, v14, v3

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v14, v3, v4}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v23

    sget-object v9, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    :try_start_cf
    invoke-static/range {v3 .. v8}, Landroid/graphics/Typeface$Builder;->-wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v20

    sget-object v3, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dc
    .catchall {:try_start_cf .. :try_end_dc} :catchall_de

    monitor-exit v9

    return-object v23

    :catchall_de
    move-exception v3

    monitor-exit v9

    throw v3

    :cond_e1
    const/4 v3, 0x0

    return-object v3
.end method

.method public static createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    if-nez p0, :cond_e

    const-wide/16 v0, 0x0

    :goto_4
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2

    :cond_e
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_4
.end method

.method private static createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .registers 2

    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 12

    const/4 v9, 0x0

    sget-object v8, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    monitor-enter v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    :try_start_a
    invoke-static/range {v0 .. v5}, Landroid/graphics/Typeface$Builder;->-wrap0(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Typeface;
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1c

    if-eqz v7, :cond_1a

    monitor-exit v8

    return-object v7

    :cond_1a
    monitor-exit v8

    return-object v9

    :catchall_1c
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static init()V
    .registers 30

    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v21

    new-instance v7, Ljava/io/File;

    const-string/jumbo v25, "fonts.xml"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_10
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static/range {v18 .. v18}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/text/FontConfig;

    move-result-object v16

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    :goto_27
    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_50

    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v25

    aget-object v12, v25, v19

    if-eqz v19, :cond_44

    invoke-virtual {v12}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_4d

    :cond_44
    invoke-static {v12, v6}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/text/FontConfig$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    move-result-object v14

    if-eqz v14, :cond_4d

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v19, v19, 0x1

    goto :goto_27

    :cond_50
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/graphics/FontFamily;

    sput-object v25, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    sget-object v25, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v25 .. v25}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    const/16 v19, 0x0

    :goto_74
    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_c0

    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getFamilies()[Landroid/text/FontConfig$Family;

    move-result-object v25

    aget-object v12, v25, v19

    invoke-virtual {v12}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_a0

    if-nez v19, :cond_a3

    sget-object v23, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    :goto_93
    invoke-virtual {v12}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a0
    add-int/lit8 v19, v19, 0x1

    goto :goto_74

    :cond_a3
    invoke-static {v12, v6}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/text/FontConfig$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;

    move-result-object v17

    if-eqz v17, :cond_a0

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v13, v0, [Landroid/graphics/FontFamily;

    const/16 v25, 0x0

    aput-object v17, v13, v25

    const/16 v25, -0x1

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v13, v0, v1}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;

    move-result-object v23

    goto :goto_93

    :cond_c0
    invoke-virtual/range {v16 .. v16}, Landroid/text/FontConfig;->getAliases()[Landroid/text/FontConfig$Alias;

    move-result-object v26

    const/16 v25, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    :goto_cb
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_114

    aget-object v4, v26, v25

    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getToName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    move-object/from16 v20, v5

    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v24

    const/16 v28, 0x190

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_104

    new-instance v20, Landroid/graphics/Typeface;

    iget-wide v0, v5, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v28

    move-object/from16 v0, v20

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    :cond_104
    invoke-virtual {v4}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v25, v25, 0x1

    goto :goto_cb

    :cond_114
    sput-object v22, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_116
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_116} :catch_17a
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_116} :catch_159
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_116} :catch_138
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_116} :catch_117

    :goto_116
    return-void

    :catch_117
    move-exception v11

    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "XML parse exception for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_116

    :catch_138
    move-exception v9

    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Error reading "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_116

    :catch_159
    move-exception v8

    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Error opening "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_116

    :catch_17a
    move-exception v10

    sget-object v25, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v26, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_116
.end method

.method private static makeFamilyFromParsed(Landroid/text/FontConfig$Family;Ljava/util/Map;)Landroid/graphics/FontFamily;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$Family;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/FontFamily;"
        }
    .end annotation

    new-instance v8, Landroid/graphics/FontFamily;

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getVariant()I

    move-result v4

    invoke-direct {v8, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v20

    const/4 v3, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v19, v3

    :goto_19
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_104

    aget-object v17, v20, v19

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v8, v0, v1}, Landroid/graphics/TypefaceInjector;->addFontToFamily(Landroid/graphics/FontFamily;Landroid/text/FontConfig$Font;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_2b
    :goto_2b
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v3

    goto :goto_19

    :cond_30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/system/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getFontName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    if-nez v9, :cond_bd

    const/4 v10, 0x0

    const/4 v15, 0x0

    :try_start_56
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5f} :catch_9f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_139

    :try_start_5f
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_76} :catch_143
    .catchall {:try_start_5f .. :try_end_76} :catchall_13d

    if-eqz v16, :cond_7b

    :try_start_78
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_9d
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7e

    :cond_7b
    :goto_7b
    if-eqz v10, :cond_bd

    :try_start_7d
    throw v10
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_7e} :catch_7e

    :catch_7e
    move-exception v14

    move-object/from16 v15, v16

    :goto_81
    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error mapping font file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :catch_9d
    move-exception v10

    goto :goto_7b

    :catch_9f
    move-exception v3

    :goto_a0
    :try_start_a0
    throw v3
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    :goto_a7
    if-eqz v15, :cond_ac

    :try_start_a9
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_ac} :catch_b1
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_af

    :cond_ac
    :goto_ac
    if-eqz v4, :cond_bc

    :try_start_ae
    throw v4

    :catch_af
    move-exception v14

    goto :goto_81

    :catch_b1
    move-exception v5

    if-nez v4, :cond_b6

    move-object v4, v5

    goto :goto_ac

    :cond_b6
    if-eq v4, v5, :cond_ac

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_ac

    :cond_bc
    throw v3
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_bd} :catch_af

    :cond_bd
    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getWeight()I

    move-result v12

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->isItalic()Z

    move-result v3

    if-eqz v3, :cond_102

    const/4 v13, 0x1

    :goto_d0
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v3

    if-nez v3, :cond_2b

    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error creating font "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    :cond_102
    const/4 v13, 0x0

    goto :goto_d0

    :cond_104
    invoke-virtual {v8}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v3

    if-nez v3, :cond_138

    sget-object v3, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to load Family: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/text/FontConfig$Family;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_138
    return-object v8

    :catchall_139
    move-exception v3

    move-object v4, v10

    goto/16 :goto_a7

    :catchall_13d
    move-exception v3

    move-object/from16 v15, v16

    move-object v4, v10

    goto/16 :goto_a7

    :catch_143
    move-exception v3

    move-object/from16 v15, v16

    goto/16 :goto_a0
.end method

.method private static native nativeCreateFromArray([JII)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateFromTypefaceWithExactStyle(JIZ)J
.end method

.method private static native nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeGetSupportedAxes(J)[I
.end method

.method private static native nativeGetWeight(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .registers 3

    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/graphics/Typeface;

    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_24

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_24

    :goto_23
    return v1

    :cond_24
    move v1, v2

    goto :goto_23
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .registers 2

    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .registers 7

    const/16 v0, 0x11

    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    return v0
.end method

.method public final isBold()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public final isItalic()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isSupportedAxes(I)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v1, :cond_1b

    monitor-enter p0

    :try_start_6
    iget-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v1, :cond_1a

    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->nativeGetSupportedAxes(J)[I

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    iget-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v1, :cond_1a

    sget-object v1, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    iput-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_25

    :cond_1a
    monitor-exit p0

    :cond_1b
    iget-object v1, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method
