.class Lmiui/maml/ScreenElementRoot$ExtraResource;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraResource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;,
        Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;,
        Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    }
.end annotation


# instance fields
.field private mResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private mScales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lmiui/maml/ScreenElementRoot$ExtraResource;->parseSizeType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;I)V
    .registers 9

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    new-instance v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    invoke-direct {v0, p0}, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    iput p2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    invoke-static {p2}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x1e0

    div-int/lit16 v2, v2, 0xf0

    iput v2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScreenWidth:I

    iput v5, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mSizeType:I

    const/4 v2, 0x0

    iput-object v2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string/jumbo v3, "extraResourcesDensity"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string/jumbo v3, "extraResourcesScreenWidth"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string/jumbo v3, "extraResources"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    new-instance v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    invoke-direct {v1, p0}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    iput p2, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    invoke-static {p2}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x1e0

    div-int/lit16 v2, v2, 0xf0

    iput v2, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    iput v5, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string/jumbo v3, "extraScaleByDensity"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string/jumbo v3, "extraScaleByScreenWidth"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string/jumbo v3, "extraScales"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    return-void
.end method

.method private inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;",
            "Ljava/lang/String;",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_53

    const-string/jumbo v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    array-length v4, v1

    :goto_f
    if-ge v3, v4, :cond_53

    aget-object v2, v1, v3

    :try_start_13
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    if-ne p1, v5, :cond_26

    new-instance v5, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, p3}, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_26
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    if-ne p1, v5, :cond_23

    new-instance v5, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, p3}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_36} :catch_37

    goto :goto_23

    :catch_37
    move-exception v0

    const-string/jumbo v5, "ScreenElementRoot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "format error of attribute: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_53
    return-void
.end method

.method private static parseSizeType(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    const-string/jumbo v1, "small"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_b
    :goto_b
    return v0

    :cond_c
    const-string/jumbo v1, "normal"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x2

    goto :goto_b

    :cond_17
    const-string/jumbo v1, "large"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x3

    goto :goto_b

    :cond_22
    const-string/jumbo v1, "xlarge"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x4

    goto :goto_b
.end method


# virtual methods
.method findMetrics(IIILjava/util/ArrayList;)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;)",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;"
        }
    .end annotation

    const/4 v7, 0x0

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-eqz v8, :cond_24

    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-ne v8, p3, :cond_10

    :cond_24
    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    sub-int v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v5, :cond_3e

    move v5, v1

    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    sub-int v8, p2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_3e
    if-ne v1, v5, :cond_10

    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    sub-int v8, p2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v6, :cond_52

    move v6, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_52
    if-ne v2, v6, :cond_10

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_58
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5c
    :goto_5c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-ne v8, p3, :cond_6e

    move-object v7, v3

    :cond_6d
    return-object v7

    :cond_6e
    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-nez v8, :cond_5c

    move-object v7, v3

    goto :goto_5c
.end method

.method public findResource(III)Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    .registers 5

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    return-object v0
.end method

.method public findScale(III)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .registers 5

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object v0

    return-object v0
.end method
