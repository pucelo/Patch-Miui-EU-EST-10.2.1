.class Lcom/android/keyguard/fod/MiuiGxzwAnimManager$1;
.super Landroid/database/ContentObserver;
.source "MiuiGxzwAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwAnimManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$1;->this$0:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-static {v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->-get0(Lcom/android/keyguard/fod/MiuiGxzwAnimManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fod_animation_type"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->-set0(Lcom/android/keyguard/fod/MiuiGxzwAnimManager;I)I

    return-void
.end method
