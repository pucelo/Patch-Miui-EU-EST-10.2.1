.class public Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIsConnectingErrorPossible:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mMessageRejectionCount:I

.field private mName:Ljava/lang/String;

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object p4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fillData()V

    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 5

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "CachedBluetoothDevice"

    const-string/jumbo v4, "No profiles. Maybe we will connect later"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz p1, :cond_2

    invoke-interface {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    :cond_4
    return-void
.end method

.method private describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string/jumbo v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;

    invoke-interface {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private fetchBtClass()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-void
.end method

.method private fetchMessageRejectionCount()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "bluetooth_message_reject"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    return-void
.end method

.method private fetchName()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private fillData()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchName()V

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->migratePhonebookPermissionChoice()V

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->migrateMessagePermissionChoice()V

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchMessageRejectionCount()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method private migrateMessagePermissionChoice()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "bluetooth_message_permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_2

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_2
    if-ne v1, v7, :cond_1

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_0
.end method

.method private migratePhonebookPermissionChoice()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "bluetooth_phonebook_permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_2

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_2
    if-ne v1, v7, :cond_1

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0
.end method

.method private processPhonebookAccess()V
    .locals 3

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/bluetooth/PbapServerProfile;->PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    const/16 v2, 0x408

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    const/16 v2, 0x404

    if-ne v1, v2, :cond_3

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    goto :goto_0
.end method

.method private saveMessageRejectionCount()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "bluetooth_message_reject"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private updateProfiles()Z
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->processPhonebookAccess()V

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v0 .. v6}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public clearProfileConnectionState()V
    .locals 5

    const-string/jumbo v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Clearing all connection state for dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 6

    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    sub-int v0, v1, v4

    if-eqz v0, :cond_2

    return v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v2

    :goto_3
    sub-int v0, v1, v4

    if-eqz v0, :cond_5

    return v0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v4, v3

    goto :goto_3

    :cond_5
    iget-boolean v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_4
    iget-boolean v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v4, :cond_7

    :goto_5
    sub-int v0, v1, v2

    if-eqz v0, :cond_8

    return v0

    :cond_6
    move v1, v3

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_5

    :cond_8
    iget-short v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    if-eqz v0, :cond_9

    return v0

    :cond_9
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public connect(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    return-void
.end method

.method declared-synchronized connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnect()V
    .locals 5

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_1
    return-void
.end method

.method public disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBondState()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getMaxConnectionState()I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    if-le v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonebookPermissionChoice()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-ne v0, v3, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I
    .locals 3

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 4

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method onBondingDockConnect()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSimPermissionChoice(I)V

    iput v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->saveMessageRejectionCount()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "CachedBluetoothDevice"

    const-string/jumbo v1, " BT Turninig Off...Profile conn state change ignored..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    instance-of v0, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    instance-of v0, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/settingslib/bluetooth/PanProfile;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    const-string/jumbo v0, "CachedBluetoothDevice"

    const-string/jumbo v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0
.end method

.method onUuidChanged()V
    .locals 8

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    const-wide/16 v0, 0x1388

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v0, 0x7530

    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-wide v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    add-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method public refresh()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method refreshBtClass()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method refreshName()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchName()V

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    return-void
.end method

.method public registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    :cond_0
    return-void
.end method

.method public setMessagePermissionChoice(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method setNewName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    :cond_2
    return-void
.end method

.method public setPhonebookPermissionChoice(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method setRssi(S)V
    .locals 1

    iget-short v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    iput-short p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    :cond_0
    return-void
.end method

.method setSimPermissionChoice(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mVisible:Z

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    :cond_0
    return-void
.end method

.method public startPairing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
