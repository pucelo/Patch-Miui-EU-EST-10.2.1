.class Landroid/net/ConnectivityManager$CallbackHandler;
.super Landroid/os/Handler;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager.CallbackHandler"


# instance fields
.field final synthetic this$0:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V
    .registers 4

    const-string/jumbo v0, "Handler cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;)V

    return-void
.end method

.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Message;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v5, p1, Landroid/os/Message;->what:I

    const v6, 0x80008

    if-ne v5, v6, :cond_13

    iget-object v6, p0, Landroid/net/ConnectivityManager$CallbackHandler;->this$0:Landroid/net/ConnectivityManager;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/NetworkCapabilities;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v5, v7}, Landroid/net/ConnectivityManager;->-wrap0(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V

    return-void

    :cond_13
    const-class v5, Landroid/net/NetworkRequest;

    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkRequest;

    const-class v5, Landroid/net/Network;

    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Network;

    invoke-static {}, Landroid/net/ConnectivityManager;->-get1()Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    :try_start_28
    invoke-static {}, Landroid/net/ConnectivityManager;->-get1()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_5d

    monitor-exit v6

    if-nez v0, :cond_60

    const-string/jumbo v5, "ConnectivityManager.CallbackHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callback not found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, Landroid/net/ConnectivityManager;->getCallbackName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " message"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_5d
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_60
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_9c

    :goto_65
    :pswitch_65
    return-void

    :pswitch_66
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onPreCheck(Landroid/net/Network;)V

    goto :goto_65

    :pswitch_6a
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    goto :goto_65

    :pswitch_6e
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3, v5}, Landroid/net/ConnectivityManager$NetworkCallback;->onLosing(Landroid/net/Network;I)V

    goto :goto_65

    :pswitch_74
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    goto :goto_65

    :pswitch_78
    invoke-virtual {v0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    goto :goto_65

    :pswitch_7c
    const-class v5, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v3, v1}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    goto :goto_65

    :pswitch_88
    const-class v5, Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v5}, Landroid/net/ConnectivityManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    invoke-virtual {v0, v3, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    goto :goto_65

    :pswitch_94
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkSuspended(Landroid/net/Network;)V

    goto :goto_65

    :pswitch_98
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkResumed(Landroid/net/Network;)V

    goto :goto_65

    :pswitch_data_9c
    .packed-switch 0x80001
        :pswitch_66
        :pswitch_6a
        :pswitch_6e
        :pswitch_74
        :pswitch_78
        :pswitch_7c
        :pswitch_88
        :pswitch_65
        :pswitch_94
        :pswitch_98
    .end packed-switch
.end method
