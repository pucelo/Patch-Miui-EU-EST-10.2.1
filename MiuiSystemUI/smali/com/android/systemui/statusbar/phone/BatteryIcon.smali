.class public Lcom/android/systemui/statusbar/phone/BatteryIcon;
.super Ljava/lang/Object;
.source "BatteryIcon.java"


# static fields
.field private static sBatteryIcon:Lcom/android/systemui/statusbar/phone/BatteryIcon;


# instance fields
.field private final BATTERY_RANGE_LOAD:I

.field private mBatteryColumns:I

.field private mChargeDarkLevel:I

.field private mChargeDigitDarkLevel:I

.field private mChargeDigitLevel:I

.field private mChargeLevel:I

.field private mContext:Landroid/content/Context;

.field private mDarkLevel:I

.field private mDigitalDarkLevel:I

.field private mDigitalLevel:I

.field private mGraphicChargeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicChargeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

.field private mGraphicRes2Drawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLevel:I

.field private mPowerSaveDarkLevel:I

.field private mPowerSaveLevel:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicRes2Drawables:Landroid/util/SparseArray;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDarkLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalDarkLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDarkLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDigitLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDigitDarkLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveDarkLevel:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->BATTERY_RANGE_LOAD:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mBatteryColumns:I

    return-void
.end method

.method private doExtractDrawable(I)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    new-instance v21, Landroid/util/TypedValue;

    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v3, :cond_0

    return-object v19

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    move-object/from16 v0, v21

    iget v12, v0, Landroid/util/TypedValue;->density:I

    const/16 v5, 0xf0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/16 v5, 0xf0

    if-ne v12, v5, :cond_1

    const/16 v10, 0x26

    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mBatteryColumns:I

    div-int v6, v5, v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int v20, v5, v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v11, v5, v6

    mul-int v5, v10, v6

    new-array v4, v5, [I

    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v0, v11, :cond_4

    mul-int v7, v17, v6

    mul-int v8, v14, v10

    const/4 v5, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    move v7, v6

    move v8, v10

    invoke-static/range {v4 .. v9}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v18

    invoke-direct {v5, v0, v15}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_1
    const/16 v5, 0x140

    if-ne v12, v5, :cond_2

    const/16 v10, 0x32

    goto :goto_1

    :cond_2
    const/16 v5, 0x280

    if-ne v12, v5, :cond_3

    const/16 v10, 0x48

    goto :goto_1

    :cond_3
    const/16 v10, 0x3c

    goto :goto_1

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    return-object v19
.end method

.method private extractDrawable(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicRes2Drawables:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->doExtractDrawable(I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicRes2Drawables:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;
    .locals 12

    new-instance v7, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->extractDrawable(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    const v9, 0x3ecccccd    # 0.4f

    int-to-float v10, v0

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v1, v11, v10

    if-eqz p3, :cond_1

    move v8, p2

    :goto_0
    if-eqz p3, :cond_4

    add-int/lit8 v10, p2, 0xa

    const/16 v11, 0x64

    if-le v10, v11, :cond_3

    const/16 v3, 0x64

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_6

    float-to-int v6, v9

    add-float v10, v9, v1

    float-to-int v4, v10

    if-lt v4, v8, :cond_0

    if-le v6, v3, :cond_5

    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v7, v6, v4, v10}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    :goto_3
    add-float/2addr v9, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v10, p2, -0xa

    if-gez v10, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v8, p2, -0xa

    goto :goto_0

    :cond_3
    add-int/lit8 v3, p2, 0xa

    goto :goto_1

    :cond_4
    move v3, p2

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v6, v4, v10}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_6
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/LevelListDrawable;->setAutoMirrored(Z)V

    return-object v7
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->sBatteryIcon:Lcom/android/systemui/statusbar/phone/BatteryIcon;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/BatteryIcon;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->sBatteryIcon:Lcom/android/systemui/statusbar/phone/BatteryIcon;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->sBatteryIcon:Lcom/android/systemui/statusbar/phone/BatteryIcon;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicRes2Drawables:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDarkLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalDarkLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDarkLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDigitLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDigitDarkLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveDarkLevel:I

    return-void
.end method

.method public getGraphicChargeDigitIcon(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDigitLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDigitLevel:I

    sub-int v0, p1, v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    :cond_0
    :goto_0
    const v0, 0x7f100008

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDigitLevel:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeDigitIcon:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDigitLevel:I

    sub-int v0, p1, v0

    if-gez v0, :cond_1

    goto :goto_0
.end method

.method public getGraphicChargeDigitIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDigitDarkLevel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDigitDarkLevel:I

    sub-int v1, p1, v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    :cond_0
    :goto_0
    const v1, 0x7f100009

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDigitDarkLevel:I

    :cond_1
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060181

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    return-object v1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDigitDarkLevel:I

    sub-int v1, p1, v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeDigitIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public getGraphicChargeIcon(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeLevel:I

    sub-int v0, p1, v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    :cond_0
    :goto_0
    const v0, 0x7f100006

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeLevel:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIcon:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeLevel:I

    sub-int v0, p1, v0

    if-gez v0, :cond_1

    goto :goto_0
.end method

.method public getGraphicChargeIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDarkLevel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDarkLevel:I

    sub-int v1, p1, v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    :cond_0
    :goto_0
    const v1, 0x7f100007

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDarkLevel:I

    :cond_1
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060181

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    return-object v1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mChargeDarkLevel:I

    sub-int v1, p1, v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicChargeIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public getGraphicDigitalIcon(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalLevel:I

    sub-int/2addr v0, p1

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    :cond_0
    :goto_0
    const v0, 0x7f10000b

    invoke-direct {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalLevel:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIcon:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalLevel:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_1

    goto :goto_0
.end method

.method public getGraphicDigitalIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalDarkLevel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalDarkLevel:I

    sub-int/2addr v1, p1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    :cond_0
    :goto_0
    const v1, 0x7f10000c

    invoke-direct {p0, v1, p1, v3}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalDarkLevel:I

    :cond_1
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060181

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    return-object v1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDigitalDarkLevel:I

    sub-int/2addr v1, p1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicDigitalIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public getGraphicIcon(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mLevel:I

    sub-int/2addr v0, p1

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    :cond_0
    :goto_0
    const v0, 0x7f100005

    invoke-direct {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mLevel:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIcon:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mLevel:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_1

    goto :goto_0
.end method

.method public getGraphicIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDarkLevel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDarkLevel:I

    sub-int/2addr v1, p1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    :cond_0
    :goto_0
    const v1, 0x7f10000a

    invoke-direct {p0, v1, p1, v3}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDarkLevel:I

    :cond_1
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060181

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    return-object v1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mDarkLevel:I

    sub-int/2addr v1, p1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public getGraphicPowerSaveIcon(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveLevel:I

    sub-int v0, p1, v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    :cond_0
    :goto_0
    const v0, 0x7f10000d

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveLevel:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIcon:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveLevel:I

    sub-int v0, p1, v0

    if-gez v0, :cond_1

    goto :goto_0
.end method

.method public getGraphicPowerSaveIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveDarkLevel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveDarkLevel:I

    sub-int v1, p1, v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    :cond_0
    :goto_0
    const v1, 0x7f100010

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->generateIcon(IIZ)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveDarkLevel:I

    :cond_1
    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060181

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    return-object v1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mPowerSaveDarkLevel:I

    sub-int v1, p1, v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryIcon;->mGraphicPowerSaveIconDarkMode:Landroid/graphics/drawable/LevelListDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LevelListDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method
