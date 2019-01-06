.class public Lcom/miui/server/enterprise/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# static fields
.field private static volatile sEntService:Lcom/miui/server/enterprise/EnterpriseManagerService;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;)V
    .registers 11

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_e

    return-void

    :cond_e
    invoke-static {}, Lcom/miui/server/enterprise/ServiceUtils;->getEntService()Lcom/miui/server/enterprise/EnterpriseManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/server/enterprise/EnterpriseManagerService;->isSignatureVerified()Z

    move-result v7

    if-nez v7, :cond_21

    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "No enterprise cert"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_21
    invoke-static {}, Lcom/miui/server/enterprise/ServiceUtils;->getEntService()Lcom/miui/server/enterprise/EnterpriseManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/server/enterprise/EnterpriseManagerService;->getEnterpriseCert()Lcom/miui/enterprise/signature/EnterpriseCer;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/enterprise/signature/EnterpriseCer;->getValidFrom()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_45

    invoke-virtual {v0}, Lcom/miui/enterprise/signature/EnterpriseCer;->getValidTo()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_4e

    :cond_45
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Enterprise cert out of date"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4e
    iget-object v7, v0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    if-eqz v7, :cond_94

    iget-object v7, v0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_94

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v7, v0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    array-length v8, v7

    :goto_6a
    if-ge v6, v8, :cond_75

    aget-object v5, v7, v6

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_91

    const/4 v4, 0x1

    :cond_75
    if-nez v4, :cond_94

    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Permission denied for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_91
    add-int/lit8 v6, v6, 0x1

    goto :goto_6a

    :cond_94
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    return-void
.end method

.method private static declared-synchronized getEntService()Lcom/miui/server/enterprise/EnterpriseManagerService;
    .registers 2

    const-class v1, Lcom/miui/server/enterprise/ServiceUtils;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/server/enterprise/ServiceUtils;->sEntService:Lcom/miui/server/enterprise/EnterpriseManagerService;

    if-nez v0, :cond_12

    const-string/jumbo v0, "EnterpriseManager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/miui/server/enterprise/EnterpriseManagerService;

    sput-object v0, Lcom/miui/server/enterprise/ServiceUtils;->sEntService:Lcom/miui/server/enterprise/EnterpriseManagerService;

    :cond_12
    sget-object v0, Lcom/miui/server/enterprise/ServiceUtils;->sEntService:Lcom/miui/server/enterprise/EnterpriseManagerService;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method
