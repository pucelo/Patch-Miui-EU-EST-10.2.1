.class Landroid/widget/TableRow$ChildrenTracker;
.super Ljava/lang/Object;
.source "TableRow.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildrenTracker"
.end annotation


# instance fields
.field private listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Landroid/widget/TableRow;


# direct methods
.method static synthetic -wrap0(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TableRow$ChildrenTracker;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/TableRow;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TableRow$ChildrenTracker;->this$0:Landroid/widget/TableRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TableRow;Landroid/widget/TableRow$ChildrenTracker;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/TableRow$ChildrenTracker;-><init>(Landroid/widget/TableRow;)V

    return-void
.end method

.method private setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->this$0:Landroid/widget/TableRow;

    invoke-static {v0, v1}, Landroid/widget/TableRow;->-set0(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->this$0:Landroid/widget/TableRow;

    invoke-static {v0, v1}, Landroid/widget/TableRow;->-set0(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/TableRow$ChildrenTracker;->listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_f
    return-void
.end method
