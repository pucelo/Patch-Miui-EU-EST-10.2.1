.class public Landroid/app/ExtraActivityManager$PriorityComponent;
.super Ljava/lang/Object;
.source "ExtraActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ExtraActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriorityComponent"
.end annotation


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mPriority:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ExtraActivityManager$PriorityComponent;->mComponent:Landroid/content/ComponentName;

    iput p2, p0, Landroid/app/ExtraActivityManager$PriorityComponent;->mPriority:I

    return-void
.end method
