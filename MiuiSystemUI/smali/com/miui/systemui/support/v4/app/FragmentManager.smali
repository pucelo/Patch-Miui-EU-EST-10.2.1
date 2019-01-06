.class public abstract Lcom/miui/systemui/support/v4/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;,
        Lcom/miui/systemui/support/v4/app/FragmentManager$OnBackStackChangedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract beginTransaction()Lcom/miui/systemui/support/v4/app/FragmentTransaction;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract executePendingTransactions()Z
.end method

.method public abstract findFragmentByTag(Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/Fragment;
.end method

.method public abstract isStateSaved()Z
.end method

.method public abstract popBackStackImmediate()Z
.end method

.method public abstract registerFragmentLifecycleCallbacks(Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
.end method

.method public abstract unregisterFragmentLifecycleCallbacks(Lcom/miui/systemui/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V
.end method
