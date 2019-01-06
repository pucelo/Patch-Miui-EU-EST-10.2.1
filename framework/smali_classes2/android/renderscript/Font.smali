.class public Landroid/renderscript/Font;
.super Landroid/renderscript/BaseObj;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Font$FontFamily;,
        Landroid/renderscript/Font$Style;
    }
.end annotation


# static fields
.field private static final synthetic -android-renderscript-Font$StyleSwitchesValues:[I

.field private static sFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/renderscript/Font$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMonoNames:[Ljava/lang/String;

.field private static final sSansNames:[Ljava/lang/String;

.field private static final sSerifNames:[Ljava/lang/String;


# direct methods
.method private static synthetic -getandroid-renderscript-Font$StyleSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/renderscript/Font;->-android-renderscript-Font$StyleSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/renderscript/Font;->-android-renderscript-Font$StyleSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/renderscript/Font$Style;->values()[Landroid/renderscript/Font$Style;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/renderscript/Font$Style;->BOLD:Landroid/renderscript/Font$Style;

    invoke-virtual {v1}, Landroid/renderscript/Font$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Landroid/renderscript/Font$Style;->BOLD_ITALIC:Landroid/renderscript/Font$Style;

    invoke-virtual {v1}, Landroid/renderscript/Font$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Landroid/renderscript/Font$Style;->ITALIC:Landroid/renderscript/Font$Style;

    invoke-virtual {v1}, Landroid/renderscript/Font$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Landroid/renderscript/Font$Style;->NORMAL:Landroid/renderscript/Font$Style;

    invoke-virtual {v1}, Landroid/renderscript/Font$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Landroid/renderscript/Font;->-android-renderscript-Font$StyleSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "sans-serif"

    aput-object v1, v0, v3

    const-string/jumbo v1, "arial"

    aput-object v1, v0, v4

    const-string/jumbo v1, "helvetica"

    aput-object v1, v0, v5

    const-string/jumbo v1, "tahoma"

    aput-object v1, v0, v6

    const-string/jumbo v1, "verdana"

    aput-object v1, v0, v7

    sput-object v0, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "serif"

    aput-object v1, v0, v3

    const-string/jumbo v1, "times"

    aput-object v1, v0, v4

    const-string/jumbo v1, "times new roman"

    aput-object v1, v0, v5

    const-string/jumbo v1, "palatino"

    aput-object v1, v0, v6

    const-string/jumbo v1, "georgia"

    aput-object v1, v0, v7

    const-string/jumbo v1, "baskerville"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "goudy"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "fantasy"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "cursive"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "ITC Stone Serif"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "monospace"

    aput-object v1, v0, v3

    const-string/jumbo v1, "courier"

    aput-object v1, v0, v4

    const-string/jumbo v1, "courier new"

    aput-object v1, v0, v5

    const-string/jumbo v1, "monaco"

    aput-object v1, v0, v6

    sput-object v0, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    invoke-static {}, Landroid/renderscript/Font;->initFontFamilyMap()V

    return-void
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    iget-object v0, p0, Landroid/renderscript/Font;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private static addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    sget-object v1, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;Landroid/renderscript/Font$Style;F)Landroid/renderscript/Font;
    .registers 9

    invoke-static {p2, p3}, Landroid/renderscript/Font;->getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, p4}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object v2

    return-object v2
.end method

.method public static createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .registers 12

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v1, p2, p3, v0}, Landroid/renderscript/RenderScript;->nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_31

    new-instance v5, Landroid/renderscript/RSRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to create font from asset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_31
    new-instance v4, Landroid/renderscript/Font;

    invoke-direct {v4, v2, v3, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object v4
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/io/File;F)Landroid/renderscript/Font;
    .registers 5

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .registers 11

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScript;->nFontCreateFromFile(Ljava/lang/String;FI)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2d

    new-instance v4, Landroid/renderscript/RSRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to create font from file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2d
    new-instance v1, Landroid/renderscript/Font;

    invoke-direct {v1, v2, v3, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object v1
.end method

.method public static createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;IF)Landroid/renderscript/Font;
    .registers 20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "R."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScript;->validate()V

    const/4 v9, 0x0

    :try_start_1c
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_5c

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const-wide/16 v10, 0x0

    instance-of v2, v9, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_79

    check-cast v9, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v9}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v6

    move-object/from16 v2, p0

    move/from16 v4, p3

    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/RenderScript;->nFontCreateFromAssetStream(Ljava/lang/String;FIJ)J

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmp-long v2, v10, v14

    if-nez v2, :cond_82

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to create font from resource "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_5c
    move-exception v8

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to open resource "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_79
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v4, "Unsupported asset stream created"

    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_82
    new-instance v12, Landroid/renderscript/Font;

    move-object/from16 v0, p0

    invoke-direct {v12, v10, v11, v0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object v12
.end method

.method static getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;
    .registers 5

    sget-object v1, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Font$FontFamily;

    if-eqz v0, :cond_17

    invoke-static {}, Landroid/renderscript/Font;->-getandroid-renderscript-Font$StyleSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/renderscript/Font$Style;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    :cond_17
    const-string/jumbo v1, "DroidSans.ttf"

    return-object v1

    :pswitch_1b
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    return-object v1

    :pswitch_1e
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    return-object v1

    :pswitch_21
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    return-object v1

    :pswitch_24
    iget-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    return-object v1

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_24
        :pswitch_21
        :pswitch_1b
    .end packed-switch
.end method

.method private static initFontFamilyMap()V
    .registers 5

    const/4 v4, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    new-instance v1, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v1, v4}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$FontFamily;)V

    sget-object v3, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    const-string/jumbo v3, "Roboto-Regular.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    const-string/jumbo v3, "Roboto-Bold.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    const-string/jumbo v3, "Roboto-Italic.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    const-string/jumbo v3, "Roboto-BoldItalic.ttf"

    iput-object v3, v1, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    new-instance v2, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v2, v4}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$FontFamily;)V

    sget-object v3, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    const-string/jumbo v3, "NotoSerif-Regular.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    const-string/jumbo v3, "NotoSerif-Bold.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    const-string/jumbo v3, "NotoSerif-Italic.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    const-string/jumbo v3, "NotoSerif-BoldItalic.ttf"

    iput-object v3, v2, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    new-instance v0, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v0, v4}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$FontFamily;)V

    sget-object v3, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    const-string/jumbo v3, "DroidSansMono.ttf"

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    const-string/jumbo v3, "DroidSansMono.ttf"

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    const-string/jumbo v3, "DroidSansMono.ttf"

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    const-string/jumbo v3, "DroidSansMono.ttf"

    iput-object v3, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    return-void
.end method
