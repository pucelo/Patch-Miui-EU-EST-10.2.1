.class public Lcom/android/systemui/util/InterestingConfigChanges;
.super Ljava/lang/Object;
.source "InterestingConfigChanges.java"


# instance fields
.field private final mFlags:I

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastDensity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, -0x7ffffcfc

    invoke-direct {p0, v0}, Lcom/android/systemui/util/InterestingConfigChanges;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    iput p1, p0, Lcom/android/systemui/util/InterestingConfigChanges;->mFlags:I

    return-void
.end method


# virtual methods
.method public applyNewConfig(Landroid/content/res/Resources;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/util/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/util/InterestingConfigChanges;->mLastDensity:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    iget v2, p0, Lcom/android/systemui/util/InterestingConfigChanges;->mFlags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/android/systemui/util/InterestingConfigChanges;->mLastDensity:I

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return v4
.end method
