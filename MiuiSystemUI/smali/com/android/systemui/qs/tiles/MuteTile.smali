.class public Lcom/android/systemui/qs/tiles/MuteTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "MuteTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/MuteTile$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;"
    }
.end annotation


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/MuteTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/MuteTile$1;-><init>(Lcom/android/systemui/qs/tiles/MuteTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-class v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    return-void
.end method

.method private longClickMuteIntent()Landroid/content/Intent;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "com.android.settings/com.android.settings.Settings$MiuiSilentModeAcivity"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v1
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/MuteTile;->longClickMuteIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110503

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    sget-boolean v2, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    move-object v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/MuteTile;->refreshState(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    move v2, v4

    :goto_2
    invoke-static {v5, v2, v3}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/systemui/qs/tiles/MuteTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    return-void
.end method

.method protected handleDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 6

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;->addCallback(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 6

    sget-object v3, Lcom/android/systemui/qs/tiles/MuteTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    if-ne p2, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v2

    if-nez v1, :cond_0

    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v3, :cond_3

    :cond_0
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    const v4, 0x7f110503

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    const v3, 0x7f080180

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v3, :cond_5

    const v3, 0x7f110637

    :goto_3
    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    const-class v3, Landroid/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/MuteTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    const v3, 0x7f08017f

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_2

    :cond_5
    const v3, 0x7f110636

    goto :goto_3
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/MuteTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MuteTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onSilentModeChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MuteTile;->refreshState()V

    return-void
.end method
