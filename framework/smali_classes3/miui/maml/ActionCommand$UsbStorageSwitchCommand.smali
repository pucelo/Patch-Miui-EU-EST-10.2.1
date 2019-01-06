.class Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;
.super Lmiui/maml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageSwitchCommand"
.end annotation


# instance fields
.field private mConnected:Z

.field private mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static synthetic -get0(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "usb_mode"

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/ActionCommand$NotificationReceiver;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmiui/maml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Lmiui/maml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 5

    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_5

    return-void

    :cond_5
    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v3, :cond_22

    xor-int/lit8 v2, v1, 0x1

    :goto_14
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    move v0, v2

    new-instance v3, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;

    invoke-direct {v3, p0, v0}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;-><init>(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;Z)V

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->start()V

    return-void

    :cond_22
    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v3, v3, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    if-ne v3, v1, :cond_29

    return-void

    :cond_29
    iget-object v3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mOnOffHelper:Lmiui/maml/ActionCommand$OnOffCommandHelper;

    iget-boolean v2, v3, Lmiui/maml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    goto :goto_14
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 6

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$NotificationReceiver;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

.method protected update()V
    .registers 4

    iget-object v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_21

    const-string/jumbo v1, "ActionCommand"

    const-string/jumbo v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    iget-object v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->mConnected:Z

    if-eqz v1, :cond_34

    if-eqz v0, :cond_32

    const/4 v1, 0x2

    :goto_2e
    invoke-virtual {p0, v1}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    return-void

    :cond_32
    const/4 v1, 0x1

    goto :goto_2e

    :cond_34
    const/4 v1, 0x0

    goto :goto_2e
.end method
