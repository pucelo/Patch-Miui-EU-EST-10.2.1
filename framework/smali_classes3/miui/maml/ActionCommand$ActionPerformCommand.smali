.class Lmiui/maml/ActionCommand$ActionPerformCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionPerformCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ActionCommand"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string/jumbo v0, "action"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ActionPerformCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "actionExp"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$ActionPerformCommand;->mActionExp:Lmiui/maml/data/Expression;

    :cond_28
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 4

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$ActionPerformCommand;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget-object v2, p0, Lmiui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lmiui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v2, p0, Lmiui/maml/ActionCommand$ActionPerformCommand;->mActionExp:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lmiui/maml/ActionCommand$ActionPerformCommand;->mActionExp:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v1, v0}, Lmiui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    goto :goto_12
.end method