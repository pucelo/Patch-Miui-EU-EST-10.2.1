.class Lcom/android/server/location/GnssLocationProvider$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get10(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-wrap39(Lcom/android/server/location/GnssLocationProvider;)V

    :cond_e
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get4(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-wrap44(Lcom/android/server/location/GnssLocationProvider;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v1, 0x4

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap40(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap40(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    return-void
.end method
