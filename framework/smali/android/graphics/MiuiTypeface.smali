.class public Landroid/graphics/MiuiTypeface;
.super Ljava/lang/Object;
.source "MiuiTypeface.java"


# static fields
.field private static final DROID_SANS:Ljava/lang/String; = "/data/system/theme/fonts/Roboto-Regular.ttf"

.field private static final DROID_SANS_BOLD:Ljava/lang/String; = "/data/system/theme/fonts/Roboto-Bold.ttf"

.field private static final DROID_SANS_FALLBACK:Ljava/lang/String; = "/data/system/theme/fonts/DroidSansFallback.ttf"

.field private static DROID_SANS_FONTS:[Ljava/lang/String; = null

.field private static DROID_SANS_FONTS_BOLD:[Ljava/lang/String; = null

.field public static FLIPFONT:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_ITALIC:Landroid/graphics/Typeface; = null

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/data/system/theme/fonts/"

.field public static final MONOSPACE_INDEX:I = 0x3

.field public static final SANS_INDEX:I = 0x1

.field public static final SERIF_INDEX:I = 0x2

.field private static mLastModified:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "/data/system/theme/fonts/DroidSansFallback.ttf"

    aput-object v1, v0, v3

    const-string/jumbo v1, "/data/system/theme/fonts/Roboto-Regular.ttf"

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "/data/system/theme/fonts/Roboto-Bold.ttf"

    aput-object v1, v0, v3

    sput-object v0, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS_BOLD:[Ljava/lang/String;

    sput-object v2, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    sput-object v2, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    sput-object v2, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    sput-object v2, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChangedTypeface(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;
    .registers 4

    invoke-static {p1, p2}, Landroid/graphics/MiuiTypeface;->getTypefaceFlipFont(II)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    return-object p0
.end method

.method public static getDefaultTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 3

    if-nez p0, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/MiuiTypeface;->getTypefaceFlipFont(II)Landroid/graphics/Typeface;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method private static getFlipFontPath(II)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eq p0, v3, :cond_8

    const-string/jumbo v2, ""

    return-object v2

    :cond_8
    const/4 v1, 0x0

    if-nez p1, :cond_1e

    sget-object v1, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS:[Ljava/lang/String;

    :cond_d
    :goto_d
    array-length v3, v1

    :goto_e
    if-ge v2, v3, :cond_26

    aget-object v0, v1, v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_23

    return-object v0

    :cond_1e
    if-ne p1, v3, :cond_d

    sget-object v1, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS_BOLD:[Ljava/lang/String;

    goto :goto_d

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_26
    const-string/jumbo v2, ""

    return-object v2
.end method

.method private static getTypefaceFlipFont(II)Landroid/graphics/Typeface;
    .registers 4

    const/4 v1, 0x0

    const-string/jumbo v0, "is_patchrom"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    return-object v0

    :cond_f
    if-ltz p1, :cond_d

    const/4 v0, 0x3

    if-gt p1, v0, :cond_d

    invoke-static {}, Landroid/graphics/MiuiTypeface;->setTypefaceFlipFont()V

    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private static setTypefaceFlipFont()V
    .registers 12

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-static {v8, v11}, Landroid/graphics/MiuiTypeface;->getFlipFontPath(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v8}, Landroid/graphics/MiuiTypeface;->getFlipFontPath(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4a

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    :cond_31
    :goto_31
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    aput-object v5, v4, v11

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    aput-object v5, v4, v8

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    aput-object v5, v4, v9

    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    aput-object v5, v4, v10

    return-void

    :cond_4a
    sget-wide v4, Landroid/graphics/MiuiTypeface;->mLastModified:J

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_31

    :try_start_54
    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_60} :catch_77

    :goto_60
    sget-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v4, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v4, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sput-wide v4, Landroid/graphics/MiuiTypeface;->mLastModified:J

    goto :goto_31

    :catch_77
    move-exception v0

    sget-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    goto :goto_60
.end method
