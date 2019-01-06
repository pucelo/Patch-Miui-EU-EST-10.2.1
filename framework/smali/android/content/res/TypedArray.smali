.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"


# instance fields
.field private mAssets:Landroid/content/res/AssetManager;

.field mData:[I

.field mDataAddress:J

.field mIndices:[I

.field mIndicesAddress:J

.field mLength:I

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mRecycled:Z

.field private final mResources:Landroid/content/res/Resources;

.field mTheme:Landroid/content/res/Resources$Theme;

.field mValue:Landroid/util/TypedValue;

.field mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method protected constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    return-void
.end method

.method private getValueAt(ILandroid/util/TypedValue;)Z
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    if-nez v1, :cond_a

    return v3

    :cond_a
    iput v1, p2, Landroid/util/TypedValue;->type:I

    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    add-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->density:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_39

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_35
    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    return v2

    :cond_39
    const/4 v2, 0x0

    goto :goto_35
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v2, p1, 0x2

    aget v0, v1, v2

    if-gez v0, :cond_19

    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v2, :cond_18

    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    :cond_18
    return-object v3

    :cond_19
    iget-object v2, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method static obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .registers 4

    iget-object v1, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/TypedArray;

    if-nez v0, :cond_f

    new-instance v0, Landroid/content/res/MiuiTypedArray;

    invoke-direct {v0, p0}, Landroid/content/res/MiuiTypedArray;-><init>(Landroid/content/res/Resources;)V

    :cond_f
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/res/TypedArray;->mRecycled:Z

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, v0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v0, p1}, Landroid/content/res/TypedArray;->resize(I)V

    return-object v0
.end method

.method private resize(I)V
    .registers 10

    iput p1, p0, Landroid/content/res/TypedArray;->mLength:I

    mul-int/lit8 v0, p1, 0x6

    add-int/lit8 v1, p1, 0x1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget-wide v4, p0, Landroid/content/res/TypedArray;->mDataAddress:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_17

    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    array-length v3, v3

    if-ge v3, v0, :cond_3b

    :cond_17
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/res/TypedArray;->mDataAddress:J

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/res/TypedArray;->mIndicesAddress:J

    :cond_3b
    return-void
.end method


# virtual methods
.method public extractThemeAttrs()[I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v0

    return-object v0
.end method

.method public extractThemeAttrs([I)[I
    .registers 11

    const/4 v8, 0x0

    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Cannot make calls to a recycled instance!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_e
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v0, :cond_3f

    mul-int/lit8 v5, v4, 0x6

    add-int/lit8 v6, v5, 0x0

    aget v6, v3, v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_24

    :cond_21
    :goto_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_24
    add-int/lit8 v6, v5, 0x0

    aput v8, v3, v6

    add-int/lit8 v6, v5, 0x1

    aget v1, v3, v6

    if-eqz v1, :cond_21

    if-nez v2, :cond_39

    if-eqz p1, :cond_3c

    array-length v6, p1

    if-ne v6, v0, :cond_3c

    move-object v2, p1

    invoke-static {p1, v8}, Ljava/util/Arrays;->fill([II)V

    :cond_39
    :goto_39
    aput v1, v2, v4

    goto :goto_21

    :cond_3c
    new-array v2, v0, [I

    goto :goto_39

    :cond_3f
    return-object v2
.end method

.method public getBoolean(IZ)Z
    .registers 9

    const/4 v3, 0x0

    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_e

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e
    mul-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v4, p1, 0x0

    aget v1, v0, v4

    if-nez v1, :cond_19

    return p2

    :cond_19
    const/16 v4, 0x10

    if-lt v1, v4, :cond_29

    const/16 v4, 0x1f

    if-gt v1, v4, :cond_29

    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    if-eqz v4, :cond_28

    const/4 v3, 0x1

    :cond_28
    return v3

    :cond_29
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v3

    return v3

    :cond_3d
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getBoolean of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getChangingConfigurations()I
    .registers 9

    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v6, :cond_d

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Cannot make calls to a recycled instance!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_d
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v0, :cond_2c

    mul-int/lit8 v4, v3, 0x6

    add-int/lit8 v6, v4, 0x0

    aget v5, v2, v6

    if-nez v5, :cond_22

    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_22
    add-int/lit8 v6, v4, 0x4

    aget v6, v2, v6

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v6

    or-int/2addr v1, v6

    goto :goto_1f

    :cond_2c
    return v1
.end method

.method public getColor(II)I
    .registers 11

    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Cannot make calls to a recycled instance!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d
    move v0, p1

    mul-int/lit8 p1, p1, 0x6

    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v5, p1, 0x0

    aget v3, v2, v5

    if-nez v3, :cond_19

    return p2

    :cond_19
    const/16 v5, 0x10

    if-lt v3, v5, :cond_26

    const/16 v5, 0x1f

    if-gt v3, v5, :cond_26

    add-int/lit8 v5, p1, 0x1

    aget v5, v2, v5

    return v5

    :cond_26
    const/4 v5, 0x3

    if-ne v3, v5, :cond_41

    iget-object v4, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v4}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_40

    iget-object v5, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    iget-object v7, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    return v5

    :cond_40
    return p2

    :cond_41
    const/4 v5, 0x2

    if-ne v3, v5, :cond_6e

    iget-object v4, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v4}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to resolve attribute at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6e
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t convert value at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to color: type=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 6

    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    :cond_4c
    const/4 v1, 0x0

    return-object v1
.end method

.method public getComplexColor(I)Landroid/content/res/ComplexColor;
    .registers 6

    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadComplexColor(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v1

    return-object v1

    :cond_4c
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDimension(IF)F
    .registers 10

    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    move v0, p1

    mul-int/lit8 p1, p1, 0x6

    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    if-nez v2, :cond_19

    return p2

    :cond_19
    const/4 v4, 0x5

    if-ne v2, v4, :cond_27

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v4

    return v4

    :cond_27
    const/4 v4, 0x2

    if-ne v2, v4, :cond_54

    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_54
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to dimension: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDimensionPixelOffset(II)I
    .registers 10

    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    move v0, p1

    mul-int/lit8 p1, p1, 0x6

    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    if-nez v2, :cond_19

    return p2

    :cond_19
    const/4 v4, 0x5

    if-ne v2, v4, :cond_27

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v4

    return v4

    :cond_27
    const/4 v4, 0x2

    if-ne v2, v4, :cond_54

    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_54
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to dimension: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDimensionPixelSize(II)I
    .registers 10

    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    move v0, p1

    mul-int/lit8 p1, p1, 0x6

    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    if-nez v2, :cond_19

    return p2

    :cond_19
    const/4 v4, 0x5

    if-ne v2, v4, :cond_27

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    return v4

    :cond_27
    const/4 v4, 0x2

    if-ne v2, v4, :cond_54

    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_54
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to dimension: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .registers 7

    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_56

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    if-lez p2, :cond_4b

    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v0, v3}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    :cond_4b
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, p2, v3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_56
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFloat(IF)F
    .registers 10

    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    mul-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v4, p1, 0x0

    aget v2, v0, v4

    if-nez v2, :cond_18

    return p2

    :cond_18
    const/4 v4, 0x4

    if-ne v2, v4, :cond_24

    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    return v4

    :cond_24
    const/16 v4, 0x10

    if-lt v2, v4, :cond_32

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_32

    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    int-to-float v4, v4

    return v4

    :cond_32
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-static {v3}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    return v4

    :cond_4c
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFloat of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getFont(I)Landroid/graphics/Typeface;
    .registers 6

    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getFont(Landroid/util/TypedValue;I)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    :cond_4a
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFraction(IIIF)F
    .registers 12

    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    move v0, p1

    mul-int/lit8 p1, p1, 0x6

    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    if-nez v2, :cond_19

    return p4

    :cond_19
    const/4 v4, 0x6

    if-ne v2, v4, :cond_27

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v4

    return v4

    :cond_27
    const/4 v4, 0x2

    if-ne v2, v4, :cond_54

    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_54
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to fraction: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getIndex(I)I
    .registers 4

    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getIndexCount()I
    .registers 3

    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getInt(II)I
    .registers 9

    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    mul-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    if-nez v1, :cond_18

    return p2

    :cond_18
    const/16 v3, 0x10

    if-lt v1, v3, :cond_25

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_25

    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    return v3

    :cond_25
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v3

    return v3

    :cond_39
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getInt of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getInteger(II)I
    .registers 10

    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    move v0, p1

    mul-int/lit8 p1, p1, 0x6

    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    if-nez v2, :cond_19

    return p2

    :cond_19
    const/16 v4, 0x10

    if-lt v2, v4, :cond_26

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_26

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    return v4

    :cond_26
    const/4 v4, 0x2

    if-ne v2, v4, :cond_53

    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_53
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t convert value at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to integer: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getLayoutDimension(II)I
    .registers 7

    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    mul-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    const/16 v2, 0x10

    if-lt v1, v2, :cond_22

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_22

    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    return v2

    :cond_22
    const/4 v2, 0x5

    if-ne v1, v2, :cond_30

    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    return v2

    :cond_30
    return p2
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .registers 10

    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    move v0, p1

    mul-int/lit8 p1, p1, 0x6

    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    const/16 v4, 0x10

    if-lt v2, v4, :cond_23

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_23

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    return v4

    :cond_23
    const/4 v4, 0x5

    if-ne v2, v4, :cond_31

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    iget-object v5, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    return v4

    :cond_31
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5e

    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5e
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": You must supply a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " attribute."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getNonConfigurationString(II)Ljava/lang/String;
    .registers 11

    const/4 v5, 0x0

    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v6, :cond_e

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Cannot make calls to a recycled instance!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_e
    mul-int/lit8 p1, p1, 0x6

    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v6, p1, 0x0

    aget v3, v2, v6

    add-int/lit8 v6, p1, 0x4

    aget v6, v2, v6

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v0

    not-int v6, p2

    and-int/2addr v6, v0

    if-eqz v6, :cond_23

    return-object v5

    :cond_23
    if-nez v3, :cond_26

    return-object v5

    :cond_26
    const/4 v6, 0x3

    if-ne v3, v6, :cond_32

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_32
    iget-object v4, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v4}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_44
    return-object v5

    :cond_45
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getNonConfigurationString of bad type: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .registers 7

    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    mul-int/lit8 p1, p1, 0x6

    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v3, p1, 0x0

    aget v2, v1, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2d

    add-int/lit8 v3, p1, 0x2

    aget v0, v1, v3

    if-gez v0, :cond_2d

    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2d
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const-string/jumbo v0, "<internal>"

    goto :goto_17
.end method

.method public getResourceId(II)I
    .registers 7

    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    mul-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v2, p1, 0x0

    aget v2, v0, v2

    if-eqz v2, :cond_1e

    add-int/lit8 v2, p1, 0x3

    aget v1, v0, v2

    if-eqz v1, :cond_1e

    return v1

    :cond_1e
    return p2
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 3

    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 9

    const/4 v4, 0x0

    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v5, :cond_e

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e
    mul-int/lit8 p1, p1, 0x6

    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v5, p1, 0x0

    aget v2, v1, v5

    if-nez v2, :cond_19

    return-object v4

    :cond_19
    const/4 v5, 0x3

    if-ne v2, v5, :cond_25

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_25
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_37
    return-object v4

    :cond_38
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getString of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 8

    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d
    mul-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    if-nez v1, :cond_19

    const/4 v3, 0x0

    return-object v3

    :cond_19
    const/4 v3, 0x3

    if-ne v1, v3, :cond_21

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    :cond_21
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    :cond_2e
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getText of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 5

    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_20
    const/4 v1, 0x0

    return-object v1
.end method

.method public getThemeAttributeId(II)I
    .registers 6

    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    mul-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    add-int/lit8 v1, p1, 0x1

    aget v1, v0, v1

    return v1

    :cond_1d
    return p2
.end method

.method public getType(I)I
    .registers 4

    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    mul-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .registers 5

    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    mul-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public hasValue(I)Z
    .registers 6

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_e

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    mul-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    if-eqz v1, :cond_19

    const/4 v2, 0x1

    :cond_19
    return v2
.end method

.method public hasValueOrEmpty(I)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_f

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    mul-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v4, p1, 0x0

    aget v1, v0, v4

    if-nez v1, :cond_1f

    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    if-ne v4, v2, :cond_20

    :cond_1f
    :goto_1f
    return v2

    :cond_20
    move v2, v3

    goto :goto_1f
.end method

.method public length()I
    .registers 3

    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .registers 5

    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_18

    return-object v0

    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public recycle()V
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    iput-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    iput-object v1, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    iput-object v1, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
