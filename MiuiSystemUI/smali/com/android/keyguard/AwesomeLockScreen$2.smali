.class Lcom/android/keyguard/AwesomeLockScreen$2;
.super Ljava/lang/Object;
.source "AwesomeLockScreen.java"

# interfaces
.implements Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/AwesomeLockScreen;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/AwesomeLockScreen;


# direct methods
.method constructor <init>(Lcom/android/keyguard/AwesomeLockScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreen$2;->this$0:Lcom/android/keyguard/AwesomeLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/AwesomeLockScreen;->sSuppressNextLockSound:Z

    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen$2;->this$0:Lcom/android/keyguard/AwesomeLockScreen;

    invoke-static {v0}, Lcom/android/keyguard/AwesomeLockScreen;->-wrap0(Lcom/android/keyguard/AwesomeLockScreen;)V

    return-void
.end method
