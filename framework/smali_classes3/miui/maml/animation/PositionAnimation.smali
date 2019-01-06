.class public Lmiui/maml/animation/PositionAnimation;
.super Lmiui/maml/animation/BaseAnimation;
.source "PositionAnimation.java"


# static fields
.field public static final INNER_TAG_NAME:Ljava/lang/String; = "Position"

.field public static final TAG_NAME:Ljava/lang/String; = "PositionAnimation"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "x"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "y"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V
    .registers 4

    const-string/jumbo v0, "Position"

    invoke-direct {p0, p1, v0, p2}, Lmiui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/elements/ScreenElement;)V

    return-void
.end method


# virtual methods
.method public final getX()D
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/animation/PositionAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getY()D
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/animation/PositionAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method
