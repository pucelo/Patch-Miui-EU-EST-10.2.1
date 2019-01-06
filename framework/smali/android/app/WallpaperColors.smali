.class public final Landroid/app/WallpaperColors;
.super Ljava/lang/Object;
.source "WallpaperColors.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperColors$1;
    }
.end annotation


# static fields
.field private static final BRIGHT_IMAGE_MEAN_LUMINANCE:F = 0.75f

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/WallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private static final DARK_PIXEL_LUMINANCE:F = 0.45f

.field private static final DARK_THEME_MEAN_LUMINANCE:F = 0.25f

.field public static final HINT_FROM_BITMAP:I = 0x4

.field public static final HINT_SUPPORTS_DARK_TEXT:I = 0x1

.field public static final HINT_SUPPORTS_DARK_THEME:I = 0x2

.field private static final MAX_BITMAP_SIZE:I = 0x70

.field private static final MAX_DARK_AREA:F = 0.05f

.field private static final MAX_WALLPAPER_EXTRACTION_AREA:I = 0x3100

.field private static final MIN_COLOR_OCCURRENCE:F = 0.05f


# instance fields
.field private mColorHints:I

.field private final mMainColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/WallpaperColors$1;

    invoke-direct {v0}, Landroid/app/WallpaperColors$1;-><init>()V

    sput-object v0, Landroid/app/WallpaperColors;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Primary color should never be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_22

    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    if-eqz p3, :cond_34

    if-nez p2, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tertiaryColor can\'t be specified when secondaryColor is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    iput p4, p0, Landroid/app/WallpaperColors;->mColorHints:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_21

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    iget-object v4, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/app/WallpaperColors;->mColorHints:I

    return-void
.end method

.method private static calculateDarkHints(Landroid/graphics/Bitmap;)I
    .registers 23

    if-nez p0, :cond_4

    const/4 v2, 0x0

    return v2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    const-wide/16 v20, 0x0

    array-length v2, v3

    int-to-float v2, v2

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v4

    float-to-int v15, v2

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v18, v0

    const/4 v13, 0x0

    :goto_33
    array-length v2, v3

    if-ge v13, v2, :cond_57

    aget v2, v3, v13

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    const/4 v2, 0x2

    aget v14, v18, v2

    aget v2, v3, v13

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    const v2, 0x3ee66666    # 0.45f

    cmpg-float v2, v14, v2

    if-gez v2, :cond_51

    if-eqz v10, :cond_51

    add-int/lit8 v11, v11, 0x1

    :cond_51
    float-to-double v4, v14

    add-double v20, v20, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_33

    :cond_57
    const/4 v12, 0x0

    array-length v2, v3

    int-to-double v4, v2

    div-double v16, v20, v4

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpl-double v2, v16, v4

    if-lez v2, :cond_65

    if-ge v11, v15, :cond_65

    const/4 v12, 0x1

    :cond_65
    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpg-double v2, v16, v4

    if-gez v2, :cond_6d

    or-int/lit8 v12, v12, 0x2

    :cond_6d
    return v12
.end method

.method private static calculateOptimalSize(II)Landroid/util/Size;
    .registers 12

    mul-int v2, p0, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/16 v3, 0x3100

    if-le v2, v3, :cond_14

    int-to-double v6, v2

    const-wide v8, 0x40c8800000000000L    # 12544.0

    div-double v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    :cond_14
    int-to-double v6, p0

    mul-double/2addr v6, v4

    double-to-int v1, v6

    int-to-double v6, p1

    mul-double/2addr v6, v4

    double-to-int v0, v6

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    if-nez v0, :cond_20

    const/4 v0, 0x1

    :cond_20
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object v3
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;
    .registers 21

    if-nez p0, :cond_b

    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "Bitmap can\'t be null"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    mul-int v4, v17, v18

    const/4 v13, 0x0

    const/16 v17, 0x3100

    move/from16 v0, v17

    if-le v4, v0, :cond_3f

    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/app/WallpaperColors;->calculateOptimalSize(II)Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v17

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_3f
    invoke-static/range {p0 .. p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v17

    new-instance v18, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>()V

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/graphics/palette/Palette$Builder;->setQuantizer(Lcom/android/internal/graphics/palette/Quantizer;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v17

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/graphics/palette/Palette$Builder;->clearFilters()Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v17

    const/16 v18, 0x3100

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/graphics/palette/Palette$Builder;->resizeBitmapArea(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object v10

    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    mul-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3d4ccccd    # 0.05f

    mul-float v8, v17, v18

    new-instance v17, Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY$1;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY$1;-><init>(F)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    sget-object v17, Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY;->$INST$0:Landroid/app/-$Lambda$xNlQtks0cIOkqsInCE_AAmZWgcY;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x0

    :goto_9b
    if-ge v7, v15, :cond_ae

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v5

    packed-switch v7, :pswitch_data_ce

    :cond_ae
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperColors;->calculateDarkHints(Landroid/graphics/Bitmap;)I

    move-result v6

    if-eqz v13, :cond_b7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b7
    new-instance v17, Landroid/app/WallpaperColors;

    or-int/lit8 v18, v6, 0x4

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v11, v12, v1, v2}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    return-object v17

    :pswitch_c5
    move-object v11, v5

    :goto_c6
    add-int/lit8 v7, v7, 0x1

    goto :goto_9b

    :pswitch_c9
    move-object v12, v5

    goto :goto_c6

    :pswitch_cb
    move-object/from16 v16, v5

    goto :goto_c6

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_c9
        :pswitch_cb
    .end packed-switch
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;
    .registers 11

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v5, :cond_d

    if-gtz v3, :cond_11

    :cond_d
    const/16 v5, 0x70

    const/16 v3, 0x70

    :cond_11
    invoke-static {v5, v3}, Landroid/app/WallpaperColors;->calculateOptimalSize(II)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p0, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method static synthetic lambda$-android_app_WallpaperColors_6256(FLcom/android/internal/graphics/palette/Palette$Swatch;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p0

    if-gez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic lambda$-android_app_WallpaperColors_6318(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Palette$Swatch;)I
    .registers 4

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_e

    :cond_d
    return v1

    :cond_e
    move-object v0, p1

    check-cast v0, Landroid/app/WallpaperColors;

    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget v2, p0, Landroid/app/WallpaperColors;->mColorHints:I

    iget v3, v0, Landroid/app/WallpaperColors;->mColorHints:I

    if-ne v2, v3, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public getColorHints()I
    .registers 2

    iget v0, p0, Landroid/app/WallpaperColors;->mColorHints:I

    return v0
.end method

.method public getMainColors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryColor()Landroid/graphics/Color;
    .registers 3

    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    return-object v0
.end method

.method public getSecondaryColor()Landroid/graphics/Color;
    .registers 3

    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    goto :goto_a
.end method

.method public getTertiaryColor()Landroid/graphics/Color;
    .registers 3

    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    goto :goto_a
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setColorHints(I)V
    .registers 2

    iput p1, p0, Landroid/app/WallpaperColors;->mColorHints:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    iget-object v2, p0, Landroid/app/WallpaperColors;->mMainColors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Color;

    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[WallpaperColors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "h: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/WallpaperColors;->mColorHints:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1e

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1e
    iget v4, p0, Landroid/app/WallpaperColors;->mColorHints:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
