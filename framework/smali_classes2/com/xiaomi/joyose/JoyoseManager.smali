.class public Lcom/xiaomi/joyose/JoyoseManager;
.super Ljava/lang/Object;
.source "JoyoseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "xiaomi.joyose"

.field private static js:Lcom/xiaomi/joyose/IJoyoseInterface;


# direct methods
.method static synthetic -set0(Lcom/xiaomi/joyose/IJoyoseInterface;)Lcom/xiaomi/joyose/IJoyoseInterface;
    .registers 1

    sput-object p0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkService()V
    .registers 0

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->getService()Lcom/xiaomi/joyose/IJoyoseInterface;

    return-void
.end method

.method public static getAllSteps([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/joyose/Step;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v2, :cond_12

    :try_start_c
    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v2, p0, p1, p2, p3}, Lcom/xiaomi/joyose/IJoyoseInterface;->getAllSteps([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_13

    move-result-object v1

    :cond_12
    :goto_12
    return-object v1

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private static getService()Lcom/xiaomi/joyose/IJoyoseInterface;
    .registers 5

    const/4 v4, 0x0

    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-nez v2, :cond_27

    const-string/jumbo v2, "xiaomi.joyose"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/joyose/IJoyoseInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/joyose/IJoyoseInterface;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    :try_start_12
    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v2, :cond_27

    new-instance v0, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;

    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-direct {v0, v2}, Lcom/xiaomi/joyose/JoyoseManager$JoyoseManagerDeath;-><init>(Lcom/xiaomi/joyose/IJoyoseInterface;)V

    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v2}, Lcom/xiaomi/joyose/IJoyoseInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_2a

    :cond_27
    :goto_27
    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    return-object v2

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sput-object v4, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    goto :goto_27
.end method

.method public static handleGameBoosterForOneway(ILjava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_c

    :try_start_7
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->handleGameBoosterForOneway(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public static handleGameBoosterForSync(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v2, :cond_e

    :try_start_8
    sget-object v2, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v2, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->handleGameBoosterForSync(ILjava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    :cond_e
    :goto_e
    return-object v1

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method public static predictAppBucketLevel(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_c

    :try_start_7
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1, p0}, Lcom/xiaomi/joyose/IJoyoseInterface;->predictAppBucketLevel(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public static predictAppsBucketLevel(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_c

    :try_start_7
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->predictAppsBucketLevel(Ljava/util/List;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public static registerGameEngineListener(ILcom/xiaomi/joyose/IGameEngineCallback;)V
    .registers 4

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_c

    :try_start_7
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1, p0, p1}, Lcom/xiaomi/joyose/IJoyoseInterface;->registerGameEngineListener(ILcom/xiaomi/joyose/IGameEngineCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public static unRegisterGameEngineListener(Lcom/xiaomi/joyose/IGameEngineCallback;)V
    .registers 3

    invoke-static {}, Lcom/xiaomi/joyose/JoyoseManager;->checkService()V

    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    if-eqz v1, :cond_c

    :try_start_7
    sget-object v1, Lcom/xiaomi/joyose/JoyoseManager;->js:Lcom/xiaomi/joyose/IJoyoseInterface;

    invoke-interface {v1, p0}, Lcom/xiaomi/joyose/IJoyoseInterface;->unRegisterGameEngineListener(Lcom/xiaomi/joyose/IGameEngineCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method
