.class Landroid/hardware/location/GeofenceHardwareImpl$3;
.super Landroid/os/Handler;
.source "GeofenceHardwareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_6e

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v5, v6, v1, v4}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareCallback;I)V

    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-get6(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-get6(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v6, 0x0

    :try_start_2d
    invoke-interface {v0, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_5

    :catch_31
    move-exception v2

    goto :goto_5

    :pswitch_33
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    iget v4, p1, Landroid/os/Message;->arg1:I

    new-instance v5, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {v5, v6, v3, v4}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;-><init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareMonitorCallback;I)V

    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-get6(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-get6(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v6, 0x0

    :try_start_5a
    invoke-interface {v0, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_5

    :catch_5e
    move-exception v2

    goto :goto_5

    :pswitch_60
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v6, p0, Landroid/hardware/location/GeofenceHardwareImpl$3;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v6}, Landroid/hardware/location/GeofenceHardwareImpl;->-get6(Landroid/hardware/location/GeofenceHardwareImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_33
        :pswitch_60
    .end packed-switch
.end method
