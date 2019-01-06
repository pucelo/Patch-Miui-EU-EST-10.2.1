.class Lcom/android/internal/app/PlatLogoActivity$1;
.super Landroid/view/ViewOutlineProvider;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 13

    const-wide v8, 0x3feeb851eb851eb8L    # 0.96

    const-wide/high16 v6, 0x3fc0000000000000L    # 0.125

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v2, v1

    mul-double/2addr v2, v6

    double-to-int v2, v2

    int-to-double v4, v0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-double v4, v1

    mul-double/2addr v4, v8

    double-to-int v4, v4

    int-to-double v6, v0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
