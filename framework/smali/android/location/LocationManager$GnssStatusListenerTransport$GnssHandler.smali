.class Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;
.super Landroid/os/Handler;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager$GnssStatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V
    .registers 4

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_8
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_8
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_7c

    :goto_5
    return-void

    :sswitch_6
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    :try_start_d
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v1, :cond_36

    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;

    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get1(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/OnNmeaMessageListener;

    move-result-object v3

    iget-object v5, v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mNmea:Ljava/lang/String;

    iget-wide v6, v2, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;->mTimestamp:J

    invoke-interface {v3, v5, v6, v7}, Landroid/location/OnNmeaMessageListener;->onNmeaMessage(Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_36
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_41

    monitor-exit v4

    goto :goto_5

    :catchall_41
    move-exception v3

    monitor-exit v4

    throw v3

    :sswitch_44
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/GnssStatus$Callback;->onStarted()V

    goto :goto_5

    :sswitch_4e
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/GnssStatus$Callback;->onStopped()V

    goto :goto_5

    :sswitch_58
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    move-result-object v3

    iget-object v4, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    iget-object v4, v4, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v4}, Landroid/location/LocationManager;->-get2(Landroid/location/LocationManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/location/GnssStatus$Callback;->onFirstFix(I)V

    goto :goto_5

    :sswitch_6a
    iget-object v3, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v3}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;

    move-result-object v3

    iget-object v4, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    iget-object v4, v4, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v4}, Landroid/location/LocationManager;->-get0(Landroid/location/LocationManager;)Landroid/location/GnssStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/location/GnssStatus$Callback;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V

    goto :goto_5

    :sswitch_data_7c
    .sparse-switch
        0x1 -> :sswitch_44
        0x2 -> :sswitch_4e
        0x3 -> :sswitch_58
        0x4 -> :sswitch_6a
        0x3e8 -> :sswitch_6
    .end sparse-switch
.end method
