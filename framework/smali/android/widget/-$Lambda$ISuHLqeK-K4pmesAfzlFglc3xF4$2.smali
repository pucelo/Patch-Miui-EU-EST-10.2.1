.class final synthetic Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 5

    iget-object v0, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v1, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/transition/Transition$TransitionListener;

    iget-object v2, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$2;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/transition/Transition;

    iget-object v3, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$2;->-$f3:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow$PopupDecorView;->lambda$-android_widget_PopupWindow$PopupDecorView_93357(Landroid/transition/Transition$TransitionListener;Landroid/transition/Transition;Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$2;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$2;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$2;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$2;->$m$0()V

    return-void
.end method
