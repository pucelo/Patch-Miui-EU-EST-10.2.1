.class public Lmiui/maml/animation/AlphaAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "AlphaAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Alpha"

.field public static final TAG_NAME:Ljava/lang/String; = "AlphaAnimation"


# instance fields
.field private mDelayValue:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 9

    const/4 v5, 0x0

    const-string/jumbo v3, "Alpha"

    const-string/jumbo v4, "a"

    invoke-direct {p0, p1, v3, v4, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    const-string/jumbo v3, "delayValue"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    :try_start_17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lmiui/maml/animation/AlphaAnimation;->mDelayValue:I
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1d} :catch_2c

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {p0, v5}, Lmiui/maml/animation/AlphaAnimation;->getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v5}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lmiui/maml/animation/AlphaAnimation;->mDelayValue:I

    goto :goto_1d

    :catch_2c
    move-exception v2

    goto :goto_1d
.end method


# virtual methods
.method public final getAlpha()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/animation/AlphaAnimation;->getCurValue(I)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected getDefaultValue()D
    .registers 3

    const-wide v0, 0x406fe00000000000L    # 255.0

    return-wide v0
.end method

.method protected getDelayValue(I)D
    .registers 4

    iget v0, p0, Lmiui/maml/animation/AlphaAnimation;->mDelayValue:I

    int-to-double v0, v0

    return-wide v0
.end method
