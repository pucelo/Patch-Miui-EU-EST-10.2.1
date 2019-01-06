.class public Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
.super Ljava/lang/Object;
.source "ColorExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/ColorExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientColors"
.end annotation


# instance fields
.field private mMainColor:I

.field private mSecondaryColor:I

.field private mSupportsDarkText:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_e

    :cond_d
    return v1

    :cond_e
    move-object v0, p1

    check-cast v0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget v2, v0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    iget v3, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    if-ne v2, v3, :cond_24

    iget v2, v0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    iget v3, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    if-ne v2, v3, :cond_24

    iget-boolean v2, v0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    iget-boolean v3, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    if-ne v2, v3, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public getMainColor()I
    .registers 2

    iget v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    return v0
.end method

.method public getSecondaryColor()I
    .registers 2

    iget v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    add-int v0, v1, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    :goto_f
    add-int v0, v2, v1

    return v0

    :cond_12
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 3

    iget v0, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    iput v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    iget v0, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    iput v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    iget-boolean v0, p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    iput-boolean v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    return-void
.end method

.method public setMainColor(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    return-void
.end method

.method public setSecondaryColor(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    return-void
.end method

.method public setSupportsDarkText(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    return-void
.end method

.method public supportsDarkText()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSupportsDarkText:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GradientColors("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mMainColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->mSecondaryColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
