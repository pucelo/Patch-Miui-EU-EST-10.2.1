.class Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$2;
.super Ljava/lang/Object;
.source "KeyguardMoveHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->onAnimationToSideEnded()V

    return-void
.end method
