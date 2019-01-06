.class Lcom/android/keyguard/AODView$4$2;
.super Ljava/lang/Object;
.source "AODView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/AODView$4;->onUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/AODView$4;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/keyguard/AODView$4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AODView$4$2;->this$1:Lcom/android/keyguard/AODView$4;

    iput-object p2, p0, Lcom/android/keyguard/AODView$4$2;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/AODView$4$2;->this$1:Lcom/android/keyguard/AODView$4;

    iget-object v0, v0, Lcom/android/keyguard/AODView$4;->this$0:Lcom/android/keyguard/AODView;

    iget-object v1, p0, Lcom/android/keyguard/AODView$4$2;->val$pkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/keyguard/AODView;->-wrap1(Lcom/android/keyguard/AODView;Ljava/lang/String;)V

    return-void
.end method
