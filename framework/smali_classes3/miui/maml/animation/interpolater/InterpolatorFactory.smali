.class public Lmiui/maml/animation/interpolater/InterpolatorFactory;
.super Ljava/lang/Object;
.source "InterpolatorFactory.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InterpolatorFactory"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .registers 16

    const/4 v14, 0x0

    const/4 v12, -0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    return-object v14

    :cond_9
    const/16 v11, 0x28

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v11, 0x29

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v6, v12, :cond_47

    if-eq v8, v12, :cond_47

    const/4 v4, 0x1

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    const-string/jumbo v10, ""

    const-string/jumbo v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v12, :cond_3d

    const/4 v5, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_3d
    :try_start_3d
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    if-eqz v5, :cond_47

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_46} :catch_56

    move-result v9

    :cond_47
    :goto_47
    const-string/jumbo v11, "BackEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_72

    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>()V

    return-object v11

    :catch_56
    move-exception v1

    const-string/jumbo v11, "InterpolatorFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "parse error:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_72
    const-string/jumbo v11, "BackEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_81

    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>()V

    return-object v11

    :cond_81
    const-string/jumbo v11, "BackEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_90

    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>()V

    return-object v11

    :cond_90
    const-string/jumbo v11, "BackEaseIn"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a1

    if-eqz v4, :cond_a1

    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;

    invoke-direct {v11, v2}, Lmiui/maml/animation/interpolater/BackEaseInInterpolater;-><init>(F)V

    return-object v11

    :cond_a1
    const-string/jumbo v11, "BackEaseOut"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b2

    if-eqz v4, :cond_b2

    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;

    invoke-direct {v11, v2}, Lmiui/maml/animation/interpolater/BackEaseOutInterpolater;-><init>(F)V

    return-object v11

    :cond_b2
    const-string/jumbo v11, "BackEaseInOut"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c3

    if-eqz v4, :cond_c3

    new-instance v11, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;

    invoke-direct {v11, v2}, Lmiui/maml/animation/interpolater/BackEaseInOutInterpolater;-><init>(F)V

    return-object v11

    :cond_c3
    const-string/jumbo v11, "BounceEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d2

    new-instance v11, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BounceEaseInInterpolater;-><init>()V

    return-object v11

    :cond_d2
    const-string/jumbo v11, "BounceEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e1

    new-instance v11, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BounceEaseOutInterpolater;-><init>()V

    return-object v11

    :cond_e1
    const-string/jumbo v11, "BounceEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f0

    new-instance v11, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/BounceEaseInOutInterpolater;-><init>()V

    return-object v11

    :cond_f0
    const-string/jumbo v11, "CircEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ff

    new-instance v11, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CircEaseInInterpolater;-><init>()V

    return-object v11

    :cond_ff
    const-string/jumbo v11, "CircEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10e

    new-instance v11, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CircEaseOutInterpolater;-><init>()V

    return-object v11

    :cond_10e
    const-string/jumbo v11, "CircEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11d

    new-instance v11, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CircEaseInOutInterpolater;-><init>()V

    return-object v11

    :cond_11d
    const-string/jumbo v11, "CubicEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12c

    new-instance v11, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CubicEaseInInterpolater;-><init>()V

    return-object v11

    :cond_12c
    const-string/jumbo v11, "CubicEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13b

    new-instance v11, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    return-object v11

    :cond_13b
    const-string/jumbo v11, "CubicEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14a

    new-instance v11, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/CubicEaseInOutInterpolater;-><init>()V

    return-object v11

    :cond_14a
    const-string/jumbo v11, "ElasticEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_159

    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>()V

    return-object v11

    :cond_159
    const-string/jumbo v11, "ElasticEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_168

    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>()V

    return-object v11

    :cond_168
    const-string/jumbo v11, "ElasticEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_177

    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>()V

    return-object v11

    :cond_177
    const-string/jumbo v11, "ElasticEaseIn"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_188

    if-eqz v5, :cond_188

    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;

    invoke-direct {v11, v2, v9}, Lmiui/maml/animation/interpolater/ElasticEaseInInterpolater;-><init>(FF)V

    return-object v11

    :cond_188
    const-string/jumbo v11, "ElasticEaseOut"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_199

    if-eqz v5, :cond_199

    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v11, v2, v9}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>(FF)V

    return-object v11

    :cond_199
    const-string/jumbo v11, "ElasticEaseInOut"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1aa

    if-eqz v5, :cond_1aa

    new-instance v11, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;

    invoke-direct {v11, v2, v9}, Lmiui/maml/animation/interpolater/ElasticEaseInOutInterpolater;-><init>(FF)V

    return-object v11

    :cond_1aa
    const-string/jumbo v11, "ExpoEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b9

    new-instance v11, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ExpoEaseInInterpolater;-><init>()V

    return-object v11

    :cond_1b9
    const-string/jumbo v11, "ExpoEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c8

    new-instance v11, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ExpoEaseOutInterpolater;-><init>()V

    return-object v11

    :cond_1c8
    const-string/jumbo v11, "ExpoEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d7

    new-instance v11, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/ExpoEaseInOutInterpolater;-><init>()V

    return-object v11

    :cond_1d7
    const-string/jumbo v11, "QuadEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e6

    new-instance v11, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuadEaseInInterpolater;-><init>()V

    return-object v11

    :cond_1e6
    const-string/jumbo v11, "QuadEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1f5

    new-instance v11, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuadEaseOutInterpolater;-><init>()V

    return-object v11

    :cond_1f5
    const-string/jumbo v11, "QuadEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_204

    new-instance v11, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuadEaseInOutInterpolater;-><init>()V

    return-object v11

    :cond_204
    const-string/jumbo v11, "QuartEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_213

    new-instance v11, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuartEaseInInterpolater;-><init>()V

    return-object v11

    :cond_213
    const-string/jumbo v11, "QuartEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_222

    new-instance v11, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    return-object v11

    :cond_222
    const-string/jumbo v11, "QuartEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_231

    new-instance v11, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    return-object v11

    :cond_231
    const-string/jumbo v11, "QuintEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_240

    new-instance v11, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuintEaseInInterpolater;-><init>()V

    return-object v11

    :cond_240
    const-string/jumbo v11, "QuintEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24f

    new-instance v11, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuintEaseOutInterpolater;-><init>()V

    return-object v11

    :cond_24f
    const-string/jumbo v11, "QuintEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_25e

    new-instance v11, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/QuintEaseInOutInterpolater;-><init>()V

    return-object v11

    :cond_25e
    const-string/jumbo v11, "SineEaseIn"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_26d

    new-instance v11, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/SineEaseInInterpolater;-><init>()V

    return-object v11

    :cond_26d
    const-string/jumbo v11, "SineEaseOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_27c

    new-instance v11, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/SineEaseOutInterpolater;-><init>()V

    return-object v11

    :cond_27c
    const-string/jumbo v11, "SineEaseInOut"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_28b

    new-instance v11, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    return-object v11

    :cond_28b
    const-string/jumbo v11, "Linear"

    invoke-virtual {v11, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_29a

    new-instance v11, Lmiui/maml/animation/interpolater/LinearInterpolater;

    invoke-direct {v11}, Lmiui/maml/animation/interpolater/LinearInterpolater;-><init>()V

    return-object v11

    :cond_29a
    return-object v14
.end method
