.class final synthetic Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceView$3;

    iget-boolean v1, p0, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c;->-$f0:Z

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView$3;->lambda$-android_view_SurfaceView$3_40849(Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c;->-$f0:Z

    iput-object p2, p0, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Landroid/view/-$Lambda$P6MTGFSudLpwrqb6oVD8FdorW1c;->$m$0()V

    return-void
.end method
