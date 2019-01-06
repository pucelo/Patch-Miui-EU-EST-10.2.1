.class public abstract Lmiui/maml/ActionCommand$StateTracker;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    iput-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    iput-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .registers 4

    const/4 v1, 0x5

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0, p1}, Lmiui/maml/ActionCommand$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_12

    return v1

    :pswitch_e
    const/4 v0, 0x0

    return v0

    :pswitch_10
    const/4 v0, 0x1

    return v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    packed-switch p2, :pswitch_data_6e

    :goto_7
    if-eqz v0, :cond_39

    iget-boolean v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_39

    iget-boolean v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_39

    const-string/jumbo v1, "ActionCommand"

    const-string/jumbo v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string/jumbo v1, "ActionCommand"

    const-string/jumbo v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_37
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    :cond_39
    return-void

    :pswitch_3a
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_7

    :pswitch_43
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_7

    :pswitch_4c
    iput-boolean v4, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_7

    :pswitch_55
    iput-boolean v4, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_7

    :cond_5e
    iget-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_37

    iput-boolean v4, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    iget-object v1, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lmiui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_37

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_43
        :pswitch_4c
        :pswitch_55
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lmiui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2e

    :cond_9
    :goto_9
    :pswitch_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-boolean v2, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    if-eqz v2, :cond_27

    iput-boolean v3, p0, Lmiui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    :goto_15
    return-void

    :pswitch_16
    const/4 v1, 0x0

    goto :goto_9

    :pswitch_18
    const/4 v1, 0x1

    goto :goto_9

    :pswitch_1a
    iget-object v2, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lmiui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    goto :goto_9

    :cond_27
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$StateTracker;->mInTransition:Z

    invoke-virtual {p0, p1, v1}, Lmiui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_15

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_16
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1a
    .end packed-switch
.end method
