.class final synthetic Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$2;->-$f1:I

    iget-boolean v1, p0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$2;->-$f0:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$-com_android_server_wm_RootWindowContainer_18338(IZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public synthetic constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$2;->-$f0:Z

    iput p2, p0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$2;->-$f1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$2;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
