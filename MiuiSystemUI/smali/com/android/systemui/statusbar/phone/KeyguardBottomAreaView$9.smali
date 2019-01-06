.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "keyguard_charging_show"

    invoke-static {v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-get14(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->startEnterAnim(Z)V

    return-void
.end method
