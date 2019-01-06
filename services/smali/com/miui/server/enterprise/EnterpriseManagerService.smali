.class public Lcom/miui/server/enterprise/EnterpriseManagerService;
.super Lcom/miui/enterprise/IEnterpriseManager$Stub;
.source "EnterpriseManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/enterprise/EnterpriseManagerService$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Enterprise"


# instance fields
.field private mAPNManagerService:Lcom/miui/server/enterprise/APNManagerService;

.field private mApplicationManagerService:Lcom/miui/server/enterprise/ApplicationManagerService;

.field private mCert:Lcom/miui/enterprise/signature/EnterpriseCer;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDeviceManagerService:Lcom/miui/server/enterprise/DeviceManagerService;

.field private mLifecycleReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneManagerService:Lcom/miui/server/enterprise/PhoneManagerService;

.field private mRestrictionsManagerService:Lcom/miui/server/enterprise/RestrictionsManagerService;

.field private mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -set0(Lcom/miui/server/enterprise/EnterpriseManagerService;Lcom/miui/enterprise/signature/EnterpriseCer;)Lcom/miui/enterprise/signature/EnterpriseCer;
    .registers 2

    iput-object p1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mCert:Lcom/miui/enterprise/signature/EnterpriseCer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/server/enterprise/EnterpriseManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->bootComplete()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/server/enterprise/EnterpriseManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->loadEnterpriseCert()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/server/enterprise/EnterpriseManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/EnterpriseManagerService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/server/enterprise/EnterpriseManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/EnterpriseManagerService;->onUserStarted(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/server/enterprise/EnterpriseManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/EnterpriseManagerService;->onUserSwitched(I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Lcom/miui/enterprise/IEnterpriseManager$Stub;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mCurrentUserId:I

    new-instance v1, Lcom/miui/server/enterprise/EnterpriseManagerService$1;

    invoke-direct {v1, p0}, Lcom/miui/server/enterprise/EnterpriseManagerService$1;-><init>(Lcom/miui/server/enterprise/EnterpriseManagerService;)V

    iput-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mLifecycleReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/miui/server/enterprise/APNManagerService;

    invoke-direct {v1, p1}, Lcom/miui/server/enterprise/APNManagerService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mAPNManagerService:Lcom/miui/server/enterprise/APNManagerService;

    new-instance v1, Lcom/miui/server/enterprise/ApplicationManagerService;

    invoke-direct {v1, p1}, Lcom/miui/server/enterprise/ApplicationManagerService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mApplicationManagerService:Lcom/miui/server/enterprise/ApplicationManagerService;

    new-instance v1, Lcom/miui/server/enterprise/DeviceManagerService;

    invoke-direct {v1, p1}, Lcom/miui/server/enterprise/DeviceManagerService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mDeviceManagerService:Lcom/miui/server/enterprise/DeviceManagerService;

    new-instance v1, Lcom/miui/server/enterprise/PhoneManagerService;

    invoke-direct {v1, p1}, Lcom/miui/server/enterprise/PhoneManagerService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mPhoneManagerService:Lcom/miui/server/enterprise/PhoneManagerService;

    new-instance v1, Lcom/miui/server/enterprise/RestrictionsManagerService;

    invoke-direct {v1, p1}, Lcom/miui/server/enterprise/RestrictionsManagerService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mRestrictionsManagerService:Lcom/miui/server/enterprise/RestrictionsManagerService;

    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    const-string/jumbo v2, "apn_manager"

    iget-object v3, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mAPNManagerService:Lcom/miui/server/enterprise/APNManagerService;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    const-string/jumbo v2, "application_manager"

    iget-object v3, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mApplicationManagerService:Lcom/miui/server/enterprise/ApplicationManagerService;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    const-string/jumbo v2, "device_manager"

    iget-object v3, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mDeviceManagerService:Lcom/miui/server/enterprise/DeviceManagerService;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    const-string/jumbo v2, "phone_manager"

    iget-object v3, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mPhoneManagerService:Lcom/miui/server/enterprise/PhoneManagerService;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    const-string/jumbo v2, "restrictions_manager"

    iget-object v3, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mRestrictionsManagerService:Lcom/miui/server/enterprise/RestrictionsManagerService;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.enterprise.ACTION_CERT_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mLifecycleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private bootComplete()V
    .registers 3

    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mApplicationManagerService:Lcom/miui/server/enterprise/ApplicationManagerService;

    invoke-virtual {v0}, Lcom/miui/server/enterprise/ApplicationManagerService;->bootComplete()V

    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mRestrictionsManagerService:Lcom/miui/server/enterprise/RestrictionsManagerService;

    invoke-virtual {v0}, Lcom/miui/server/enterprise/RestrictionsManagerService;->bootComplete()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/server/enterprise/EnterpriseManagerService$2;

    invoke-direct {v1, p0}, Lcom/miui/server/enterprise/EnterpriseManagerService$2;-><init>(Lcom/miui/server/enterprise/EnterpriseManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private checkEnterprisePermission()V
    .registers 4

    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.miui.enterprise.permission.ACCESS_ENTERPRISE_API"

    const-string/jumbo v2, "Permission denied to access enterprise API"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "Enterprise"

    const-string/jumbo v1, "Init enterprise service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "EnterpriseManager"

    new-instance v1, Lcom/miui/server/enterprise/EnterpriseManagerService;

    invoke-direct {v1, p0}, Lcom/miui/server/enterprise/EnterpriseManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private loadEnterpriseCert()V
    .registers 8

    new-instance v0, Ljava/io/File;

    const-string/jumbo v4, "/data/system/entcert"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_f

    return-void

    :cond_f
    const/4 v2, 0x0

    :try_start_10
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_2e
    .catchall {:try_start_10 .. :try_end_15} :catchall_49

    :try_start_15
    new-instance v4, Lcom/miui/enterprise/signature/EnterpriseCer;

    invoke-direct {v4, v3}, Lcom/miui/enterprise/signature/EnterpriseCer;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mCert:Lcom/miui/enterprise/signature/EnterpriseCer;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_5e
    .catchall {:try_start_15 .. :try_end_1c} :catchall_5b

    if-eqz v3, :cond_21

    :try_start_1e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_23

    :cond_21
    :goto_21
    move-object v2, v3

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v1

    const-string/jumbo v4, "Enterprise"

    const-string/jumbo v5, "Something wrong"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    :catch_2e
    move-exception v1

    :goto_2f
    :try_start_2f
    const-string/jumbo v4, "Enterprise"

    const-string/jumbo v5, "Something wrong"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_49

    if-eqz v2, :cond_22

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_22

    :catch_3e
    move-exception v1

    const-string/jumbo v4, "Enterprise"

    const-string/jumbo v5, "Something wrong"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :catchall_49
    move-exception v4

    :goto_4a
    if-eqz v2, :cond_4f

    :try_start_4c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    :cond_4f
    :goto_4f
    throw v4

    :catch_50
    move-exception v1

    const-string/jumbo v5, "Enterprise"

    const-string/jumbo v6, "Something wrong"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    :catchall_5b
    move-exception v4

    move-object v2, v3

    goto :goto_4a

    :catch_5e
    move-exception v1

    move-object v2, v3

    goto :goto_2f
.end method

.method private onUserRemoved(I)V
    .registers 2

    return-void
.end method

.method private onUserStarted(I)V
    .registers 2

    return-void
.end method

.method private onUserSwitched(I)V
    .registers 2

    iput p1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mCurrentUserId:I

    return-void
.end method


# virtual methods
.method public getEnterpriseCert()Lcom/miui/enterprise/signature/EnterpriseCer;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mCert:Lcom/miui/enterprise/signature/EnterpriseCer;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3

    invoke-direct {p0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->checkEnterprisePermission()V

    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public isSignatureVerified()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mCert:Lcom/miui/enterprise/signature/EnterpriseCer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
