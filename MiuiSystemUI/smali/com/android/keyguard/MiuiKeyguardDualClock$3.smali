.class Lcom/android/keyguard/MiuiKeyguardDualClock$3;
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

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardDualClock$3;->this$0:Lcom/android/keyguard/MiuiKeyguardDualClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardDualClock$3;->this$0:Lcom/android/keyguard/MiuiKeyguardDualClock;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardDualClock;->-wrap0(Lcom/android/keyguard/MiuiKeyguardDualClock;)V

    return-void
.end method
