.class Lcom/miui/systemui/support/v4/app/FragmentTransition$FragmentContainerTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/systemui/support/v4/app/FragmentTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentContainerTransition"
.end annotation


# instance fields
.field public firstOut:Lcom/miui/systemui/support/v4/app/Fragment;

.field public firstOutIsPop:Z

.field public firstOutTransaction:Lcom/miui/systemui/support/v4/app/BackStackRecord;

.field public lastIn:Lcom/miui/systemui/support/v4/app/Fragment;

.field public lastInIsPop:Z

.field public lastInTransaction:Lcom/miui/systemui/support/v4/app/BackStackRecord;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
