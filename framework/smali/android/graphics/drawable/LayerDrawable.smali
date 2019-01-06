.class public Landroid/graphics/drawable/LayerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LayerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/LayerDrawable$ChildDrawable;,
        Landroid/graphics/drawable/LayerDrawable$LayerState;
    }
.end annotation


# static fields
.field public static final INSET_UNDEFINED:I = -0x80000000

.field private static final LOG_TAG:Ljava/lang/String; = "LayerDrawable"

.field public static final PADDING_MODE_NEST:I = 0x0

.field public static final PADDING_MODE_STACK:I = 0x1


# instance fields
.field private mChildRequestedInvalidation:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

.field private mMutated:Z

.field private mPaddingB:[I

.field private mPaddingL:[I

.field private mPaddingR:[I

.field private mPaddingT:[I

.field private mSuspendChildInvalidation:Z

.field private final mTmpContainer:Landroid/graphics/Rect;

.field private final mTmpOutRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-lez v0, :cond_2a

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    :cond_2a
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    return-void
.end method

.method constructor <init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    if-nez p1, :cond_f

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "layers must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    array-length v1, p1

    new-array v2, v1, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_3b

    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    aget-object v4, p1, v0

    iput-object v4, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v3, p1, v0

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    aget-object v5, p1, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3b
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    return-void
.end method

.method private computeNestedPadding(Landroid/graphics/Rect;)V
    .registers 7

    const/4 v3, 0x0

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_40

    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_40
    return-void
.end method

.method private computeStackedPadding(Landroid/graphics/Rect;)V
    .registers 7

    const/4 v3, 0x0

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_4c

    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_4c
    return-void
.end method

.method private createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .registers 4

    new-instance v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    iput-object p1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_16

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_13

    return-object v2

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_16
    return-object v5
.end method

.method private inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v8, 0x2

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    :cond_a
    :goto_a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_96

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-ge v1, v2, :cond_1a

    const/4 v6, 0x3

    if-eq v5, v6, :cond_96

    :cond_1a
    if-ne v5, v8, :cond_a

    if-gt v1, v2, :cond_a

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_a

    new-instance v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v6, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {v3, v6}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(I)V

    sget-object v6, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    invoke-static {p1, p4, p3, v6}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_91

    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    if-eqz v6, :cond_4e

    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    aget v6, v6, v9

    if-nez v6, :cond_91

    :cond_4e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v9, :cond_4e

    if-eq v5, v8, :cond_7b

    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "child tag defining a drawable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7b
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget v6, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v7, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    :cond_91
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    goto/16 :goto_a

    :cond_96
    return-void
.end method

.method private refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z
    .registers 6

    iget-object v1, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_45

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_1b

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v2, v2, p1

    if-eq v1, v2, :cond_35

    :cond_1b
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    aput v2, v1, p1

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    aput v2, v1, p1

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    aput v2, v1, p1

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    aput v2, v1, p1

    const/4 v1, 0x1

    return v1

    :cond_35
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_1b

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_1b

    :cond_45
    const/4 v1, 0x0

    return v1
.end method

.method private static resolveGravity(IIIII)I
    .registers 6

    invoke-static {p0}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v0

    if-nez v0, :cond_a

    if-gez p1, :cond_21

    or-int/lit8 p0, p0, 0x7

    :cond_a
    :goto_a
    invoke-static {p0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_14

    if-gez p2, :cond_26

    or-int/lit8 p0, p0, 0x70

    :cond_14
    :goto_14
    if-gez p1, :cond_1a

    if-gez p3, :cond_1a

    or-int/lit8 p0, p0, 0x7

    :cond_1a
    if-gez p2, :cond_20

    if-gez p4, :cond_20

    or-int/lit8 p0, p0, 0x70

    :cond_20
    return p0

    :cond_21
    const v0, 0x800003

    or-int/2addr p0, v0

    goto :goto_a

    :cond_26
    or-int/lit8 p0, p0, 0x30

    goto :goto_14
.end method

.method private resumeChildInvalidation()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    :cond_c
    return-void
.end method

.method private setLayerInsetInternal(IIIIIII)V
    .registers 10

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    return-void
.end method

.method private suspendChildInvalidation()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    return-void
.end method

.method private updateLayerBounds(Landroid/graphics/Rect;)V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->suspendChildInvalidation()V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_a

    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->resumeChildInvalidation()V

    return-void

    :catchall_a
    move-exception v0

    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->resumeChildInvalidation()V

    throw v0
.end method

.method private updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    .registers 38

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v29, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v10

    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v10, v0, :cond_48

    const/16 v23, 0x1

    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v32

    if-nez v32, :cond_4b

    const/16 v24, 0x1

    :goto_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v11, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v12, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    :goto_3b
    if-ge v14, v12, :cond_13b

    aget-object v31, v11, v14

    move-object/from16 v0, v31

    iget-object v13, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_4e

    :cond_45
    :goto_45
    add-int/lit8 v14, v14, 0x1

    goto :goto_3b

    :cond_48
    const/16 v23, 0x0

    goto :goto_18

    :cond_4b
    const/16 v24, 0x0

    goto :goto_26

    :cond_4e
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    move/from16 v20, v0

    move-object/from16 v0, v31

    iget v15, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    if-eqz v23, :cond_11d

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    move/from16 v18, v0

    :goto_60
    if-eqz v23, :cond_125

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    move/from16 v19, v0

    :goto_68
    const/high16 v32, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v32

    if-ne v0, v1, :cond_12d

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    move/from16 v16, v0

    :goto_76
    const/high16 v32, -0x80000000

    move/from16 v0, v19

    move/from16 v1, v32

    if-ne v0, v1, :cond_131

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    move/from16 v17, v0

    :goto_84
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/graphics/drawable/LayerDrawable;->mTmpContainer:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v32, v32, v16

    add-int v32, v32, v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    add-int v33, v33, v20

    add-int v33, v33, v30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    sub-int v34, v34, v17

    sub-int v34, v34, v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    sub-int v35, v35, v15

    sub-int v35, v35, v27

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    move/from16 v26, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    move/from16 v25, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v22

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->resolveGravity(IIIII)I

    move-result v5

    if-gez v26, :cond_135

    move/from16 v6, v22

    :goto_e7
    if-gez v25, :cond_138

    move/from16 v7, v21

    :goto_eb
    invoke-static/range {v5 .. v10}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual {v13, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v24, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    move-object/from16 v32, v0

    aget v32, v32, v14

    add-int v28, v28, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    move-object/from16 v32, v0

    aget v32, v32, v14

    add-int v29, v29, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    move-object/from16 v32, v0

    aget v32, v32, v14

    add-int v30, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    move-object/from16 v32, v0

    aget v32, v32, v14

    add-int v27, v27, v32

    goto/16 :goto_45

    :cond_11d
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    move/from16 v18, v0

    goto/16 :goto_60

    :cond_125
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    move/from16 v19, v0

    goto/16 :goto_68

    :cond_12d
    move/from16 v16, v18

    goto/16 :goto_76

    :cond_131
    move/from16 v17, v19

    goto/16 :goto_84

    :cond_135
    move/from16 v6, v26

    goto :goto_e7

    :cond_138
    move/from16 v7, v25

    goto :goto_eb

    :cond_13b
    return-void
.end method

.method private updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .registers 11

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v5

    iput-object v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v0, :cond_7d

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_a0

    :goto_20
    :pswitch_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :pswitch_23
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    goto :goto_20

    :pswitch_2c
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    goto :goto_20

    :pswitch_35
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    goto :goto_20

    :pswitch_3e
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    goto :goto_20

    :pswitch_47
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    goto :goto_20

    :pswitch_50
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    goto :goto_20

    :pswitch_59
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    goto :goto_20

    :pswitch_62
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    goto :goto_20

    :pswitch_6b
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    goto :goto_20

    :pswitch_74
    iget v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    goto :goto_20

    :cond_7d
    const/4 v5, 0x4

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_9f

    iget-object v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8d

    iget-object v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_8d
    iput-object v2, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v6, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    :cond_9f
    return-void

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_74
        :pswitch_62
        :pswitch_59
        :pswitch_20
        :pswitch_23
        :pswitch_2c
        :pswitch_35
        :pswitch_3e
        :pswitch_47
        :pswitch_50
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 8

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set2(Landroid/graphics/drawable/LayerDrawable$LayerState;[I)[I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_7a

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_7c

    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :pswitch_23
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    goto :goto_20

    :pswitch_2c
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    goto :goto_20

    :pswitch_35
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    goto :goto_20

    :pswitch_3e
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    goto :goto_20

    :pswitch_47
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    goto :goto_20

    :pswitch_50
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    goto :goto_20

    :pswitch_59
    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    goto :goto_20

    :pswitch_62
    invoke-static {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get0(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set0(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z

    goto :goto_20

    :pswitch_6e
    invoke-static {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set1(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I

    goto :goto_20

    :cond_7a
    return-void

    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_2c
        :pswitch_47
        :pswitch_35
        :pswitch_23
        :pswitch_50
        :pswitch_59
        :pswitch_62
        :pswitch_6e
    .end packed-switch
.end method


# virtual methods
.method public addLayer(Landroid/graphics/drawable/Drawable;)I
    .registers 4

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    return v0
.end method

.method addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    if-eqz v4, :cond_29

    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    array-length v0, v4

    :goto_a
    iget v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-lt v1, v0, :cond_1b

    add-int/lit8 v4, v0, 0xa

    new-array v2, v4, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    if-lez v1, :cond_19

    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-static {v4, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    iput-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    :cond_1b
    iget-object v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aput-object p1, v4, v1

    iget v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    return v1

    :cond_29
    const/4 v0, 0x0

    goto :goto_a
.end method

.method addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .registers 12

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->createLayer(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    move-result-object v0

    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iput-object p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    iget-object v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->isAutoMirrored()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput p5, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput p6, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput p7, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 12

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v7, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable$LayerState;->setDensity(I)V

    invoke-static {v7}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get2(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I

    move-result-object v8

    if-eqz v8, :cond_27

    invoke-static {v7}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get2(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I

    move-result-object v8

    sget-object v9, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    invoke-virtual {p1, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_27
    iget-object v2, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v0, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v0, :cond_5e

    aget-object v6, v2, v5

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->setDensity(I)V

    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    if-eqz v8, :cond_45

    iget-object v8, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    sget-object v9, Lcom/android/internal/R$styleable;->LayerDrawableItem:[I

    invoke-virtual {p1, v8, v9}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_45
    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget v8, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    :cond_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_5e
    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public clearMutated()V
    .registers 6

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v0, :cond_1a

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1a
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    return-void
.end method

.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .registers 4

    new-instance v0, Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_17

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method ensurePadding()V
    .registers 3

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    array-length v1, v1

    if-lt v1, v0, :cond_e

    return-void

    :cond_e
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    return-void
.end method

.method public findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
    .registers 5

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v2, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    add-int/lit8 v0, v2, -0x1

    :goto_a
    if-ltz v0, :cond_1a

    aget-object v2, v1, v0

    iget v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v2, p1, :cond_17

    aget-object v2, v1, v0

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v2

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1a
    const/4 v2, 0x0

    return-object v2
.end method

.method public findIndexByLayerId(I)I
    .registers 7

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v3, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_15

    aget-object v1, v3, v2

    iget v4, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    if-ne v4, p1, :cond_12

    return v2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_15
    const/4 v4, -0x1

    return v4
.end method

.method public getAlpha()I
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;->getFirstNonNullDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    return v1

    :cond_b
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    return v1
.end method

.method public getBottomPadding()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-lt p1, v0, :cond_c

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getEndPadding()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    return v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    goto :goto_9
.end method

.method public getId(I)I
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-lt p1, v0, :cond_c

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 13

    const/4 v3, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v10}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v10

    if-nez v10, :cond_20

    const/4 v6, 0x1

    :goto_c
    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v10, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v10, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v0, :cond_4c

    aget-object v9, v1, v4

    iget-object v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_22

    :cond_1d
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_20
    const/4 v6, 0x0

    goto :goto_c

    :cond_22
    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    if-gez v10, :cond_3f

    iget-object v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    :goto_2c
    if-gez v5, :cond_42

    const/4 v2, -0x1

    :goto_2f
    if-le v2, v3, :cond_32

    move v3, v2

    :cond_32
    if-eqz v6, :cond_1d

    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingT:[I

    aget v10, v10, v4

    add-int/2addr v8, v10

    iget-object v10, p0, Landroid/graphics/drawable/LayerDrawable;->mPaddingB:[I

    aget v10, v10, v4

    add-int/2addr v7, v10

    goto :goto_1d

    :cond_3f
    iget v5, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    goto :goto_2c

    :cond_42
    iget v10, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    add-int/2addr v10, v5

    iget v11, v9, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int v2, v10, v7

    goto :goto_2f

    :cond_4c
    return v3
.end method

.method public getIntrinsicWidth()I
    .registers 20

    const/16 v16, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v17

    if-nez v17, :cond_40

    const/4 v11, 0x1

    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_42

    const/4 v9, 0x1

    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v2, :cond_a0

    aget-object v14, v3, v4

    iget-object v0, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-nez v17, :cond_44

    :cond_3d
    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_40
    const/4 v11, 0x0

    goto :goto_11

    :cond_42
    const/4 v9, 0x0

    goto :goto_1e

    :cond_44
    if-eqz v9, :cond_8a

    iget v7, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    :goto_48
    if-eqz v9, :cond_8d

    iget v8, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    :goto_4c
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v7, v0, :cond_90

    iget v5, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    :goto_54
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v8, v0, :cond_92

    iget v6, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    :goto_5c
    iget v0, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    move/from16 v17, v0

    if-gez v17, :cond_94

    iget-object v0, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    :goto_6a
    if-gez v10, :cond_97

    const/4 v15, -0x1

    :goto_6d
    move/from16 v0, v16

    if-le v15, v0, :cond_73

    move/from16 v16, v15

    :cond_73
    if-eqz v11, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingL:[I

    move-object/from16 v17, v0

    aget v17, v17, v4

    add-int v12, v12, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable;->mPaddingR:[I

    move-object/from16 v17, v0

    aget v17, v17, v4

    add-int v13, v13, v17

    goto :goto_3d

    :cond_8a
    iget v7, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    goto :goto_48

    :cond_8d
    iget v8, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    goto :goto_4c

    :cond_90
    move v5, v7

    goto :goto_54

    :cond_92
    move v6, v8

    goto :goto_5c

    :cond_94
    iget v10, v14, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    goto :goto_6a

    :cond_97
    add-int v17, v10, v5

    add-int v17, v17, v6

    add-int v17, v17, v12

    add-int v15, v17, v13

    goto :goto_6d

    :cond_a0
    return v16
.end method

.method public getLayerGravity(I)I
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    return v1
.end method

.method public getLayerHeight(I)I
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    return v1
.end method

.method public getLayerInsetBottom(I)I
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    return v1
.end method

.method public getLayerInsetEnd(I)I
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    return v1
.end method

.method public getLayerInsetLeft(I)I
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    return v1
.end method

.method public getLayerInsetRight(I)I
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    return v1
.end method

.method public getLayerInsetStart(I)I
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    return v1
.end method

.method public getLayerInsetTop(I)I
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    return v1
.end method

.method public getLayerWidth(I)I
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iget v1, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    return v1
.end method

.method public getLeftPadding()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    return v0
.end method

.method public getNumberOfLayers()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    return v0

    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 7

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_1e

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1b

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    return-void

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1e
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v10

    if-nez v10, :cond_3f

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeNestedPadding(Landroid/graphics/Rect;)V

    :goto_d
    iget v7, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iget v2, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getLayoutDirection()I

    move-result v10

    if-ne v10, v8, :cond_43

    const/4 v0, 0x1

    :goto_18
    if-eqz v0, :cond_45

    iget v5, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    :goto_1c
    if-eqz v0, :cond_48

    iget v6, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    :goto_20
    if-ltz v5, :cond_4b

    move v3, v5

    :goto_23
    if-ltz v6, :cond_4e

    move v4, v6

    :goto_26
    if-ltz v3, :cond_2a

    iput v3, p1, Landroid/graphics/Rect;->left:I

    :cond_2a
    if-ltz v7, :cond_2e

    iput v7, p1, Landroid/graphics/Rect;->top:I

    :cond_2e
    if-ltz v4, :cond_32

    iput v4, p1, Landroid/graphics/Rect;->right:I

    :cond_32
    if-ltz v2, :cond_36

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_36
    iget v10, p1, Landroid/graphics/Rect;->left:I

    if-nez v10, :cond_3e

    iget v10, p1, Landroid/graphics/Rect;->top:I

    if-eqz v10, :cond_51

    :cond_3e
    :goto_3e
    return v8

    :cond_3f
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->computeStackedPadding(Landroid/graphics/Rect;)V

    goto :goto_d

    :cond_43
    const/4 v0, 0x0

    goto :goto_18

    :cond_45
    iget v5, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    goto :goto_1c

    :cond_48
    iget v6, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    goto :goto_20

    :cond_4b
    iget v3, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    goto :goto_23

    :cond_4e
    iget v4, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    goto :goto_26

    :cond_51
    iget v10, p1, Landroid/graphics/Rect;->right:I

    if-nez v10, :cond_3e

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v10, :cond_3e

    move v8, v9

    goto :goto_3e
.end method

.method public getPaddingMode()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    return v0
.end method

.method public getRightPadding()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    return v0
.end method

.method public getStartPadding()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->hasFocusStateSpecified()Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object v6, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    const/4 v7, 0x0

    invoke-static {p1, v7}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->setDensity(I)V

    sget-object v7, Lcom/android/internal/R$styleable;->LayerDrawable:[I

    invoke-static {p1, p4, p3, v7}, Landroid/graphics/drawable/LayerDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v0, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v0, :cond_28

    aget-object v5, v2, v4

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->setDensity(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->refreshPadding()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mSuspendChildInvalidation:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable;->mChildRequestedInvalidation:Z

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    goto :goto_7
.end method

.method public isAutoMirrored()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get0(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z

    move-result v0

    return v0
.end method

.method public isProjected()Z
    .registers 6

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v3

    if-eqz v3, :cond_8

    return v4

    :cond_8
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_21

    aget-object v3, v2, v1

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v3

    if-eqz v3, :cond_1e

    return v4

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_21
    const/4 v3, 0x0

    return v3
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 6

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_17

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v5, 0x0

    iget-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    if-nez v4, :cond_2d

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-ne v4, p0, :cond_2d

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {p0, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v0, :cond_2a

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2a
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable;->mMutated:Z

    :cond_2d
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .registers 8

    const/4 v2, 0x0

    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v0, :cond_1a

    aget-object v5, v1, v4

    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_17

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v5

    or-int/2addr v2, v5

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1a
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    return v2
.end method

.method protected onLevelChange(I)Z
    .registers 8

    const/4 v2, 0x0

    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v0, :cond_21

    aget-object v5, v1, v4

    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1e

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    aget-object v5, v1, v4

    invoke-direct {p0, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    const/4 v2, 0x1

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_21
    if-eqz v2, :cond_2a

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    :cond_2a
    return v2
.end method

.method protected onStateChange([I)Z
    .registers 8

    const/4 v2, 0x0

    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v0, :cond_27

    aget-object v5, v1, v4

    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    if-eqz v5, :cond_24

    aget-object v5, v1, v4

    invoke-direct {p0, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    const/4 v2, 0x1

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_27
    if-eqz v2, :cond_30

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/LayerDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    :cond_30
    return v2
.end method

.method refreshPadding()V
    .registers 5

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_13

    aget-object v3, v1, v2

    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 7

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_17

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 7

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v4, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set0(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_1c

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_19

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1c
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 7

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_17

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method public setDither(Z)V
    .registers 7

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_17

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method public setDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    if-lt p1, v3, :cond_d

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    :cond_d
    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v2, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v1, v2, p1

    iget-object v3, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_27

    if-eqz p2, :cond_22

    iget-object v3, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_22
    iget-object v3, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_27
    if-eqz p2, :cond_2c

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2c
    iput-object p2, v1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable$LayerState;->invalidateCache()V

    invoke-direct {p0, p1, v1}, Landroid/graphics/drawable/LayerDrawable;->refreshChildPadding(ILandroid/graphics/drawable/LayerDrawable$ChildDrawable;)Z

    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->findIndexByLayerId(I)I

    move-result v0

    if-gez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, v0, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    return v1
.end method

.method public setHotspot(FF)V
    .registers 8

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_17

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 10

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_17

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v4, :cond_23

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    :goto_22
    return-void

    :cond_23
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_22
.end method

.method public setId(II)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v0, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    return-void
.end method

.method public setLayerGravity(II)V
    .registers 5

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    return-void
.end method

.method public setLayerHeight(II)V
    .registers 5

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    return-void
.end method

.method public setLayerInset(IIIII)V
    .registers 14

    const/high16 v6, -0x80000000

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    return-void
.end method

.method public setLayerInsetBottom(II)V
    .registers 5

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    return-void
.end method

.method public setLayerInsetEnd(II)V
    .registers 5

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    return-void
.end method

.method public setLayerInsetLeft(II)V
    .registers 5

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    return-void
.end method

.method public setLayerInsetRelative(IIIII)V
    .registers 14

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, v2

    move v5, p5

    move v6, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetInternal(IIIIIII)V

    return-void
.end method

.method public setLayerInsetRight(II)V
    .registers 5

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    return-void
.end method

.method public setLayerInsetStart(II)V
    .registers 5

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    return-void
.end method

.method public setLayerInsetTop(II)V
    .registers 5

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    return-void
.end method

.method public setLayerSize(III)V
    .registers 6

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    return-void
.end method

.method public setLayerWidth(II)V
    .registers 5

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    aget-object v0, v1, p1

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    return-void
.end method

.method public setOpacity(I)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    return-void
.end method

.method public setPadding(IIII)V
    .registers 7

    const/4 v1, -0x1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    return-void
.end method

.method public setPaddingMode(I)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I

    move-result v0

    if-eq v0, p1, :cond_d

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->-set1(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I

    :cond_d
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 7

    const/4 v1, -0x1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iput p1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iput p2, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iput p3, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    iput p4, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iput v1, v0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 7

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_17

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 7

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_17

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 9

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v2

    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v0, :cond_1b

    aget-object v5, v1, v4

    iget-object v3, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_18

    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1b
    return v2
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/LayerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
