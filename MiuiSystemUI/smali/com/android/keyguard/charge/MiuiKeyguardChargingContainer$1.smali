.class Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MiuiKeyguardChargingContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;
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

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$1;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomAreaButtonClicked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$1;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-set1(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$1;->this$0:Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    invoke-static {v0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->-wrap1(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;Z)V

    return-void
.end method
