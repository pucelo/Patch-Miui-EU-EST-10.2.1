.class Lcom/android/server/car/CarServiceHelperService$1;
.super Ljava/lang/Object;
.source "CarServiceHelperService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/car/CarServiceHelperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/car/CarServiceHelperService;


# direct methods
.method constructor <init>(Lcom/android/server/car/CarServiceHelperService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/car/CarServiceHelperService$1;->this$0:Lcom/android/server/car/CarServiceHelperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    const-string/jumbo v2, "CarServiceHelper"

    const-string/jumbo v3, "**CarService connected**"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/car/CarServiceHelperService$1;->this$0:Lcom/android/server/car/CarServiceHelperService;

    invoke-static {v2, p2}, Lcom/android/server/car/CarServiceHelperService;->-set0(Lcom/android/server/car/CarServiceHelperService;Landroid/os/IBinder;)Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string/jumbo v2, "android.car.ICar"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/car/CarServiceHelperService$1;->this$0:Lcom/android/server/car/CarServiceHelperService;

    invoke-static {v2}, Lcom/android/server/car/CarServiceHelperService;->-get1(Lcom/android/server/car/CarServiceHelperService;)Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/car/CarServiceHelperService$ICarServiceHelperImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :try_start_25
    iget-object v2, p0, Lcom/android/server/car/CarServiceHelperService$1;->this$0:Lcom/android/server/car/CarServiceHelperService;

    invoke-static {v2}, Lcom/android/server/car/CarServiceHelperService;->-get0(Lcom/android/server/car/CarServiceHelperService;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_31} :catch_32

    :goto_31
    return-void

    :catch_32
    move-exception v1

    const-string/jumbo v2, "CarServiceHelper"

    const-string/jumbo v3, "RemoteException from car service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/server/car/CarServiceHelperService$1;->this$0:Lcom/android/server/car/CarServiceHelperService;

    invoke-static {v2}, Lcom/android/server/car/CarServiceHelperService;->-wrap0(Lcom/android/server/car/CarServiceHelperService;)V

    goto :goto_31
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/car/CarServiceHelperService$1;->this$0:Lcom/android/server/car/CarServiceHelperService;

    invoke-static {v0}, Lcom/android/server/car/CarServiceHelperService;->-wrap0(Lcom/android/server/car/CarServiceHelperService;)V

    return-void
.end method
