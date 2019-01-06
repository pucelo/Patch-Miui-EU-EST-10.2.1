.class Landroid/nfc/NfcAdapter$2;
.super Landroid/nfc/ITagRemovedCallback$Stub;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->ignore(Landroid/nfc/Tag;ILandroid/nfc/NfcAdapter$OnTagRemovedListener;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;Landroid/os/Handler;Landroid/nfc/NfcAdapter$OnTagRemovedListener;)V
    .registers 4

    iput-object p1, p0, Landroid/nfc/NfcAdapter$2;->this$0:Landroid/nfc/NfcAdapter;

    iput-object p2, p0, Landroid/nfc/NfcAdapter$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/nfc/NfcAdapter$2;->val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;

    invoke-direct {p0}, Landroid/nfc/ITagRemovedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagRemoved()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/nfc/NfcAdapter$2;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/nfc/NfcAdapter$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/nfc/NfcAdapter$2$1;

    iget-object v2, p0, Landroid/nfc/NfcAdapter$2;->val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;

    invoke-direct {v1, p0, v2}, Landroid/nfc/NfcAdapter$2$1;-><init>(Landroid/nfc/NfcAdapter$2;Landroid/nfc/NfcAdapter$OnTagRemovedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_10
    iget-object v0, p0, Landroid/nfc/NfcAdapter$2;->this$0:Landroid/nfc/NfcAdapter;

    iget-object v1, v0, Landroid/nfc/NfcAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_15
    iget-object v0, p0, Landroid/nfc/NfcAdapter$2;->this$0:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/nfc/NfcAdapter;->mTagRemovedListener:Landroid/nfc/ITagRemovedCallback;
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_22

    monitor-exit v1

    return-void

    :cond_1c
    iget-object v0, p0, Landroid/nfc/NfcAdapter$2;->val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;

    invoke-interface {v0}, Landroid/nfc/NfcAdapter$OnTagRemovedListener;->onTagRemoved()V

    goto :goto_10

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method
