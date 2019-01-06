.class public abstract Lcom/miui/whetstone/WhetstoneCloudControlManager;
.super Ljava/lang/Object;
.source "WhetstoneCloudControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;
    }
.end annotation


# static fields
.field public static REGISTER_ALREADY:I = 0x0

.field public static REGISTER_FAIL:I = 0x0

.field public static REGISTER_SUCCESS:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field public static UNREGISTER_FAIL:I

.field public static UNREGISTER_SUCCESS:I

.field private static ws:Lcom/miui/whetstone/IWhetstone;


# direct methods
.method static synthetic -set0(Lcom/miui/whetstone/IWhetstone;)Lcom/miui/whetstone/IWhetstone;
    .registers 1

    sput-object p0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->getService()Lcom/miui/whetstone/IWhetstone;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    sput v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_FAIL:I

    const/4 v0, 0x0

    sput v0, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_ALREADY:I

    sput v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_SUCCESS:I

    sput v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->UNREGISTER_FAIL:I

    sput v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->UNREGISTER_SUCCESS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkService()V
    .registers 0

    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->getService()Lcom/miui/whetstone/IWhetstone;

    return-void
.end method

.method private static getService()Lcom/miui/whetstone/IWhetstone;
    .registers 4

    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v2, :cond_26

    const-string/jumbo v2, "miui.whetstone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    :try_start_11
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_26

    new-instance v0, Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;

    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-direct {v0, v2}, Lcom/miui/whetstone/WhetstoneCloudControlManager$WhetstoneCloudManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_26} :catch_29

    :cond_26
    :goto_26
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object v2

    :catch_29
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public static registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I
    .registers 5

    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->checkService()V

    sget v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_FAIL:I

    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_f

    :try_start_9
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->registerMiuiWhetstoneCloudSync(Landroid/content/ComponentName;Lcom/miui/whetstone/CloudControlInfo;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    :cond_f
    :goto_f
    return v1

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method

.method public static registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/whetstone/CloudControlInfo;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->checkService()V

    sget v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->REGISTER_FAIL:I

    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_f

    :try_start_9
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->registerMiuiWhetstoneCloudSyncList(Landroid/content/ComponentName;Ljava/util/List;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    :cond_f
    :goto_f
    return v1

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method

.method public static unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I
    .registers 4

    invoke-static {}, Lcom/miui/whetstone/WhetstoneCloudControlManager;->checkService()V

    sget v1, Lcom/miui/whetstone/WhetstoneCloudControlManager;->UNREGISTER_FAIL:I

    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_f

    :try_start_9
    sget-object v2, Lcom/miui/whetstone/WhetstoneCloudControlManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->unregisterMiuiWhetstoneCloudSync(Landroid/content/ComponentName;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    :cond_f
    :goto_f
    return v1

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method
