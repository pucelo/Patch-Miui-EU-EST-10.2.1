.class Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$3;
.super Ljava/lang/Object;
.source "MiuiKeyguardChargingContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->onCharingViewClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$3;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$3;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->startUpAnim()V

    return-void
.end method
