.class public Lcom/android/systemui/usb/UsbDebuggingActivity;
.super Lmiui/app/Activity;
.source "UsbDebuggingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;
    }
.end annotation


# instance fields
.field private mCheckBoxDialog:Lmiui/app/AlertDialog;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

.field private mKey:Ljava/lang/String;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/usb/UsbDebuggingActivity;)Lmiui/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mCheckBoxDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/usb/UsbDebuggingActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/ActionBar;->hide()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    const-string/jumbo v4, "service.adb.tcp.port"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-direct {v4, p0, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;Lmiui/app/Activity;)V

    iput-object v4, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "fingerprints"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "key"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mKey:Ljava/lang/String;

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->finish()V

    return-void

    :cond_3
    new-instance v4, Lcom/android/systemui/usb/UsbDebuggingActivity$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$1;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;)V

    iput-object v4, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v4, Lcom/android/systemui/usb/UsbDebuggingActivity$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/usb/UsbDebuggingActivity$2;-><init>(Lcom/android/systemui/usb/UsbDebuggingActivity;)V

    iput-object v4, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f11069b

    invoke-virtual {p0, v4}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const v6, 0x7f110698

    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f110697

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    check-cast v1, Lmiui/app/AlertDialog;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mCheckBoxDialog:Lmiui/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mCheckBoxDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v4}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lmiui/app/Activity;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbDebuggingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lmiui/app/Activity;->onStop()V

    return-void
.end method
