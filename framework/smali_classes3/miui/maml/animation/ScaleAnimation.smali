.class public Lmiui/maml/animation/ScaleAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "ScaleAnimation.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ScaleAnimation"


# instance fields
.field private mDelayValueX:D

.field private mDelayValueY:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 9

    const/4 v5, 0x0

    const-string/jumbo v1, "Item"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "value"

    aput-object v3, v2, v5

    const-string/jumbo v3, "x"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "y"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-direct {p0, p1, v1, v2, p2}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    invoke-virtual {p0, v5}, Lmiui/maml/animation/ScaleAnimation;->getItem(I)Lmiui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/animation/ScaleAnimation;->getItemX(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/ScaleAnimation;->mDelayValueX:D

    invoke-direct {p0, v0}, Lmiui/maml/animation/ScaleAnimation;->getItemY(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/animation/ScaleAnimation;->mDelayValueY:D

    return-void
.end method

.method private getItemX(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_5
    return-wide v0

    :cond_6
    invoke-virtual {p1, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_5

    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_5
.end method

.method private getItemY(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_5
    return-wide v0

    :cond_6
    invoke-virtual {p1, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1, v1}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_5

    :cond_11
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmiui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    goto :goto_5
.end method


# virtual methods
.method protected getDelayValue(I)D
    .registers 4

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    :cond_5
    iget-wide v0, p0, Lmiui/maml/animation/ScaleAnimation;->mDelayValueX:D

    :goto_7
    return-wide v0

    :cond_8
    iget-wide v0, p0, Lmiui/maml/animation/ScaleAnimation;->mDelayValueY:D

    goto :goto_7
.end method

.method public final getScaleX()D
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/animation/ScaleAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getScaleY()D
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmiui/maml/animation/ScaleAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method protected onTick(Lmiui/maml/animation/BaseAnimation$AnimationItem;Lmiui/maml/animation/BaseAnimation$AnimationItem;F)V
    .registers 12

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lmiui/maml/animation/ScaleAnimation;->getItemX(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v0

    invoke-direct {p0, p2}, Lmiui/maml/animation/ScaleAnimation;->getItemX(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v4

    sub-double/2addr v4, v0

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v4, v0

    const/4 v6, 0x1

    invoke-virtual {p0, v6, v4, v5}, Lmiui/maml/animation/ScaleAnimation;->setCurValue(ID)V

    invoke-direct {p0, p1}, Lmiui/maml/animation/ScaleAnimation;->getItemY(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v2

    invoke-direct {p0, p2}, Lmiui/maml/animation/ScaleAnimation;->getItemY(Lmiui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v4

    sub-double/2addr v4, v2

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    const/4 v6, 0x2

    invoke-virtual {p0, v6, v4, v5}, Lmiui/maml/animation/ScaleAnimation;->setCurValue(ID)V

    return-void
.end method
