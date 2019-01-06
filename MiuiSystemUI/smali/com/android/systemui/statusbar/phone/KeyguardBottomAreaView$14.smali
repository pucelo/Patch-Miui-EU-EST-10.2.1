.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$14;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;


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
        "Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter",
        "<",
        "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;",
        "Lcom/android/systemui/plugins/IntentButtonProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$14;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceFromPlugin(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 1

    invoke-interface {p1}, Lcom/android/systemui/plugins/IntentButtonProvider;->getIntentButton()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInterfaceFromPlugin(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/plugins/IntentButtonProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$14;->getInterfaceFromPlugin(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object v0

    return-object v0
.end method
