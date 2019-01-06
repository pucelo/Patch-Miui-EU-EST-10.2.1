.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PointerIcon$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field public static final TYPE_ALIAS:I = 0x3f2

.field public static final TYPE_ALL_SCROLL:I = 0x3f5

.field public static final TYPE_ARROW:I = 0x3e8

.field public static final TYPE_CELL:I = 0x3ee

.field public static final TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final TYPE_COPY:I = 0x3f3

.field public static final TYPE_CROSSHAIR:I = 0x3ef

.field public static final TYPE_CUSTOM:I = -0x1

.field public static final TYPE_DEFAULT:I = 0x3e8

.field public static final TYPE_GRAB:I = 0x3fc

.field public static final TYPE_GRABBING:I = 0x3fd

.field public static final TYPE_HAND:I = 0x3ea

.field public static final TYPE_HELP:I = 0x3eb

.field public static final TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final TYPE_NOT_SPECIFIED:I = 0x1

.field public static final TYPE_NO_DROP:I = 0x3f4

.field public static final TYPE_NULL:I = 0x0

.field private static final TYPE_OEM_FIRST:I = 0x2710

.field public static final TYPE_SPOT_ANCHOR:I = 0x7d2

.field public static final TYPE_SPOT_HOVER:I = 0x7d0

.field public static final TYPE_SPOT_TOUCH:I = 0x7d1

.field public static final TYPE_TEXT:I = 0x3f0

.field public static final TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final TYPE_WAIT:I = 0x3ec

.field public static final TYPE_ZOOM_IN:I = 0x3fa

.field public static final TYPE_ZOOM_OUT:I = 0x3fb

.field private static final gNullIcon:Landroid/view/PointerIcon;

.field private static final gSystemIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static sUseLargeIcons:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapFrames:[Landroid/graphics/Bitmap;

.field private mDurationPerFrame:I

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private mSystemIconResourceId:I

.field private final mType:I


# direct methods
.method static synthetic -set0(Landroid/view/PointerIcon;I)I
    .registers 2

    iput p1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Landroid/view/PointerIcon;

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    sput-boolean v1, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    new-instance v0, Landroid/view/PointerIcon$1;

    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/PointerIcon;->mType:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/PointerIcon;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .registers 6

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "bitmap must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    return-object v0
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .registers 2

    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public static getNullIcon()Landroid/view/PointerIcon;
    .registers 1

    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .registers 12

    const/4 v9, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    const/4 v6, 0x0

    if-nez p0, :cond_10

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "context must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_10
    if-nez p1, :cond_15

    sget-object v5, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v5

    :cond_15
    sget-object v5, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/PointerIcon;

    if-eqz v2, :cond_20

    return-object v2

    :cond_20
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v4

    if-nez v4, :cond_2a

    invoke-static {v8}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v4

    :cond_2a
    sget-boolean v5, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    if-eqz v5, :cond_5f

    const v1, 0x1030318

    :goto_31
    sget-object v5, Lcom/android/internal/R$styleable;->Pointer:[I

    invoke-virtual {p0, v7, v5, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-ne v3, v9, :cond_68

    const-string/jumbo v5, "PointerIcon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Missing theme resources for pointer icon type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v8, :cond_63

    sget-object v5, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    :goto_5e
    return-object v5

    :cond_5f
    const v1, 0x103031d

    goto :goto_31

    :cond_63
    invoke-static {p0, v8}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v5

    goto :goto_5e

    :cond_68
    new-instance v2, Landroid/view/PointerIcon;

    invoke-direct {v2, p1}, Landroid/view/PointerIcon;-><init>(I)V

    const/high16 v5, -0x1000000

    and-int/2addr v5, v3

    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_7c

    iput v3, v2, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    :goto_76
    sget-object v5, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v2

    :cond_7c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, p0, v5, v3}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    goto :goto_76
.end method

.method private static getSystemIconTypeIndex(I)I
    .registers 2

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_44

    return v0

    :sswitch_5
    const/4 v0, 0x2

    return v0

    :sswitch_7
    const/16 v0, 0xe

    return v0

    :sswitch_a
    const/16 v0, 0xf

    return v0

    :sswitch_d
    const/16 v0, 0xd

    return v0

    :sswitch_10
    const/16 v0, 0x9

    return v0

    :sswitch_13
    const/4 v0, 0x4

    return v0

    :sswitch_15
    const/16 v0, 0xa

    return v0

    :sswitch_18
    const/16 v0, 0x15

    return v0

    :sswitch_1b
    const/4 v0, 0x3

    return v0

    :sswitch_1d
    const/4 v0, 0x6

    return v0

    :sswitch_1f
    const/16 v0, 0x10

    return v0

    :sswitch_22
    const/16 v0, 0x14

    return v0

    :sswitch_25
    return v0

    :sswitch_26
    const/4 v0, 0x5

    return v0

    :sswitch_28
    const/4 v0, 0x1

    return v0

    :sswitch_2a
    const/16 v0, 0xc

    return v0

    :sswitch_2d
    const/16 v0, 0xb

    return v0

    :sswitch_30
    const/16 v0, 0x13

    return v0

    :sswitch_33
    const/16 v0, 0x12

    return v0

    :sswitch_36
    const/16 v0, 0x11

    return v0

    :sswitch_39
    const/16 v0, 0x16

    return v0

    :sswitch_3c
    const/16 v0, 0x17

    return v0

    :sswitch_3f
    const/4 v0, 0x7

    return v0

    :sswitch_41
    const/16 v0, 0x8

    return v0

    :sswitch_data_44
    .sparse-switch
        0x3e8 -> :sswitch_5
        0x3e9 -> :sswitch_13
        0x3ea -> :sswitch_10
        0x3eb -> :sswitch_15
        0x3ec -> :sswitch_18
        0x3ee -> :sswitch_1b
        0x3ef -> :sswitch_1d
        0x3f0 -> :sswitch_1f
        0x3f1 -> :sswitch_22
        0x3f2 -> :sswitch_25
        0x3f3 -> :sswitch_26
        0x3f4 -> :sswitch_2a
        0x3f5 -> :sswitch_28
        0x3f6 -> :sswitch_2d
        0x3f7 -> :sswitch_30
        0x3f8 -> :sswitch_33
        0x3f9 -> :sswitch_36
        0x3fa -> :sswitch_39
        0x3fb -> :sswitch_3c
        0x3fc -> :sswitch_3f
        0x3fd -> :sswitch_41
        0x7d0 -> :sswitch_7
        0x7d1 -> :sswitch_a
        0x7d2 -> :sswitch_d
    .end sparse-switch
.end method

.method public static load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .registers 5

    const/4 v2, 0x0

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "resources must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    invoke-direct {v0, v2, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method private loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .registers 21

    invoke-virtual/range {p2 .. p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    :try_start_4
    const-string/jumbo v14, "pointer-icon"

    invoke-static {v12, v14}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    sget-object v14, Lcom/android/internal/R$styleable;->PointerIcon:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v1, v15, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v1, v15, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_27} :catch_35
    .catchall {:try_start_4 .. :try_end_27} :catchall_3f

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    if-nez v3, :cond_44

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "<pointer-icon> is missing bitmap attribute."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :catch_35
    move-exception v6

    :try_start_36
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "Exception parsing pointer icon resource."

    invoke-direct {v14, v15, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v14

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    throw v14

    :cond_44
    if-nez p1, :cond_75

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_4c
    instance-of v14, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v14, :cond_68

    move-object v2, v4

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v7

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v14, 0x1

    if-ne v7, v14, :cond_7c

    const-string/jumbo v14, "PointerIcon"

    const-string/jumbo v15, "Animation icon with single frame -- simply treating the first frame as a normal bitmap icon."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    instance-of v14, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v14, :cond_f5

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_75
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_4c

    :cond_7c
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/PointerIcon;->mDurationPerFrame:I

    add-int/lit8 v14, v7, -0x1

    new-array v14, v14, [Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    const/4 v11, 0x1

    :goto_96
    if-ge v11, v7, :cond_68

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v14, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v14, :cond_a9

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "Frame of an animated pointer icon must refer to a bitmap drawable."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_a9
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    if-ne v14, v13, :cond_b5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    if-eq v14, v8, :cond_e4

    :cond_b5
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "The bitmap size of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "-th frame "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "is different. All frames should have the exact same size and "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "share the same hotspot."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_e4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    add-int/lit8 v15, v11, -0x1

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    aput-object v16, v14, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_96

    :cond_f5
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput v9, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    move-object/from16 v0, p0

    iput v10, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    return-void
.end method

.method public static setUseLargeIcons(Z)V
    .registers 2

    sput-boolean p0, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    sget-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private static validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .registers 5

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_17

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    cmpg-float v0, p2, v1

    if-ltz v0, :cond_24

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2d

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    return v4

    :cond_5
    if-eqz p1, :cond_d

    instance-of v1, p1, Landroid/view/PointerIcon;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    :cond_d
    return v3

    :cond_e
    move-object v0, p1

    check-cast v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    iget v2, v0, Landroid/view/PointerIcon;->mType:I

    if-ne v1, v2, :cond_1d

    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iget v2, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eq v1, v2, :cond_1e

    :cond_1d
    return v3

    :cond_1e
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v1, :cond_39

    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v1, v2, :cond_30

    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    iget v2, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_31

    :cond_30
    return v3

    :cond_31
    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    iget v2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_30

    :cond_39
    return v4
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    return v0
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .registers 5

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_14

    :cond_13
    return-object p0

    :cond_14
    new-instance v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-direct {v0, p1, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    if-eqz v0, :cond_21

    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_21
    return-void
.end method
