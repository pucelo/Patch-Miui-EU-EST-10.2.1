.class Lmiui/maml/elements/ImageScreenElement$Mask;
.super Lmiui/maml/elements/ImageScreenElement;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ImageScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Mask"
.end annotation


# instance fields
.field private mAlignAbsolute:Z

.field final synthetic this$0:Lmiui/maml/elements/ImageScreenElement;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ImageScreenElement;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 6

    iput-object p1, p0, Lmiui/maml/elements/ImageScreenElement$Mask;->this$0:Lmiui/maml/elements/ImageScreenElement;

    invoke-direct {p0, p2, p3}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const-string/jumbo v1, "align"

    invoke-virtual {p0, p2, v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "absolute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement$Mask;->mAlignAbsolute:Z

    :cond_18
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public final isAlignAbsolute()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement$Mask;->mAlignAbsolute:Z

    return v0
.end method
