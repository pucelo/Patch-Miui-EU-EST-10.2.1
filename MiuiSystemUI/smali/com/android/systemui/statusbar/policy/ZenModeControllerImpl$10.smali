.class Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$10;
.super Ljava/lang/Object;
.source "ZenModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/util/function/Consumer",
        "<",
        "Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

.field final synthetic val$rule:Landroid/service/notification/ZenModeConfig$ZenRule;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$10;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$10;->val$rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$10;->val$rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$10;->accept(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method
