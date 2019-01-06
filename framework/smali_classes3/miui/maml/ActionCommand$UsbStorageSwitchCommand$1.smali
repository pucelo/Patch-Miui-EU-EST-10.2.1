.class Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;
.super Ljava/lang/Thread;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->doPerform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

.field final synthetic val$_on:Z


# direct methods
.method constructor <init>(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;Z)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$1:Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    iput-boolean p2, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->val$_on:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->val$_on:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$1:Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-static {v0}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->-get0(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    :goto_d
    iget-object v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$1:Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->val$_on:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    :goto_14
    invoke-virtual {v1, v0}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    return-void

    :cond_18
    iget-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$1:Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-static {v0}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->-get0(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    goto :goto_d

    :cond_22
    const/4 v0, 0x1

    goto :goto_14
.end method
