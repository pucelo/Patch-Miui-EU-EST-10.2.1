.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$12;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Lcom/android/systemui/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/util/function/Supplier",
        "<",
        "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$12;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$12;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$DefaultRightButton;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$12;->get()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object v0

    return-object v0
.end method
