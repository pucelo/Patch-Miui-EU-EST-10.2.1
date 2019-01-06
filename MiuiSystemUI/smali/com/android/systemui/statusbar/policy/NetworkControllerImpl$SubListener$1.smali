.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener$1;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;->onSubscriptionsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap6(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    return-void
.end method
