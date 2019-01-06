.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;",
        ">;"
    }
.end annotation


# static fields
.field static final TETHER_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

.field private final mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

.field private final mController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private mListening:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    const-class v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1104fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotReady()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleClick: from: mState.value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    return-void

    :cond_2
    sget-object v1, Lcom/android/systemui/qs/tiles/HotspotTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallback:Lcom/android/systemui/qs/tiles/HotspotTile$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V
    .locals 8

    const v7, 0x7f080179

    const v6, 0x7f080178

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v2, Lcom/android/systemui/qs/tiles/HotspotTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "no_config_tethering"

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/qs/tiles/HotspotTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v2

    :goto_1
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v5, 0x7f1104fb

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-nez v2, :cond_3

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    :goto_2
    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotTransient()Z

    move-result v2

    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    if-eqz v2, :cond_6

    invoke-static {v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :cond_0
    :goto_4
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    if-eqz v2, :cond_8

    :goto_5
    iput v4, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->state:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v2, :cond_b

    const v2, 0x7f110637

    :goto_6
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->contentDescription:Ljava/lang/CharSequence;

    const-class v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    if-eqz v2, :cond_4

    invoke-static {v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-static {v7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_3

    :cond_6
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    if-eqz v2, :cond_7

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_0

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_4

    :cond_8
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-nez v2, :cond_9

    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    if-eqz v2, :cond_a

    :cond_9
    const/4 v4, 0x2

    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_5

    :cond_b
    const v2, 0x7f110636

    goto :goto_6
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    move-result-object v0

    return-object v0
.end method
