.class public Lcom/android/internal/view/FloatingActionModeCompat;
.super Ljava/lang/Object;
.source "FloatingActionModeCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newFloatingActionMode(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/view/FloatingActionMode;
    .locals 1

    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)V

    return-object v0
.end method
