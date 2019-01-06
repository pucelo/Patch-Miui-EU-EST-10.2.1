.class public Lmiui/maml/elements/ImageNumberScreenElement;
.super Lmiui/maml/elements/ImageScreenElement;
.source "ImageNumberScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ImageNumberScreenElement$CharName;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ImageNumber"

.field public static final TAG_NAME1:Ljava/lang/String; = "ImageChars"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mBmpHeight:I

.field private mBmpWidth:I

.field private mCachedBmp:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field private mNameMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ImageNumberScreenElement$CharName;",
            ">;"
        }
    .end annotation
.end field

.field private mNumExpression:Lmiui/maml/data/Expression;

.field private mOldSrc:Ljava/lang/String;

.field private mPreNumber:D

.field private mPreStr:Ljava/lang/String;

.field private mSpace:I

.field private mSpaceExpression:Lmiui/maml/data/Expression;

.field private mStrExpression:Lmiui/maml/data/Expression;

.field private mStrValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 13

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const-string/jumbo v3, "ImageNumberScreenElement"

    iput-object v3, p0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v6, 0x1

    iput-wide v6, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string/jumbo v5, "number"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string/jumbo v5, "string"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string/jumbo v5, "space"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpaceExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v3, "charNameMap"

    invoke-virtual {p0, p1, v3}, Lmiui/maml/elements/ImageNumberScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_77

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    move v3, v4

    :goto_5d
    if-ge v3, v5, :cond_77

    aget-object v1, v0, v3

    iget-object v6, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    new-instance v7, Lmiui/maml/elements/ImageNumberScreenElement$CharName;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, p0, v8, v9}, Lmiui/maml/elements/ImageNumberScreenElement$CharName;-><init>(Lmiui/maml/elements/ImageNumberScreenElement;CLjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    :cond_77
    return-void
.end method

.method private charToStr(C)Ljava/lang/String;
    .registers 5

    iget-object v2, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNameMap:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ImageNumberScreenElement$CharName;

    iget-char v2, v0, Lmiui/maml/elements/ImageNumberScreenElement$CharName;->ch:C

    if-ne v2, p1, :cond_a

    iget-object v2, v0, Lmiui/maml/elements/ImageNumberScreenElement$CharName;->name:Ljava/lang/String;

    return-object v2

    :cond_1d
    const/16 v2, 0x2e

    if-ne p1, v2, :cond_25

    const-string/jumbo v2, "dot"

    return-object v2

    :cond_25
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getNumberBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p1, p2}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v1, v0}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected doTick(J)V
    .registers 26

    invoke-super/range {p0 .. p2}, Lmiui/maml/elements/ImageScreenElement;->doTick(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    move-object/from16 v18, v0

    if-nez v18, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lmiui/maml/data/Expression;

    move-object/from16 v18, v0

    if-nez v18, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_41

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageNumberScreenElement;->updateBitmapVars()V

    :cond_41
    return-void

    :cond_42
    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mOldSrc:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v16, v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    move-wide/from16 v18, v0

    cmpl-double v18, v12, v18

    if-nez v18, :cond_7a

    xor-int/lit8 v18, v16, 0x1

    if-eqz v18, :cond_7a

    return-void

    :cond_7a
    move-object/from16 v0, p0

    iput-wide v12, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    invoke-static {v12, v13}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v10

    :cond_82
    :goto_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_95

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_95
    move-object/from16 v0, p0

    iput-object v15, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mOldSrc:Ljava/lang/String;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    if-eqz v10, :cond_12a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    :goto_a7
    const/4 v8, 0x0

    :goto_a8
    if-ge v8, v9, :cond_242

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->charToStr(C)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->getNumberBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_12d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Fail to get bitmap for number "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lmiui/maml/data/Expression;

    move-object/from16 v18, v0

    if-nez v18, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_82

    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_115

    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    :goto_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_124

    xor-int/lit8 v18, v16, 0x1

    if-eqz v18, :cond_124

    return-void

    :cond_115
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrExpression:Lmiui/maml/data/Expression;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->evaluateStr(Lmiui/maml/data/Expression;)Ljava/lang/String;

    move-result-object v10

    goto :goto_102

    :cond_124
    move-object/from16 v0, p0

    iput-object v10, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    goto/16 :goto_82

    :cond_12a
    const/4 v9, 0x0

    goto/16 :goto_a7

    :cond_12d
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    move/from16 v18, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    add-int v17, v18, v19

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-nez v18, :cond_226

    const/4 v6, 0x0

    :goto_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-nez v18, :cond_232

    const/4 v5, 0x0

    :goto_14f
    move/from16 v0, v17

    if-gt v0, v6, :cond_155

    if-le v7, v5, :cond_1d6

    :cond_155
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move/from16 v0, v17

    if-le v0, v6, :cond_23e

    sub-int v14, v9, v8

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    move/from16 v18, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    mul-int v19, v19, v14

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpace:I

    move/from16 v19, v0

    add-int/lit8 v20, v14, -0x1

    mul-int v19, v19, v20

    add-int v17, v18, v19

    :goto_179
    if-gt v7, v5, :cond_17c

    move v7, v5

    :cond_17c
    move-object/from16 v0, p0

    iput v7, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Bitmap;->setDensity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    if-eqz v11, :cond_1d6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    move/from16 v18, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    add-int/lit8 v18, v9, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_222

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpace:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    :cond_222
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a8

    :cond_226
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    goto/16 :goto_146

    :cond_232
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    goto/16 :goto_14f

    :cond_23e
    move/from16 v17, v6

    goto/16 :goto_179

    :cond_242
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageNumberScreenElement;->updateBitmapVars()V

    return-void
.end method

.method public finish()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->finish()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:D

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreStr:Ljava/lang/String;

    return-void
.end method

.method protected getBitmapHeight()I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    return v0
.end method

.method protected getBitmapWidth()I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    return v0
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->init()V

    iget-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpaceExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_8
    iput v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpace:I

    iget-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    return-void

    :cond_12
    iget-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mSpaceExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ImageNumberScreenElement;->scale(D)F

    move-result v0

    float-to-int v0, v0

    goto :goto_8
.end method

.method public setValue(D)V
    .registers 4

    invoke-static {p1, p2}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ImageNumberScreenElement;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mStrValue:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->requestUpdate()V

    return-void
.end method

.method protected updateBitmap(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->updateBitmapVars()V

    return-void
.end method
