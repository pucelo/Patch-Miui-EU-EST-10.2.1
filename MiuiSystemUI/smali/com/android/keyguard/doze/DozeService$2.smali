.class Lcom/android/keyguard/doze/DozeService$2;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/doze/DozeService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/android/keyguard/doze/DozeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/doze/DozeService$2;->this$0:Lcom/android/keyguard/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeService$2;->this$0:Lcom/android/keyguard/doze/DozeService;

    invoke-static {v0}, Lcom/android/keyguard/doze/DozeService;->-get0(Lcom/android/keyguard/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeService$2;->this$0:Lcom/android/keyguard/doze/DozeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/doze/DozeService;->-set0(Lcom/android/keyguard/doze/DozeService;Z)Z

    return-void
.end method
