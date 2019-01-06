.class public final Landroid/content/res/MiuiResourcesImpl;
.super Landroid/content/res/ResourcesImpl;
.source "MiuiResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
    }
.end annotation


# static fields
.field private static final sMiuiThemeEnabled:Z

.field private static final sPreloadDrawableSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sUpdatedTimeSystem:Ljava/lang/Long;


# instance fields
.field private mIsPreloadOverlayed:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPreloadingIds:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

.field private mSkipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Lmiui/content/res/ThemeResources;

.field private mThemeValues:Lmiui/content/res/ThemeValues;

.field private mUpdatedTime:J

.field private mValueLoadedTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V
    .registers 9

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    sget-object v0, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    iput-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    iput-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mValueLoadedTime:J

    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    return-void
.end method

.method private static delayGCAtlasPreloadedBitmaps()V
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1d

    invoke-static {}, Lmiui/content/res/ThemeNativeUtils;->terminateAtlas()V

    new-instance v1, Landroid/content/res/MiuiResourcesImpl$1;

    invoke-direct {v1, v0}, Landroid/content/res/MiuiResourcesImpl$1;-><init>(Landroid/util/LongSparseArray;)V

    invoke-virtual {v1}, Landroid/content/res/MiuiResourcesImpl$1;->start()V

    :cond_1d
    return-void
.end method

.method private getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string/jumbo v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, ".xml"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v3, v4

    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    const-string/jumbo v3, ".9.png"

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v0, v2}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    const-string/jumbo v3, ".png"

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    :cond_47
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    :goto_4a
    return v1

    :cond_4b
    iget-object v3, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    goto :goto_4a
.end method

.method private loadValues()V
    .registers 7

    iget-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mValueLoadedTime:J

    iget-wide v4, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mValueLoadedTime:J

    return-void
.end method

.method private resolveOverlayValue(ILandroid/util/TypedValue;)V
    .registers 6

    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_8

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    if-gtz v1, :cond_9

    :cond_8
    return-void

    :cond_9
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2d

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_2d

    :goto_15
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_24

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResourcesImpl;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_24
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    :cond_2c
    return-void

    :cond_2d
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2c

    goto :goto_15
.end method


# virtual methods
.method public getIntArray(I)[I
    .registers 5

    const/4 v2, 0x0

    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_c

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    return-object v2
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_c

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    return-object v2
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 5

    const/4 v2, 0x0

    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_c

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    return-object v2
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6

    const/4 v2, 0x0

    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_c

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    return-object v2
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 5

    const/4 v2, 0x0

    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_c

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    return-object v2
.end method

.method getThemeInt(I)Ljava/lang/Integer;
    .registers 4

    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method getThemeIntArray(I)[I
    .registers 4

    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method getThemeString(I)Ljava/lang/CharSequence;
    .registers 4

    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method getThemeStringArray(I)[Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-direct {p0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->resolveOverlayValue(ILandroid/util/TypedValue;)V

    return-void
.end method

.method public init(Landroid/content/res/MiuiResources;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iput-object p2, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    if-nez p2, :cond_18

    const-string/jumbo v0, "android"

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lmiui/content/res/ThemeResources;->getSystem(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    :goto_14
    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->reset()V

    return-void

    :cond_18
    invoke-static {p1, p2}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    goto :goto_14
.end method

.method isPreloadOverlayed(I)Ljava/lang/Boolean;
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    sget-boolean v5, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v5, :cond_7

    return-object v6

    :cond_7
    iget-object v5, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    return-object v1

    :cond_12
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v5, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_4b

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;

    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    iget v5, v2, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mCookie:I

    iget-object v6, v2, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    invoke-direct {v0, v5, v6, v7}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    invoke-direct {p0, v0}, Landroid/content/res/MiuiResourcesImpl;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    iget-object v5, v2, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_4b
    iget-object v5, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v8, 0x0

    sget-boolean v6, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v6, :cond_a

    invoke-super/range {p0 .. p5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    return-object v6

    :cond_a
    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-super/range {p0 .. p5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_7f

    iget v6, p2, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_2f

    iget v6, p2, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-le v6, v7, :cond_7a

    :cond_2f
    iget-object v6, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;

    iget v6, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {v4, p0, v6, v1, v8}, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;-><init>(Landroid/content/res/MiuiResourcesImpl;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    if-eqz v6, :cond_48

    iget-object v6, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    iget-object v6, v6, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    iput-object v6, v4, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    iput-object v8, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    :cond_48
    iget-object v6, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v6, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-nez v5, :cond_76

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sget-object v6, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_76
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_7a
    iget-object v6, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_7f
    return-object v0
.end method

.method loadOverlayDrawable(Landroid/content/res/MiuiResources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .registers 13

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-boolean v5, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v5, :cond_12

    iget-object v5, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_13

    :cond_12
    return-object v8

    :cond_13
    new-instance v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    invoke-direct {v2, p2, v7}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->isPreloading()Z

    move-result v5

    if-eqz v5, :cond_20

    iput-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    :cond_20
    invoke-direct {p0, v2}, Landroid/content/res/MiuiResourcesImpl;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v4

    if-eqz v4, :cond_55

    :try_start_26
    iget v5, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v5, p2, Landroid/util/TypedValue;->density:I

    iget-object v3, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    iget-object v5, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string/jumbo v6, ".9.png"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static {v3}, Lmiui/content/res/SimulateNinePngUtil;->convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    :cond_3b
    iget-object v5, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {p1, p2, v3, v5}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_40
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26 .. :try_end_40} :catch_47
    .catchall {:try_start_26 .. :try_end_40} :catchall_4e

    move-result-object v5

    :try_start_41
    iget-object v6, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_46} :catch_67

    :goto_46
    return-object v5

    :catch_47
    move-exception v1

    :try_start_48
    iget-object v5, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_65

    :goto_4d
    return-object v8

    :catchall_4e
    move-exception v5

    :try_start_4f
    iget-object v6, v2, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_63

    :goto_54
    throw v5

    :cond_55
    iget-object v5, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :catch_63
    move-exception v0

    goto :goto_54

    :catch_65
    move-exception v0

    goto :goto_4d

    :catch_67
    move-exception v0

    goto :goto_46
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .registers 9

    const/4 v6, 0x0

    sget-boolean v5, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v5, :cond_6

    return-object v6

    :cond_6
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    iget-object v5, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    if-eqz v5, :cond_17

    iget-object v5, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v5, v5, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_18

    :cond_17
    return-object p1

    :cond_18
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    const/4 v2, 0x0

    :goto_1b
    array-length v5, v0

    if-ge v2, v5, :cond_43

    add-int/lit8 v5, v2, 0x0

    aget v4, v0, v5

    add-int/lit8 v5, v2, 0x3

    aget v1, v0, v5

    const/16 v5, 0x10

    if-lt v4, v5, :cond_3f

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_3f

    :goto_2e
    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResourcesImpl;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3c

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    :cond_3c
    add-int/lit8 v2, v2, 0x6

    goto :goto_1b

    :cond_3f
    const/4 v5, 0x5

    if-ne v4, v5, :cond_3c

    goto :goto_2e

    :cond_43
    return-object p1
.end method

.method loadOverlayValue(Landroid/util/TypedValue;I)V
    .registers 3

    invoke-direct {p0, p2, p1}, Landroid/content/res/MiuiResourcesImpl;->resolveOverlayValue(ILandroid/util/TypedValue;)V

    return-void
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .registers 7

    const/4 v3, 0x1

    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_35

    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_35

    invoke-super {p0, p1, p2, v3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    invoke-direct {v0, p2, v3}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v1, p2, Landroid/util/TypedValue;->density:I

    iget-object v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    return-object v1

    :cond_28
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    invoke-super {p0, p1, p2}, Landroid/content/res/ResourcesImpl;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method protected reset()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .registers 12

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    :goto_a
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    sget-boolean v1, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v1, :cond_14

    return-void

    :cond_12
    const/4 v0, 0x0

    goto :goto_a

    :cond_14
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    if-eqz v1, :cond_60

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_1f

    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    :cond_1f
    iget-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    invoke-static {v0}, Landroid/content/res/MiuiConfiguration;->needNewResources(I)Z

    move-result v1

    if-eqz v1, :cond_53

    sget-object v4, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    monitor-enter v4

    :try_start_2a
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->checkUpdate()J

    move-result-wide v2

    sget-object v1, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-gez v1, :cond_48

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-static {}, Landroid/content/res/MiuiResourcesImpl;->delayGCAtlasPreloadedBitmaps()V

    invoke-static {}, Landroid/content/res/Resources;->clearPreloadedCache()V
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_61

    :cond_48
    monitor-exit v4

    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_53
    iget-wide v4, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_5d

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_64

    :cond_5d
    :goto_5d
    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->reset()V

    :cond_60
    return-void

    :catchall_61
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_64
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_60

    goto :goto_5d
.end method
