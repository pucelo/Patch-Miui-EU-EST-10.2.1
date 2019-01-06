.class public abstract Lmiui/maml/ActionCommand$PropertyCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PropertyCommand"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mTargetElement:Lmiui/maml/elements/ScreenElement;

.field private mTargetObj:Lmiui/maml/util/Variable;


# direct methods
.method protected constructor <init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    iput-object p2, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/maml/util/Variable;

    return-void
.end method

.method public static create(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand$PropertyCommand;
    .registers 6

    new-instance v0, Lmiui/maml/util/Variable;

    invoke-direct {v0, p1}, Lmiui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "visibility"

    invoke-virtual {v0}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Lmiui/maml/ActionCommand$VisibilityProperty;

    invoke-direct {v1, p0, v0, p2}, Lmiui/maml/ActionCommand$VisibilityProperty;-><init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V

    return-object v1

    :cond_18
    const-string/jumbo v1, "animation"

    invoke-virtual {v0}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    new-instance v1, Lmiui/maml/ActionCommand$AnimationProperty;

    invoke-direct {v1, p0, v0, p2}, Lmiui/maml/ActionCommand$AnimationProperty;-><init>(Lmiui/maml/elements/ScreenElement;Lmiui/maml/util/Variable;Ljava/lang/String;)V

    return-object v1

    :cond_2b
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public init()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Lmiui/maml/ActionCommand;->init()V

    iget-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/maml/util/Variable;

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    if-nez v0, :cond_44

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$PropertyCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/maml/util/Variable;

    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    iget-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    if-nez v0, :cond_44

    const-string/jumbo v0, "ActionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "could not find PropertyCommand target, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/maml/util/Variable;

    invoke-virtual {v2}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/maml/util/Variable;

    return-void

    :cond_44
    return-void
.end method

.method public perform()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$PropertyCommand;->doPerform()V

    return-void
.end method
