.class final Lcom/android/server/HandyMode$2;
.super Landroid/content/BroadcastReceiver;
.source "HandyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HandyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/HandyMode;->-get0()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v1}, Lcom/android/server/HandyMode;->changeMode(I)V

    :cond_a
    return-void
.end method
