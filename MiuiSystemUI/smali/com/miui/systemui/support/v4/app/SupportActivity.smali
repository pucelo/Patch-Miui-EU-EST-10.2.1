.class public Lcom/miui/systemui/support/v4/app/SupportActivity;
.super Landroid/app/Activity;
.source "SupportActivity.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/systemui/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/systemui/support/v4/app/SupportActivity$ExtraData;",
            ">;",
            "Lcom/miui/systemui/support/v4/app/SupportActivity$ExtraData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Lcom/miui/systemui/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/support/v4/app/SupportActivity;->mExtraDataMap:Lcom/miui/systemui/support/v4/util/SimpleArrayMap;

    return-void
.end method
