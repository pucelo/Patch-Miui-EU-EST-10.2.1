.class final Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnimationHelperDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->unregisterMiuiAppTransitionAnimationHelper(Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;)V

    return-void
.end method
