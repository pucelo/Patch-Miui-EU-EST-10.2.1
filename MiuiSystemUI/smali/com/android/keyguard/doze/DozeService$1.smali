.class Lcom/android/keyguard/doze/DozeService$1;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/doze/DozeService;
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

    iput-object p1, p0, Lcom/android/keyguard/doze/DozeService$1;->this$0:Lcom/android/keyguard/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeService$1;->this$0:Lcom/android/keyguard/doze/DozeService;

    invoke-static {v0}, Lcom/android/keyguard/doze/DozeService;->-wrap0(Lcom/android/keyguard/doze/DozeService;)V

    return-void
.end method
