.class public Landroid/content/res/ResourcesImpl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourcesImpl$LookupStack;,
        Landroid/content/res/ResourcesImpl$ThemeImpl;
    }
.end annotation


# static fields
.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final ID_OTHER:I = 0x1000004

.field static final TAG:Ljava/lang/String; = "Resources"

.field static final TAG_PRELOAD:Ljava/lang/String; = "Resources.preload"

.field public static final TRACE_FOR_DETAILED_PRELOAD:Z

.field private static final TRACE_FOR_MISS_PRELOAD:Z = false

.field private static final TRACE_FOR_PRELOAD:Z = false

.field private static final XML_BLOCK_CACHE_SIZE:I = 0x4

.field private static final sCachedDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreloadTracingNumLoadedDrawables:I

.field private static sPreloaded:Z

.field private static final sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedComplexColors:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/content/res/ComplexColor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPreloadedDrawables:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mAccessLock:Ljava/lang/Object;

.field private final mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final mAssets:Landroid/content/res/AssetManager;

.field private final mCachedXmlBlockCookies:[I

.field private final mCachedXmlBlockFiles:[Ljava/lang/String;

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private mCaching:Z

.field private final mColorDrawableCache:Landroid/content/res/DrawableCache;

.field private final mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDrawableCache:Landroid/content/res/DrawableCache;

.field private mLastCachedXmlBlockIndex:I

.field private final mLookupStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/content/res/ResourcesImpl$LookupStack;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mPluralRule:Landroid/icu/text/PluralRules;

.field private mPreloadTracingPreloadStartTime:J

.field private mPreloadTracingStartBitmapCount:J

.field private mPreloadTracingStartBitmapSize:J

.field private mPreloading:Z

.field private final mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpConfig:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-string/jumbo v0, "debug.trace_resource_preload"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sCachedDrawables:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/LongSparseArray;

    sput-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    aput-object v1, v0, v2

    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V
    .registers 7

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0}, Landroid/content/res/DrawableCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    sget-object v0, Landroid/content/res/-$Lambda$s0O-nf1GRGlu9U9Grxb4QL6yOfw;->$INST$0:Landroid/content/res/-$Lambda$s0O-nf1GRGlu9U9Grxb4QL6yOfw;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    new-array v0, v1, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iput-object p1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    iput-object p4, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    invoke-virtual {p4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    invoke-virtual {p0, p3, p2, v0}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->ensureStringBlocks()[Landroid/content/res/StringBlock;

    return-void
.end method

.method private static adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_23

    move-object v0, p0

    const-string/jumbo v1, ""

    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/util/Locale;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_23
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method private static attrForQuantityCode(Ljava/lang/String;)I
    .registers 2

    const-string/jumbo v0, "zero"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x1000005

    return v0

    :cond_d
    const-string/jumbo v0, "one"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x1000006

    return v0

    :cond_1a
    const-string/jumbo v0, "two"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const v0, 0x1000007

    return v0

    :cond_27
    const-string/jumbo v0, "few"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const v0, 0x1000008

    return v0

    :cond_34
    const-string/jumbo v0, "many"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const v0, 0x1000009

    return v0

    :cond_41
    const v0, 0x1000004

    return v0
.end method

.method private cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V
    .registers 17

    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_7

    return-void

    :cond_7
    iget-boolean v1, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v1, :cond_53

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    if-eqz p2, :cond_23

    iget v1, p1, Landroid/util/TypedValue;->resourceId:I

    const-string/jumbo v2, "drawable"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget v1, p1, Landroid/util/TypedValue;->resourceId:I

    const-string/jumbo v2, "drawable"

    const/16 v3, 0x2000

    invoke-direct {p0, v0, v3, v1, v2}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    and-int/lit16 v1, v0, 0x2000

    if-nez v1, :cond_45

    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_22

    :cond_45
    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_22

    :cond_53
    iget-object v7, p0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    monitor-enter v7

    move-object v1, p3

    move-wide v2, p6

    move-object v4, p4

    move v6, p5

    :try_start_5a
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    iget-boolean v1, p0, Landroid/content/res/ResourcesImpl;->mCaching:Z

    if-eqz v1, :cond_6a

    xor-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_6a

    sget-object v1, Landroid/content/res/ResourcesImpl;->sCachedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_6c

    :cond_6a
    monitor-exit v7

    goto :goto_22

    :catchall_6c
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method static clearPreloadedCache()V
    .registers 2

    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method protected static createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p4, p5}, Landroid/content/res/Resources;->loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method private getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;
    .registers 10

    sget-object v2, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ConstantState;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    return-object v2

    :cond_11
    iget v2, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-boolean v2, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v2, :cond_32

    iget v2, p1, Landroid/util/TypedValue;->changingConfigurations:I

    iget v3, p1, Landroid/util/TypedValue;->resourceId:I

    const-string/jumbo v4, "color"

    const/4 v5, 0x0

    invoke-direct {p0, v2, v5, v3, v4}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    sget-object v2, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v3

    invoke-virtual {v2, p2, p3, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_32
    return-object v0
.end method

.method private getPluralRule()Landroid/icu/text/PluralRules;
    .registers 4

    sget-object v1, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    :cond_18
    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic lambda$-android_content_res_ResourcesImpl_5444()Landroid/content/res/ResourcesImpl$LookupStack;
    .registers 2

    new-instance v0, Landroid/content/res/ResourcesImpl$LookupStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/res/ResourcesImpl$LookupStack;-><init>(Landroid/content/res/ResourcesImpl$LookupStack;)V

    return-object v0
.end method

.method private loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .registers 16

    iget-object v8, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v8, :cond_20

    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t convert to ComplexColor: type=0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Landroid/util/TypedValue;->type:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_20
    iget-object v8, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const-wide/16 v8, 0x2000

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string/jumbo v8, ".xml"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b2

    :try_start_35
    iget v8, p2, Landroid/util/TypedValue;->assetCookie:I

    const-string/jumbo v9, "ComplexColor"

    invoke-virtual {p0, v3, p3, v8, v9}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :cond_42
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4c

    const/4 v8, 0x1

    if-ne v7, v8, :cond_42

    :cond_4c
    const/4 v8, 0x2

    if-eq v7, v8, :cond_8a

    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v9, "No start tag found"

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_58} :catch_58

    :catch_58
    move-exception v2

    const-wide/16 v8, 0x2000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from ComplexColor resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v6

    :cond_8a
    :try_start_8a
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "gradient"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a4

    invoke-static {p1, v5, v0, p4}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object v1

    :cond_9b
    :goto_9b
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9e} :catch_58

    const-wide/16 v8, 0x2000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :cond_a4
    :try_start_a4
    const-string/jumbo v8, "selector"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9b

    invoke-static {p1, v5, v0, p4}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b0} :catch_58

    move-result-object v1

    goto :goto_9b

    :cond_b2
    const-wide/16 v8, 0x2000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " from drawable resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": .xml extension required"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;
    .registers 15

    iget v3, p3, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v6, v3

    const/16 v3, 0x20

    shl-long/2addr v6, v3

    iget v3, p3, Landroid/util/TypedValue;->data:I

    int-to-long v8, v3

    or-long v4, v6, v8

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-virtual {v0, v4, v5, p1, p2}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ComplexColor;

    if-eqz v1, :cond_16

    return-object v1

    :cond_16
    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ConstantState;

    if-eqz v2, :cond_26

    invoke-virtual {v2, p1, p2}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ComplexColor;

    :cond_26
    if-nez v1, :cond_2c

    invoke-direct {p0, p1, p3, p4, p2}, Landroid/content/res/ResourcesImpl;->loadComplexColorForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v1

    :cond_2c
    if-eqz v1, :cond_50

    iget v3, p3, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v3}, Landroid/content/res/ComplexColor;->setBaseChangingConfigurations(I)V

    iget-boolean v3, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v3, :cond_51

    invoke-virtual {v1}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v3

    iget v6, p3, Landroid/util/TypedValue;->resourceId:I

    const-string/jumbo v7, "color"

    const/4 v8, 0x0

    invoke-direct {p0, v3, v8, v6, v7}, Landroid/content/res/ResourcesImpl;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    sget-object v3, Landroid/content/res/ResourcesImpl;->sPreloadedComplexColors:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_50
    :goto_50
    return-object v1

    :cond_51
    invoke-virtual {v1}, Landroid/content/res/ComplexColor;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v3

    invoke-virtual {v0, v4, v5, p2, v3}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    goto :goto_50
.end method

.method private loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 36

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v2, :cond_44

    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Resource \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") is not a Drawable (color or path): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_44
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v24, 0x0

    const/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v21, 0x0

    sget-boolean v2, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v2, :cond_62

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    sget v20, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    sget-wide v22, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    sget v21, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    :cond_62
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mLookupStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/res/ResourcesImpl$LookupStack;

    :try_start_71
    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/ResourcesImpl$LookupStack;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_ba

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v4, "Recursive reference in drawable"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_84} :catch_84

    :catch_84
    move-exception v11

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v18, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " from drawable resource ID #0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v18

    :cond_ba
    :try_start_ba
    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/ResourcesImpl$LookupStack;->push(I)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c1} :catch_84

    :try_start_c1
    const-string/jumbo v2, ".xml"

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a4

    move-object/from16 v0, p2

    iget v2, v0, Landroid/util/TypedValue;->assetCookie:I

    const-string/jumbo v4, "drawable"

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1, v2, v4}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    move-object/from16 v2, p1

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Landroid/content/res/ResourcesImpl;->createFromXmlForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_ea
    .catchall {:try_start_c1 .. :try_end_ea} :catchall_1c2

    :goto_ea
    :try_start_ea
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ed} :catch_84

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    sget-boolean v2, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v2, :cond_1a3

    ushr-int/lit8 v2, p3, 0x18

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1a3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v26, v4, v24

    sget v2, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    sub-int v13, v2, v20

    sget-wide v4, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    sub-long v14, v4, v22

    sget v2, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    sub-int v16, v2, v21

    sget v2, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/content/res/ResourcesImpl;->sPreloadTracingNumLoadedDrawables:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-nez v2, :cond_1c7

    const/4 v12, 0x1

    :goto_124
    const-string/jumbo v4, "Resources.preload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v12, :cond_1ca

    const-string/jumbo v2, "Preloaded FW drawable #"

    :goto_131
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " #nested_drawables= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " #bitmaps= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " total_bitmap_size= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " in[us] "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v28, 0x3e8

    div-long v28, v26, v28

    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a3
    return-object v10

    :cond_1a4
    :try_start_1a4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p2

    iget v4, v0, Landroid/util/TypedValue;->assetCookie:I

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v8, v5}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/res/ResourcesImpl;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1c0
    .catchall {:try_start_1a4 .. :try_end_1c0} :catchall_1c2

    goto/16 :goto_ea

    :catchall_1c2
    move-exception v2

    :try_start_1c3
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/ResourcesImpl$LookupStack;->pop()V

    throw v2
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1c7} :catch_84

    :cond_1c7
    const/4 v12, 0x0

    goto/16 :goto_124

    :cond_1ca
    const-string/jumbo v2, "Loaded non-preloaded FW drawable #"

    goto/16 :goto_131
.end method

.method private verifyPreloadConfig(IIILjava/lang/String;)Z
    .registers 11

    const/4 v5, 0x0

    const v2, -0x40001001    # -1.9995116f

    and-int/2addr v2, p1

    not-int v3, p2

    and-int/2addr v2, v3

    if-eqz v2, :cond_4e

    :try_start_9
    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_c} :catch_49

    move-result-object v1

    :goto_d
    const-string/jumbo v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Preloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resource #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") that varies with configuration!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_49
    move-exception v0

    const-string/jumbo v1, "?"

    goto :goto_d

    :cond_4e
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public calcConfigChanges(Landroid/content/res/Configuration;)I
    .registers 5

    if-nez p1, :cond_4

    const/4 v1, -0x1

    return v1

    :cond_4
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-nez v0, :cond_11

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    :cond_11
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_31
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    return v1
.end method

.method createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p5}, Landroid/content/res/Resources;->loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {p1, p2, p3, p4, v1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method finishPreloading()V
    .registers 11

    iget-boolean v6, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-eqz v6, :cond_5a

    sget-boolean v6, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v6, :cond_54

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingPreloadStartTime:J

    sub-long v4, v6, v8

    sget-wide v6, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    iget-wide v8, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapSize:J

    sub-long v2, v6, v8

    sget v6, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    int-to-long v6, v6

    iget-wide v8, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapCount:J

    sub-long v0, v6, v8

    const-string/jumbo v6, "Resources.preload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Preload finished, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " bitmaps of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " bytes in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    :cond_5a
    return-void
.end method

.method public flushLayoutCache()V
    .registers 7

    iget-object v4, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([II)V

    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    const/4 v1, 0x0

    :goto_12
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1f

    aget-object v2, v0, v1

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1f
    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    monitor-exit v4

    return-void

    :catchall_25
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .registers 2

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .registers 2

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 2

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "name is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :try_start_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_10

    move-result v1

    return v1

    :catch_10
    move-exception v0

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method getPreloadedDrawable(Landroid/content/res/Resources;JI)Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 9

    sget-object v1, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v0, :cond_21

    sget-object v1, Landroid/content/res/ResourcesImpl;->sCachedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_21

    sget-object v1, Landroid/content/res/ResourcesImpl;->sCachedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_21
    if-eqz v0, :cond_2a

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->isPreloadOverlayed(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v0, 0x0

    :cond_2a
    return-object v0
.end method

.method getPreloadedDrawables()Landroid/util/LongSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/content/res/ResourcesImpl;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method getQuantityText(II)Ljava/lang/CharSequence;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/res/ResourcesImpl;->getPluralRule()Landroid/icu/text/PluralRules;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    int-to-double v4, p2

    invoke-virtual {v1, v4, v5}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/res/ResourcesImpl;->attrForQuantityCode(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_16

    return-object v0

    :cond_16
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const v3, 0x1000004

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_22

    return-object v0

    :cond_22
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Plural resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " quantity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-double v4, p2

    invoke-virtual {v1, v4, v5}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getResourceEntryName(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResourceName(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResourcePackageName(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResourceTypeName(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getSizeConfigurations()[Landroid/content/res/Configuration;
    .registers 2

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method getValue(ILandroid/util/TypedValue;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string/jumbo v1, "string"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    return-void

    :cond_e
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getValueForDensity(IILandroid/util/TypedValue;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method isPreloading()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    return v0
.end method

.method loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    iget v1, p2, Landroid/util/TypedValue;->data:I

    int-to-long v6, v1

    or-long v2, v4, v6

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v1, v4, :cond_1c

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v1, v4, :cond_1c

    invoke-direct {p0, p2, v2, v3}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    :cond_1c
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;

    move-result-object v0

    if-eqz v0, :cond_29

    instance-of v1, v0, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_29

    check-cast v0, Landroid/content/res/ColorStateList;

    return-object v0

    :cond_29
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t find ColorStateList from drawable resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method loadComplexColor(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .registers 15

    iget v6, p2, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    iget v8, p2, Landroid/util/TypedValue;->data:I

    int-to-long v8, v8

    or-long v4, v6, v8

    iget v6, p2, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_1c

    iget v6, p2, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_1c

    invoke-direct {p0, p2, v4, v5}, Landroid/content/res/ResourcesImpl;->getColorStateListFromInt(Landroid/util/TypedValue;J)Landroid/content/res/ColorStateList;

    move-result-object v6

    return-object v6

    :cond_1c
    iget-object v6, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, ".xml"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5d

    :try_start_2b
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColorFromName(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/TypedValue;I)Landroid/content/res/ComplexColor;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_30

    move-result-object v0

    return-object v0

    :catch_30
    move-exception v1

    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from complex color resource ID #0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :cond_5d
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " from drawable resource ID #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": .xml extension required"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    if-eqz p4, :cond_e

    move-object/from16 v0, p2

    iget v4, v0, Landroid/util/TypedValue;->density:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v4, v5, :cond_68

    :cond_e
    const/16 v23, 0x1

    :goto_10
    if-lez p4, :cond_33

    move-object/from16 v0, p2

    iget v4, v0, Landroid/util/TypedValue;->density:I

    if-lez v4, :cond_33

    move-object/from16 v0, p2

    iget v4, v0, Landroid/util/TypedValue;->density:I

    const v5, 0xffff

    if-eq v4, v5, :cond_33

    move-object/from16 v0, p2

    iget v4, v0, Landroid/util/TypedValue;->density:I

    move/from16 v0, p4

    if-ne v4, v0, :cond_6b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    move-object/from16 v0, p2

    iput v4, v0, Landroid/util/TypedValue;->density:I

    :cond_33
    :goto_33
    :try_start_33
    move-object/from16 v0, p2

    iget v4, v0, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_7d

    move-object/from16 v0, p2

    iget v4, v0, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_7d

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    move-object/from16 v0, p2

    iget v4, v0, Landroid/util/TypedValue;->data:I

    int-to-long v10, v4

    :goto_4e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    if-nez v4, :cond_93

    if-eqz v23, :cond_93

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v14, v10, v11, v0, v1}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_93

    move-object/from16 v0, p2

    iget v4, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v13, v4}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_67} :catch_159

    return-object v13

    :cond_68
    const/16 v23, 0x0

    goto :goto_10

    :cond_6b
    move-object/from16 v0, p2

    iget v4, v0, Landroid/util/TypedValue;->density:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v4, v5

    div-int v4, v4, p4

    move-object/from16 v0, p2

    iput v4, v0, Landroid/util/TypedValue;->density:I

    goto :goto_33

    :cond_7d
    const/16 v18, 0x0

    :try_start_7f
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    move-object/from16 v0, p2

    iget v4, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    move-object/from16 v0, p2

    iget v6, v0, Landroid/util/TypedValue;->data:I

    int-to-long v6, v6

    or-long v10, v4, v6

    goto :goto_4e

    :cond_93
    if-eqz v18, :cond_12f

    sget-object v4, Landroid/content/res/ResourcesImpl;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/Drawable$ConstantState;

    :goto_9d
    const/16 v20, 0x0

    if-eqz v15, :cond_13b

    sget-boolean v4, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v4, :cond_e5

    ushr-int/lit8 v4, p3, 0x18

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eqz v4, :cond_e5

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_e5

    const-string/jumbo v4, "Resources.preload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hit preloaded FW drawable #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e5
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :goto_eb
    instance-of v4, v12, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v4, :cond_f1

    const/16 v20, 0x1

    :cond_f1
    if-eqz v12, :cond_157

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v9

    :goto_f7
    if-eqz v9, :cond_107

    if-eqz p5, :cond_107

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    :cond_107
    if-eqz v12, :cond_12e

    move-object/from16 v0, p2

    iget v4, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    if-eqz v23, :cond_12e

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v6, v18

    move-object v7, v14

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v12}, Landroid/content/res/ResourcesImpl;->cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V

    if-eqz v20, :cond_12e

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v22

    if-eqz v22, :cond_12e

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    :cond_12e
    return-object v12

    :cond_12f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/content/res/ResourcesImpl;->getPreloadedDrawable(Landroid/content/res/Resources;JI)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v15

    goto/16 :goto_9d

    :cond_13b
    if-eqz v18, :cond_147

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p2

    iget v4, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v12, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_eb

    :cond_147
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/content/res/ResourcesImpl;->loadDrawableForCookie(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_155} :catch_159

    move-result-object v12

    goto :goto_eb

    :cond_157
    const/4 v9, 0x0

    goto :goto_f7

    :catch_159
    move-exception v16

    :try_start_15a
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;
    :try_end_161
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15a .. :try_end_161} :catch_199

    move-result-object v19

    :goto_162
    new-instance v21, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Drawable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/StackTraceElement;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$NotFoundException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw v21

    :catch_199
    move-exception v17

    const-string/jumbo v19, "(missing name)"

    goto :goto_162
.end method

.method public loadFont(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/Typeface;
    .registers 16

    const/4 v9, 0x0

    const-wide/16 v10, 0x2000

    iget-object v6, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v6, :cond_3f

    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Resource \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p3}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\" ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") is not a Font: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3f
    iget-object v6, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "res/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4f

    return-object v9

    :cond_4f
    iget-object v6, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {v6, v4}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_58

    return-object v0

    :cond_58
    invoke-static {v10, v11, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_5b
    const-string/jumbo v6, "xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_81

    iget v6, p2, Landroid/util/TypedValue;->assetCookie:I

    const-string/jumbo v7, "font"

    invoke-virtual {p0, v4, p3, v6, v7}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/content/res/FontResourcesParser;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    :try_end_70
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5b .. :try_end_70} :catch_ac
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_70} :catch_8d
    .catchall {:try_start_5b .. :try_end_70} :catchall_cb

    move-result-object v3

    if-nez v3, :cond_77

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v9

    :cond_77
    :try_start_77
    iget-object v6, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {v3, v6, v4}, Landroid/graphics/Typeface;->createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_77 .. :try_end_7c} :catch_ac
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7c} :catch_8d
    .catchall {:try_start_77 .. :try_end_7c} :catchall_cb

    move-result-object v6

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :cond_81
    :try_start_81
    iget-object v6, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v7, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-static {v6, v4, v7}, Landroid/graphics/Typeface;->createFromResources(Landroid/content/res/AssetManager;Ljava/lang/String;I)Landroid/graphics/Typeface;
    :try_end_88
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_88} :catch_ac
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_88} :catch_8d
    .catchall {:try_start_81 .. :try_end_88} :catchall_cb

    move-result-object v6

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :catch_8d
    move-exception v1

    :try_start_8e
    const-string/jumbo v6, "Resources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to read xml resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catchall {:try_start_8e .. :try_end_a8} :catchall_cb

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :goto_ab
    return-object v9

    :catch_ac
    move-exception v2

    :try_start_ad
    const-string/jumbo v6, "Resources"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse xml resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c7
    .catchall {:try_start_ad .. :try_end_c7} :catchall_cb

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_ab

    :catchall_cb
    move-exception v6

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v6
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_52

    :try_start_2
    iget-object v12, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    monitor-enter v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8b

    :try_start_5
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockCookies:[I

    iget-object v3, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlockFiles:[Ljava/lang/String;

    iget-object v4, p0, Landroid/content/res/ResourcesImpl;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    array-length v7, v3

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v7, :cond_2c

    aget v11, v2, v6

    move/from16 v0, p3

    if-ne v11, v0, :cond_29

    aget-object v11, v3, v6

    if-eqz v11, :cond_29

    aget-object v11, v3, v6

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29

    aget-object v11, v4, v6

    invoke-virtual {v11}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_88

    move-result-object v11

    :try_start_27
    monitor-exit v12
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_28} :catch_8b

    return-object v11

    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_2c
    :try_start_2c
    iget-object v11, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    move/from16 v0, p3

    invoke-virtual {v11, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v1

    if-eqz v1, :cond_51

    iget v11, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v11, v11, 0x1

    rem-int v9, v11, v7

    iput v9, p0, Landroid/content/res/ResourcesImpl;->mLastCachedXmlBlockIndex:I

    aget-object v8, v4, v9

    if-eqz v8, :cond_45

    invoke-virtual {v8}, Landroid/content/res/XmlBlock;->close()V

    :cond_45
    aput p3, v2, v9

    aput-object p1, v3, v9

    aput-object v1, v4, v9

    invoke-virtual {v1}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;
    :try_end_4e
    .catchall {:try_start_2c .. :try_end_4e} :catchall_88

    move-result-object v11

    :try_start_4f
    monitor-exit v12

    return-object v11

    :cond_51
    monitor-exit v12
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_8b

    :cond_52
    new-instance v11, Landroid/content/res/Resources$NotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "File "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " from xml type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " resource ID #0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    :catchall_88
    move-exception v11

    :try_start_89
    monitor-exit v12

    throw v11
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8b} :catch_8b

    :catch_8b
    move-exception v5

    new-instance v10, Landroid/content/res/Resources$NotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "File "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " from xml type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " resource ID #0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v10
.end method

.method newThemeImpl()Landroid/content/res/ResourcesImpl$ThemeImpl;
    .registers 2

    new-instance v0, Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-direct {v0, p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    return-object v0
.end method

.method newThemeImpl(Landroid/content/res/Resources$ThemeKey;)Landroid/content/res/ResourcesImpl$ThemeImpl;
    .registers 4

    new-instance v0, Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-direct {v0, p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;-><init>(Landroid/content/res/ResourcesImpl;)V

    invoke-static {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->-get0(Landroid/content/res/ResourcesImpl$ThemeImpl;)Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase()V

    return-object v0
.end method

.method openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    :try_start_4
    iget-object v2, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_14

    move-result-object v2

    return-object v2

    :catch_14
    move-exception v0

    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v2, :cond_48

    const-string/jumbo v2, "(null)"

    :goto_2a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_48
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a
.end method

.method openRawResourceFd(ILandroid/util/TypedValue;)Landroid/content/res/AssetFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    :try_start_4
    iget-object v1, p0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iget v2, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_13

    move-result-object v1

    return-object v1

    :catch_13
    move-exception v0

    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from drawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final startPreloading()V
    .registers 5

    sget-object v1, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Resources already preloaded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_13
    const/4 v0, 0x1

    :try_start_14
    sput-boolean v0, Landroid/content/res/ResourcesImpl;->sPreloaded:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/ResourcesImpl;->mPreloading:Z

    iget-object v0, p0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    sget-boolean v0, Landroid/content/res/ResourcesImpl;->TRACE_FOR_DETAILED_PRELOAD:Z

    if-eqz v0, :cond_41

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingPreloadStartTime:J

    sget-wide v2, Landroid/graphics/Bitmap;->sPreloadTracingTotalBitmapsSize:J

    iput-wide v2, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapSize:J

    sget v0, Landroid/graphics/Bitmap;->sPreloadTracingNumInstantiatedBitmaps:I

    int-to-long v2, v0

    iput-wide v2, p0, Landroid/content/res/ResourcesImpl;->mPreloadTracingStartBitmapCount:J

    const-string/jumbo v0, "Resources.preload"

    const-string/jumbo v2, "Preload starting"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_10

    :cond_41
    monitor-exit v1

    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .registers 30

    const-string/jumbo v2, "ResourcesImpl#updateConfiguration"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mAccessLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_20a

    if-eqz p3, :cond_1a

    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    :cond_1a
    if-eqz p2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual/range {p0 .. p1}, Landroid/content/res/ResourcesImpl;->calcConfigChanges(Landroid/content/res/Configuration;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_53
    and-int/lit8 v2, v23, 0x4

    if-eqz v2, :cond_a3

    invoke-virtual/range {v24 .. v24}, Landroid/os/LocaleList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_a3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getNonSystemLocales()[Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/os/LocaleList;->isPseudoLocalesOnly([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    const/16 v21, 0x0

    :cond_7c
    if-eqz v21, :cond_a3

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->getFirstMatchWithEnglishSupported([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v22

    if-eqz v22, :cond_a3

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    move-object/from16 v0, v22

    if-eq v0, v2, :cond_a3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v3, Landroid/os/LocaleList;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v3, v0, v1}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_a3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_c8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const v4, 0x3bcccccd    # 0.00625f

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    :cond_c8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_1ed

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    :goto_e3
    mul-float/2addr v2, v4

    iput v2, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_1f1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_100
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1ff

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1ff

    const/4 v10, 0x3

    :goto_113
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->mnc:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/res/ResourcesImpl;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->touchscreen:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->keyboard:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->navigation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v15, v15, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->colorMode:I

    move/from16 v19, v0

    sget v20, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v2 .. v20}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mDrawableCache:Landroid/content/res/DrawableCache;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mComplexColorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V
    :try_end_1c7
    .catchall {:try_start_11 .. :try_end_1c7} :catchall_207

    :try_start_1c7
    monitor-exit v25

    sget-object v3, Landroid/content/res/ResourcesImpl;->sSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1cb
    .catchall {:try_start_1c7 .. :try_end_1cb} :catchall_20a

    :try_start_1cb
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;

    if-eqz v2, :cond_1e6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/PluralRules;->forLocale(Ljava/util/Locale;)Landroid/icu/text/PluralRules;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/res/ResourcesImpl;->mPluralRule:Landroid/icu/text/PluralRules;
    :try_end_1e6
    .catchall {:try_start_1cb .. :try_end_1e6} :catchall_211

    :cond_1e6
    :try_start_1e6
    monitor-exit v3
    :try_end_1e7
    .catchall {:try_start_1e6 .. :try_end_1e7} :catchall_20a

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1ed
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_e3

    :cond_1f1
    :try_start_1f1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto/16 :goto_100

    :cond_1ff
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/ResourcesImpl;->mConfiguration:Landroid/content/res/Configuration;

    iget v10, v2, Landroid/content/res/Configuration;->keyboardHidden:I
    :try_end_205
    .catchall {:try_start_1f1 .. :try_end_205} :catchall_207

    goto/16 :goto_113

    :catchall_207
    move-exception v2

    :try_start_208
    monitor-exit v25

    throw v2
    :try_end_20a
    .catchall {:try_start_208 .. :try_end_20a} :catchall_20a

    :catchall_20a
    move-exception v2

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    :catchall_211
    move-exception v2

    :try_start_212
    monitor-exit v3

    throw v2
    :try_end_214
    .catchall {:try_start_212 .. :try_end_214} :catchall_20a
.end method
