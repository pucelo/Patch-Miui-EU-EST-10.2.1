.class public Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;
.super Ljava/lang/Object;
.source "ElasticEaseOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mPriod:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    iput p2, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 12

    const/4 v3, 0x0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    const/high16 v4, 0x3f800000    # 1.0f

    iget v0, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    cmpl-float v2, p1, v3

    if-nez v2, :cond_f

    return v3

    :cond_f
    cmpl-float v2, p1, v4

    if-nez v2, :cond_14

    return v4

    :cond_14
    cmpg-float v2, v0, v4

    if-gez v2, :cond_3e

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    const/high16 v3, 0x40800000    # 4.0f

    div-float v1, v2, v3

    :goto_20
    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v6, -0x3ee00000    # -10.0f

    mul-float/2addr v6, p1

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-float v4, p1, v1

    float-to-double v4, v4

    mul-double/2addr v4, v8

    iget v6, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-float v2, v2

    return v2

    :cond_3e
    iget v2, p0, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    float-to-double v2, v2

    div-double/2addr v2, v8

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    goto :goto_20
.end method
