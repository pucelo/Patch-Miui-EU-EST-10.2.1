.class Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "CursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorTreeAdapter$MyCursorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;


# direct methods
.method private constructor <init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;-><init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-set0(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object v0, v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .registers 3

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->-set0(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)Z

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;->this$1:Landroid/widget/CursorTreeAdapter$MyCursorHelper;

    iget-object v0, v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetInvalidated()V

    return-void
.end method