.class Lcom/android/keyguard/MiuiKeyguardClock$8;
.super Ljava/lang/Object;
.source "MiuiKeyguardClock.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiKeyguardClock;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiKeyguardClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiKeyguardClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiKeyguardClock$8;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    sub-int v0, p5, p9

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardClock$8;->this$0:Lcom/android/keyguard/MiuiKeyguardClock;

    int-to-float v2, v0

    invoke-static {v1, v2}, Lcom/android/keyguard/MiuiKeyguardClock;->-set0(Lcom/android/keyguard/MiuiKeyguardClock;F)F

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardClock;->-get2()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
