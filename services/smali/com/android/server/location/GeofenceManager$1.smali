.class Lcom/android/server/location/GeofenceManager$1;
.super Landroid/database/ContentObserver;
.source "GeofenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GeofenceManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/GeofenceManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    invoke-static {v0}, Lcom/android/server/location/GeofenceManager;->-get0(Lcom/android/server/location/GeofenceManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/location/GeofenceManager$1;->this$0:Lcom/android/server/location/GeofenceManager;

    invoke-static {v0}, Lcom/android/server/location/GeofenceManager;->-wrap1(Lcom/android/server/location/GeofenceManager;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
