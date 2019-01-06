.class Lcom/android/keyguard/MiuiKeyguardDualClock$2;
.super Landroid/database/ContentObserver;
.source "MiuiKeyguardDualClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/MiuiKeyguardDualClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardDualClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardDualClock;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock$2;->this$0:Lcom/android/keyguard/MiuiKeyguardDualClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock$2;->this$0:Lcom/android/keyguard/MiuiKeyguardDualClock;

    iget-object v2, p0, Lcom/android/keyguard/MiuiKeyguardDualClock$2;->this$0:Lcom/android/keyguard/MiuiKeyguardDualClock;

    invoke-static {v2}, Lcom/android/keyguard/MiuiKeyguardDualClock;->-get0(Lcom/android/keyguard/MiuiKeyguardDualClock;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "auto_time_zone"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->-set0(Lcom/android/keyguard/MiuiKeyguardDualClock;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock$2;->this$0:Lcom/android/keyguard/MiuiKeyguardDualClock;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->-wrap0(Lcom/android/keyguard/MiuiKeyguardDualClock;)V

    return-void
.end method
