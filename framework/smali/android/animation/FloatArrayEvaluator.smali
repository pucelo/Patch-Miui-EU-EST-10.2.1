.class public Landroid/animation/FloatArrayEvaluator;
.super Ljava/lang/Object;
.source "FloatArrayEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[F>;"
    }
.end annotation


# instance fields
.field private mArray:[F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([F)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/animation/FloatArrayEvaluator;->mArray:[F

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p2, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/FloatArrayEvaluator;->evaluate(F[F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public evaluate(F[F[F)[F
    .registers 9

    iget-object v0, p0, Landroid/animation/FloatArrayEvaluator;->mArray:[F

    if-nez v0, :cond_7

    array-length v4, p2

    new-array v0, v4, [F

    :cond_7
    const/4 v2, 0x0

    :goto_8
    array-length v4, v0

    if-ge v2, v4, :cond_18

    aget v3, p2, v2

    aget v1, p3, v2

    sub-float v4, v1, v3

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    return-object v0
.end method
