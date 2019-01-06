.class public Landroid/view/DisplayAdjustments;
.super Ljava/lang/Object;
.source "DisplayAdjustments.java"


# static fields
.field public static final DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;


# instance fields
.field private volatile mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    sput-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    new-instance v0, Landroid/content/res/Configuration;

    if-eqz p1, :cond_11

    :goto_b
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-void

    :cond_11
    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_b
.end method

.method public constructor <init>(Landroid/view/DisplayAdjustments;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v0, p1, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    new-instance v1, Landroid/content/res/Configuration;

    iget-object v0, p1, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1a

    iget-object v0, p1, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    :goto_14
    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-void

    :cond_1a
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_14
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/view/DisplayAdjustments;

    if-nez v2, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/view/DisplayAdjustments;

    iget-object v2, v0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v1, v0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_1b
    return v1
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .registers 2

    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    iget-object v1, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .registers 4

    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-ne p0, v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setCompatbilityInfo: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_20

    :cond_1d
    iput-object p1, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    :goto_1f
    return-void

    :cond_20
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    goto :goto_1f
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .registers 4

    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-ne p0, v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setConfiguration: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_15

    :goto_11
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void

    :cond_15
    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_11
.end method
