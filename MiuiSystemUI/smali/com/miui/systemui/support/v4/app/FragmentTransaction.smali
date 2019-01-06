.class public abstract Lcom/miui/systemui/support/v4/app/FragmentTransaction;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(ILcom/miui/systemui/support/v4/app/Fragment;Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract attach(Lcom/miui/systemui/support/v4/app/Fragment;)Lcom/miui/systemui/support/v4/app/FragmentTransaction;
.end method

.method public abstract commit()I
.end method

.method public abstract detach(Lcom/miui/systemui/support/v4/app/Fragment;)Lcom/miui/systemui/support/v4/app/FragmentTransaction;
.end method

.method public abstract replace(ILcom/miui/systemui/support/v4/app/Fragment;Ljava/lang/String;)Lcom/miui/systemui/support/v4/app/FragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
