.class Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader$1;
.super Ljava/lang/Object;
.source "SecurityControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->doInBackground([Ljava/lang/Integer;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

.field final synthetic val$userId:[Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;[Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader$1;->this$1:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader$1;->val$userId:[Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader$1;->this$1:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader$1;->val$userId:[Ljava/lang/Integer;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
