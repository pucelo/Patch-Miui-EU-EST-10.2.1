.class Lmiui/maml/ActionCommand$WifiSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiSwitchCommand"
.end annotation


# instance fields
.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

.field private final mWifiState:Lmiui/maml/ActionCommand$StateTracker;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "wifi_state"

    sget-object v1, Lmiui/maml/NotifierManager;->TYPE_WIFI_STATE:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiui/maml/ActionCommand$WifiStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/maml/ActionCommand$WifiStateTracker;-><init>(Lmiui/maml/ActionCommand$WifiStateTracker;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->update()V

    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 5

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v2, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {v2, v1}, Lmiui/maml/ActionCommand$StateTracker;->toggleState(Landroid/content/Context;)V

    :cond_f
    :goto_f
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->update()V

    return-void

    :cond_13
    const/4 v0, 0x0

    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {v2, v1}, Lmiui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_3a

    :cond_1d
    :goto_1d
    :pswitch_1d
    if-eqz v0, :cond_f

    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    iget-object v3, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    invoke-virtual {v2, v1, v3}, Lmiui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_f

    :pswitch_29
    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v2, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eqz v2, :cond_1d

    const/4 v0, 0x1

    goto :goto_1d

    :pswitch_31
    iget-object v2, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v2, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-nez v2, :cond_1d

    const/4 v0, 0x1

    goto :goto_1d

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_29
        :pswitch_31
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/ActionCommand$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

.method protected update()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_30

    :goto_e
    :pswitch_e
    return-void

    :pswitch_f
    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_e

    :pswitch_13
    iget-object v0, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    check-cast v0, Lmiui/maml/ActionCommand$WifiStateTracker;

    iget-boolean v0, v0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_e

    :cond_20
    const/4 v0, 0x2

    goto :goto_1c

    :pswitch_22
    iget-object v1, p0, Lmiui/maml/ActionCommand$WifiSwitchCommand;->mWifiState:Lmiui/maml/ActionCommand$StateTracker;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$StateTracker;->isTurningOn()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v0, 0x3

    :cond_2b
    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$WifiSwitchCommand;->updateState(I)V

    goto :goto_e

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_f
        :pswitch_13
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_22
    .end packed-switch
.end method
