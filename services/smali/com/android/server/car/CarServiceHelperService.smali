.class public Lcom/android/server/car/CarServiceHelperService;
.super Lcom/android/server/SystemService;
.source "CarServiceHelperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/car/CarServiceHelperService$1;,
        Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;
    }
.end annotation


# static fields
.field private static final CAR_SERVICE_INTERFACE:Ljava/lang/String; = "android.car.ICar"

.field private static final TAG:Ljava/lang/String; = "CarServiceHelper"


# instance fields
.field private mCarService:Landroid/os/IBinder;

.field private final mCarServiceConnection:Landroid/content/ServiceConnection;

.field private final mHelper:Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/car/CarServiceHelperService;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/car/CarServiceHelperService;->mCarService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/car/CarServiceHelperService;)Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;
    .registers 2

    iget-object v0, p0, Lcom/android/server/car/CarServiceHelperService;->mHelper:Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/car/CarServiceHelperService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/android/server/car/CarServiceHelperService;->mCarService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/car/CarServiceHelperService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/car/CarServiceHelperService;->handleCarServiceCrash()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;-><init>(Lcom/android/server/car/CarServiceHelperService;Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;)V

    iput-object v0, p0, Lcom/android/server/car/CarServiceHelperService;->mHelper:Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;

    new-instance v0, Lcom/android/server/car/CarServiceHelperService$1;

    invoke-direct {v0, p0}, Lcom/android/server/car/CarServiceHelperService$1;-><init>(Lcom/android/server/car/CarServiceHelperService;)V

    iput-object v0, p0, Lcom/android/server/car/CarServiceHelperService;->mCarServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private handleCarServiceCrash()V
    .registers 1

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.car"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.car.ICar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/car/CarServiceHelperService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/car/CarServiceHelperService;->mCarServiceConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string/jumbo v1, "CarServiceHelper"

    const-string/jumbo v2, "cannot start car service"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-void
.end method
