.class Lmiui/maml/ActionCommand$BluetoothSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothSwitchCommand"
.end annotation


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnable:Z

.field private mBluetoothEnabling:Z

.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "bluetooth_state"

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    return-void
.end method

.method private ensureBluetoothAdapter()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_a
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method protected doPerform()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    iput-boolean v2, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->update()V

    return-void

    :cond_1e
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iput-boolean v3, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_1a

    :cond_26
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    iget-object v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iput-boolean v3, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_1a

    :cond_40
    iget-object v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    iput-boolean v2, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    goto :goto_1a
.end method

.method protected update()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->ensureBluetoothAdapter()Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    iget-object v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    iget-boolean v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnable:Z

    if-eqz v1, :cond_1b

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->updateState(I)V

    :goto_1a
    return-void

    :cond_1b
    iget-boolean v1, p0, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->mBluetoothEnabling:Z

    if-eqz v1, :cond_20

    const/4 v0, 0x2

    :cond_20
    invoke-virtual {p0, v0}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;->updateState(I)V

    goto :goto_1a
.end method
