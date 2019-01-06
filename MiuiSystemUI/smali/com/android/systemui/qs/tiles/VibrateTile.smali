.class public Lcom/android/systemui/qs/tiles/VibrateTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "VibrateTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SilentModeObserverController$SilentModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/VibrateTile$1;
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
.field private mCurrentUserId:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

.field private mVibrateEnableObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mCurrentUserId:I

    new-instance v0, Lcom/android/systemui/qs/tiles/VibrateTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/VibrateTile$1;-><init>(Lcom/android/systemui/qs/tiles/VibrateTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mCurrentUserId:I

    const-class v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    return-void
.end method

.method private longClickVibrateIntent()Landroid/content/Intent;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "com.android.settings/com.android.settings.Settings$SoundSettingsActivity"

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

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/VibrateTile;->longClickVibrateIntent()Landroid/content/Intent;

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

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110528

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSetting(Landroid/content/Context;)V

    return-void
.end method

.method protected handleDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "vibrate_in_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mCurrentUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "vibrate_in_normal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mCurrentUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;->addCallback(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mVibrateEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mSilentModeObserverController:Lcom/android/systemui/statusbar/policy/SilentModeObserverController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SilentModeObserverController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110528

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    const v0, 0x7f0801a5

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    const v0, 0x7f110637

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    const v0, 0x7f0801a4

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    :cond_1
    const v0, 0x7f110636

    goto :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/VibrateTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VibrateTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    return v1
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VibrateTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onSilentModeChanged(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/VibrateTile;->refreshState()V

    return-void
.end method
