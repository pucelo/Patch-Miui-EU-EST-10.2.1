.class public Lcom/android/internal/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;
    .registers 2

    new-instance v0, Lcom/android/internal/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Lcom/android/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getEmbeddedMenuWidthLimit()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxActionButtons()I
    .registers 10

    const/16 v8, 0x3c0

    const/16 v7, 0x2d0

    const/16 v6, 0x280

    const/16 v5, 0x1e0

    iget-object v4, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-gt v2, v4, :cond_20

    if-le v3, v8, :cond_22

    if-le v1, v7, :cond_22

    :cond_20
    const/4 v4, 0x5

    return v4

    :cond_22
    if-le v3, v7, :cond_26

    if-gt v1, v8, :cond_20

    :cond_26
    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_2e

    if-le v3, v6, :cond_30

    if-le v1, v5, :cond_30

    :cond_2e
    const/4 v4, 0x4

    return v4

    :cond_30
    if-le v3, v5, :cond_34

    if-gt v1, v6, :cond_2e

    :cond_34
    const/16 v4, 0x168

    if-lt v3, v4, :cond_3a

    const/4 v4, 0x3

    return v4

    :cond_3a
    const/4 v4, 0x2

    return v4
.end method

.method public getStackedTabMaxWidth()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTabContainerHeight()I
    .registers 9

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    const/4 v5, 0x0

    const v6, 0x10102ce

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    if-nez v3, :cond_29

    const v3, 0x1050014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method public hasEmbeddedTabs()Z
    .registers 10

    const/16 v8, 0x1e0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x10

    if-lt v2, v6, :cond_1e

    iget-object v4, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    return v4

    :cond_1e
    iget-object v6, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_33

    if-lt v3, v8, :cond_34

    :cond_33
    :goto_33
    return v4

    :cond_34
    const/16 v6, 0x280

    if-lt v3, v6, :cond_3a

    if-ge v1, v8, :cond_33

    :cond_3a
    move v4, v5

    goto :goto_33
.end method

.method public showsOverflowMenuButton()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
