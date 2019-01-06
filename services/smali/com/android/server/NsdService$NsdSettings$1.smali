.class final Lcom/android/server/NsdService$NsdSettings$1;
.super Ljava/lang/Object;
.source "NsdService.java"

# interfaces
.implements Lcom/android/server/NsdService$NsdSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NsdService$NsdSettings;->makeDefault(Landroid/content/Context;)Lcom/android/server/NsdService$NsdSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NsdService$NsdSettings$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/NsdService$NsdSettings$1;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "nsd_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_d

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public putEnabledStatus(Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/NsdService$NsdSettings$1;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "nsd_on"

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/NsdService$NsdSettings$1;->val$resolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
