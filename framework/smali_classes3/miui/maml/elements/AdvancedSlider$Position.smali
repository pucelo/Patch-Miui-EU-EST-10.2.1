.class Lmiui/maml/elements/AdvancedSlider$Position;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Position"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Position"


# instance fields
.field private mBaseX:Lmiui/maml/data/Expression;

.field private mBaseY:Lmiui/maml/data/Expression;

.field private mX:Lmiui/maml/data/Expression;

.field private mY:Lmiui/maml/data/Expression;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V
    .registers 7

    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseX:Lmiui/maml/data/Expression;

    iput-object p5, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseY:Lmiui/maml/data/Expression;

    const-string/jumbo v0, "x"

    invoke-virtual {p1, p3, v0}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mX:Lmiui/maml/data/Expression;

    const-string/jumbo v0, "y"

    invoke-virtual {p1, p3, v0}, Lmiui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mY:Lmiui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method public getX()F
    .registers 7

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mX:Lmiui/maml/data/Expression;

    if-nez v0, :cond_13

    move-wide v0, v2

    :goto_9
    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseX:Lmiui/maml/data/Expression;

    if-nez v5, :cond_1a

    :goto_d
    add-double/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0

    :cond_13
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mX:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_9

    :cond_1a
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseX:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    goto :goto_d
.end method

.method public getY()F
    .registers 7

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$Position;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mY:Lmiui/maml/data/Expression;

    if-nez v0, :cond_13

    move-wide v0, v2

    :goto_9
    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseY:Lmiui/maml/data/Expression;

    if-nez v5, :cond_1a

    :goto_d
    add-double/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0

    :cond_13
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mY:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_9

    :cond_1a
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$Position;->mBaseY:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    goto :goto_d
.end method
