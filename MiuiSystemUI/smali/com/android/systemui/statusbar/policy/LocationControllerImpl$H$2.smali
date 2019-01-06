.class Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$2;
.super Ljava/lang/Object;
.source "LocationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->locationSettingsChanged()V
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
        "Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

.field final synthetic val$isEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$2;->this$1:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$2;->val$isEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$2;->val$isEnabled:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;->onLocationSettingsChanged(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H$2;->accept(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V

    return-void
.end method
