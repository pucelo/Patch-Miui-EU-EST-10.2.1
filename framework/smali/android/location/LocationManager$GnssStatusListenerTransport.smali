.class Landroid/location/LocationManager$GnssStatusListenerTransport;
.super Landroid/location/IGnssStatusListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssStatusListenerTransport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;,
        Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;
    }
.end annotation


# static fields
.field private static final NMEA_RECEIVED:I = 0x3e8


# instance fields
.field private final mGnssCallback:Landroid/location/GnssStatus$Callback;

.field private final mGnssHandler:Landroid/os/Handler;

.field private final mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

.field private final mGpsListener:Landroid/location/GpsStatus$Listener;

.field private final mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private final mNmeaBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method static synthetic -get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/OnNmeaMessageListener;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$Listener;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method

.method static synthetic -get3(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    return-object v0
.end method

.method static synthetic -get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)V
    .registers 6

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;Landroid/os/Handler;)V
    .registers 6

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_21

    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;

    invoke-direct {v0, p0}, Landroid/location/LocationManager$GnssStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;)V

    :goto_1c
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    return-void

    :cond_21
    move-object v0, v1

    goto :goto_1c
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;Landroid/os/Handler;)V
    .registers 6

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    new-instance v1, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v1, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    if-eqz v1, :cond_23

    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$2;

    invoke-direct {v0, p0}, Landroid/location/LocationManager$GnssStatusListenerTransport$2;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;)V

    :cond_23
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)V
    .registers 6

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .registers 4

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v1, p1}, Landroid/location/LocationManager;->-set1(Landroid/location/LocationManager;I)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_15
    return-void
.end method

.method public onGnssStarted()V
    .registers 3

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    if-eqz v1, :cond_10

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    return-void
.end method

.method public onGnssStopped()V
    .registers 3

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    if-eqz v1, :cond_10

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .registers 9

    const/16 v4, 0x3e8

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    if-eqz v1, :cond_24

    iget-object v2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_9
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    new-instance v3, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;JLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_25

    monitor-exit v2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_24
    return-void

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onSvStatusChanged(I[I[F[F[F[F)V
    .registers 16

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    if-eqz v0, :cond_26

    iget-object v8, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    new-instance v0, Landroid/location/GnssStatus;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssStatus;-><init>(I[I[F[F[F[F)V

    invoke-static {v8, v0}, Landroid/location/LocationManager;->-set0(Landroid/location/LocationManager;Landroid/location/GnssStatus;)Landroid/location/GnssStatus;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x4

    iput v0, v7, Landroid/os/Message;->what:I

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_26
    return-void
.end method
