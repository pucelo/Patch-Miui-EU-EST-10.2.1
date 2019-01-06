.class Lcom/android/server/location/GnssLocationProvider$15;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;

.field final synthetic val$event:Landroid/location/GnssNavigationMessage;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssNavigationMessage;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$15;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider$15;->val$event:Landroid/location/GnssNavigationMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$15;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->-get8(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssNavigationMessageProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$15;->val$event:Landroid/location/GnssNavigationMessage;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method
