.class public Lcom/android/systemui/usb/UsbResolverActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "UsbResolverActivity.java"


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mDevice:Landroid/hardware/usb/UsbDevice;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

.field private mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mOtherProfileIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/usb/UsbResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v1, "android.intent.extra.INTENT"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v1, v0, Landroid/content/Intent;

    if-nez v1, :cond_0

    const-string/jumbo v1, "UsbResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Target is not an intent: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/usb/UsbResolverActivity;->finish()V

    return-void

    :cond_0
    move-object/from16 v3, v16

    check-cast v3, Landroid/content/Intent;

    new-instance v11, Ljava/util/ArrayList;

    const-string/jumbo v1, "rlist"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Parcelable;

    check-cast v12, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    invoke-static {v15}, Landroid/content/pm/ResolveInfoCompat;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_1

    :cond_3
    iget-object v1, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "device"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_5

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    const-string/jumbo v2, "rlist"

    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/usb/UsbResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-super/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    const v1, 0x10201a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/UsbResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v1, :cond_b

    const v1, 0x7f110121

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setText(I)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    const-string/jumbo v1, "accessory"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-nez v1, :cond_8

    const-string/jumbo v1, "UsbResolverActivity"

    const-string/jumbo v2, "no device or accessory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/usb/UsbResolverActivity;->finish()V

    return-void

    :cond_8
    new-instance v1, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    goto :goto_2

    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/systemui/usb/UsbConfirmActivity;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    const-string/jumbo v5, "rinfo"

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    const-string/jumbo v2, "device"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    const-string/jumbo v2, "accessory"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_b
    const v1, 0x7f110122

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbResolverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v3, v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mOtherProfileIntent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mForwardResolveInfo:Landroid/content/pm/ResolveInfo;

    iget v8, v8, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v8}, Landroid/os/UserHandleCompat;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {p0, v7, v9, v8}, Lcom/android/systemui/usb/UsbResolverActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return v10

    :cond_0
    :try_start_0
    const-string/jumbo v7, "usb"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-interface {v4, v7, v5}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    if-eqz p2, :cond_2

    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v6}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v6}, Landroid/os/UserHandleCompat;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {p1, p0, v8, v7}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return v10

    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8, v6}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v7, "UsbResolverActivity"

    const-string/jumbo v8, "onIntentSelected failed"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-interface {v4, v7, v5}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    if-eqz p2, :cond_4

    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v6}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8, v6}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v7, "UsbResolverActivity"

    const-string/jumbo v8, "startActivity failed"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
