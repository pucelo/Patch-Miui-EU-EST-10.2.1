.class Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;
.super Ljava/lang/Object;
.source "OrientationPolicy.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vendor/OrientationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vendor/OrientationPolicy;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vendor/OrientationPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;->this$0:Lcom/android/systemui/vendor/OrientationPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vendor/OrientationPolicy;Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;-><init>(Lcom/android/systemui/vendor/OrientationPolicy;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;->this$0:Lcom/android/systemui/vendor/OrientationPolicy;

    invoke-static {v0}, Lcom/android/systemui/vendor/OrientationPolicy;->-wrap0(Lcom/android/systemui/vendor/OrientationPolicy;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
