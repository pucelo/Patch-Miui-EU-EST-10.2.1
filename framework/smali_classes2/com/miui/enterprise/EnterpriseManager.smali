.class public Lcom/miui/enterprise/EnterpriseManager;
.super Ljava/lang/Object;
.source "EnterpriseManager.java"


# static fields
.field public static final APN_MANAGER:Ljava/lang/String; = "apn_manager"

.field public static final APPLICATION_MANAGER:Ljava/lang/String; = "application_manager"

.field public static final DEVICE_MANAGER:Ljava/lang/String; = "device_manager"

.field public static final PHONE_MANAGER:Ljava/lang/String; = "phone_manager"

.field public static final RESTRICTIONS_MANAGER:Ljava/lang/String; = "restrictions_manager"

.field public static final SERVICE_NAME:Ljava/lang/String; = "EnterpriseManager"

.field private static sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 6

    const/4 v4, 0x0

    sget-object v1, Lcom/miui/enterprise/EnterpriseManager;->sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;

    if-nez v1, :cond_12

    const-string/jumbo v1, "EnterpriseManager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/enterprise/IEnterpriseManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IEnterpriseManager;

    move-result-object v1

    sput-object v1, Lcom/miui/enterprise/EnterpriseManager;->sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;

    :cond_12
    :try_start_12
    sget-object v1, Lcom/miui/enterprise/EnterpriseManager;->sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;

    invoke-interface {v1, p0}, Lcom/miui/enterprise/IEnterpriseManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    move-result-object v1

    return-object v1

    :catch_19
    move-exception v0

    const-string/jumbo v1, "EnterpriseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to get enterprise service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method
