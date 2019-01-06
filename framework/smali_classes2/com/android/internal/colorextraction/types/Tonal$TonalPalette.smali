.class Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
.super Ljava/lang/Object;
.source "Tonal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/types/Tonal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TonalPalette"
.end annotation


# instance fields
.field final h:[F

.field final l:[F

.field final maxHue:F

.field final minHue:F

.field final s:[F


# direct methods
.method constructor <init>([F[F[F)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v3, p1

    array-length v4, p2

    if-ne v3, v4, :cond_b

    array-length v3, p2

    array-length v4, p3

    if-eq v3, v4, :cond_47

    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "All arrays should have the same size. h: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " s: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_47
    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    iput-object p2, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    iput-object p3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v3, 0x0

    array-length v4, p1

    :goto_53
    if-ge v3, v4, :cond_62

    aget v2, p1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_62
    iput v1, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    iput v0, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    return-void
.end method
