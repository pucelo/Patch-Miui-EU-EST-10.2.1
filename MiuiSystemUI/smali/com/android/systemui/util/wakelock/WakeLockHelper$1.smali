.class final Lcom/android/systemui/util/wakelock/WakeLockHelper$1;
.super Ljava/lang/Object;
.source "WakeLockHelper.java"

# interfaces
.implements Lcom/android/systemui/util/wakelock/WakeLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/wakelock/WakeLockHelper;->wrap(Landroid/os/PowerManager$WakeLock;)Lcom/android/systemui/util/wakelock/WakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$inner:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/wakelock/WakeLockHelper$1;->val$inner:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/wakelock/WakeLockHelper$1;->val$inner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/wakelock/WakeLockHelper$1;->val$inner:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
