.class final Lcom/android/server/policy/PhoneWindowManagerInjector$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "PhoneWindowManagerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManagerInjector;->addStartingWindow(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/PhoneWindow;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method
