.class Lcom/android/systemui/statusbar/phone/NavStubView$1$1;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NavStubView$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/NavStubView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/NavStubView$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavStubView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->performHapticFeedback(I)Z

    return-void
.end method
