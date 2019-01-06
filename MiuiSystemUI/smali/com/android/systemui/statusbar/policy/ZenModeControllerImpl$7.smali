.class Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$7;
.super Ljava/lang/Object;
.source "ZenModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenChanged(I)V
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

.field final synthetic val$zen:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iput p2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$7;->val$zen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$7;->val$zen:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenChanged(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$7;->accept(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method
