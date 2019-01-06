.class Lcom/android/keyguard/AODView$1;
.super Ljava/lang/Object;
.source "AODView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/AODView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/AODView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/AODView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AODView$1;->this$0:Lcom/android/keyguard/AODView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, p1, v1

    sub-float p1, v0, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, v1

    return v0
.end method
