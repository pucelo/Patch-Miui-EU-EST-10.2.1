.class Landroid/os/CommonClock$TimelineChangedListener;
.super Landroid/os/Binder;
.source "CommonClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimelineChangedListener"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ICommonClockListener"


# instance fields
.field final synthetic this$0:Landroid/os/CommonClock;


# direct methods
.method private constructor <init>(Landroid/os/CommonClock;)V
    .registers 2

    iput-object p1, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/CommonClock;Landroid/os/CommonClock$TimelineChangedListener;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/CommonClock$TimelineChangedListener;-><init>(Landroid/os/CommonClock;)V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_30

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :pswitch_8
    const-string/jumbo v2, "android.os.ICommonClockListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iget-object v2, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    invoke-static {v2}, Landroid/os/CommonClock;->-get0(Landroid/os/CommonClock;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_19
    iget-object v2, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    invoke-static {v2}, Landroid/os/CommonClock;->-get2(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    invoke-static {v2}, Landroid/os/CommonClock;->-get2(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/os/CommonClock$OnTimelineChangedListener;->onTimelineChanged(J)V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_2d

    :cond_2a
    monitor-exit v3

    const/4 v2, 0x1

    return v2

    :catchall_2d
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
