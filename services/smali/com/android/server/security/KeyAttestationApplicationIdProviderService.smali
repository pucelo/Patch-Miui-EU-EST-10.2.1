.class public Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
.super Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;
.source "KeyAttestationApplicationIdProviderService.java"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/security/keymaster/IKeyAttestationApplicationIdProvider$Stub;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getKeyAttestationApplicationId(I)Landroid/security/keymaster/KeyAttestationApplicationId;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/16 v9, 0x3f9

    if-eq v8, v9, :cond_11

    new-instance v8, Ljava/lang/SecurityException;

    const-string/jumbo v9, "This service can only be used by Keystore"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_11
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_16
    iget-object v8, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_37

    new-instance v8, Landroid/os/RemoteException;

    const-string/jumbo v9, "No packages for uid"

    invoke-direct {v8, v9}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_27} :catch_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_32

    :catch_27
    move-exception v2

    :try_start_28
    new-instance v8, Landroid/os/RemoteException;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_37
    :try_start_37
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    array-length v8, v4

    new-array v1, v8, [Landroid/security/keymaster/KeyAttestationPackageInfo;

    const/4 v0, 0x0

    :goto_3f
    array-length v8, v4

    if-ge v0, v8, :cond_5c

    iget-object v8, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v9, v4, v0

    const/16 v10, 0x40

    invoke-virtual {v8, v9, v10, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    new-instance v8, Landroid/security/keymaster/KeyAttestationPackageInfo;

    aget-object v9, v4, v0

    iget v10, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {v8, v9, v10, v11}, Landroid/security/keymaster/KeyAttestationPackageInfo;-><init>(Ljava/lang/String;I[Landroid/content/pm/Signature;)V

    aput-object v8, v1, v0
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_59} :catch_27
    .catchall {:try_start_37 .. :try_end_59} :catchall_32

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_5c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v8, Landroid/security/keymaster/KeyAttestationApplicationId;

    invoke-direct {v8, v1}, Landroid/security/keymaster/KeyAttestationApplicationId;-><init>([Landroid/security/keymaster/KeyAttestationPackageInfo;)V

    return-object v8
.end method
